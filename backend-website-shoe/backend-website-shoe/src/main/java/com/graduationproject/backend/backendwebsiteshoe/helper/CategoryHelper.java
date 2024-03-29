package com.graduationproject.backend.backendwebsiteshoe.helper;

import com.graduationproject.backend.backendwebsiteshoe.common.Action;
import com.graduationproject.backend.backendwebsiteshoe.common.Constant;
import com.graduationproject.backend.backendwebsiteshoe.common.DatetimeConvertFormat;
import com.graduationproject.backend.backendwebsiteshoe.dto.ChartJS;
import com.graduationproject.backend.backendwebsiteshoe.dto.ICategory;
import com.graduationproject.backend.backendwebsiteshoe.entity.CategoryEntity;
import com.graduationproject.backend.backendwebsiteshoe.forms.CategoryForm;
import com.graduationproject.backend.backendwebsiteshoe.model.CategoryModel;
import com.graduationproject.backend.backendwebsiteshoe.service.CategoryService;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

/**
 * Implement helper of category.
 *
 * @author Mai Ngoc Dinh
 */
@Component
public class CategoryHelper {

  @Autowired
  CategoryService categoryService;

  /**
   * Select all category.
   *
   * @return list category
   */
  public List<CategoryModel> getAllCategory() {
    return categoryService.getAllByTrademark().stream()
        .distinct()
        .map(this::convertCategory)
        .toList();
  }

  /**
   * Select all category use pageable and sorting.
   *
   * @return category response
   */
  public CategoryForm getAllCategoryPageable(int page, int size, String sortBy,
                                             String sortDir, String searchValue) {
    Sort sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name())
        ? Sort.by("category_id").ascending().and(Sort.by(sortBy).ascending())
        : Sort.by("category_id").descending().and(Sort.by(sortBy).descending());

    // Create pageable instance
    Pageable pageable = PageRequest.of(page, size, sort);
    Page<ICategory> categoryModelListPage = categoryService.getAllByTrademark(sortBy, searchValue, pageable);

    // Get content for page object
    List<CategoryModel> listOfCategoryModel = categoryModelListPage.getContent().stream()
        .map(this::convertCategory)
        .toList();

    return CategoryForm.builder()
        .categoryModelList(listOfCategoryModel)
        .pageNo(categoryModelListPage.getNumber())
        .pageSize(categoryModelListPage.getSize())
        .totalElements(categoryModelListPage.getTotalElements())
        .totalPages(categoryModelListPage.getTotalPages())
        .last(categoryModelListPage.isLast())
        .build();
  }

  /**
   * Select all category use pageable and sorting.
   *
   * @param page    page
   * @param size    size
   * @param sortBy  sortBy
   * @param sortDir sortDir
   * @return list category
   */
  public List<CategoryModel> getAllCategory(int page, int size, String sortBy, String sortDir) {
    // Create pageable instance
    List<ICategory> categoryModelListPage =

        categoryService.getAllByTrademark((page - 1) * size, size, sortDir, sortBy);

    return categoryModelListPage.stream()
        .distinct()
        .map(this::convertCategory)
        .toList();
  }

  /**
   * Select all category.
   *
   * @return list category
   */
  public CategoryModel getById(Long categoryId, Long trademarkId) {
    Optional<CategoryEntity> categoryEntity =
        categoryService.getCategoryByPrimaryKey(categoryId, trademarkId);
    return this.convertCategory(categoryEntity.get());
  }

  /**
   * Get all category.
   *
   * @return category
   */
  public List<ChartJS> getAllChart() {
    return categoryService.getAllChart();
  }

  /**
   * Save or update category.
   *
   * @param categoryModel categoryModel
   * @param type          type
   * @return entity
   */
  public CategoryEntity insertOrUpdate(CategoryModel categoryModel, String type) {
    CategoryEntity categoryEntity;
    if (Action.UPDATE.getValue().equals(type)) {
      Optional<CategoryEntity> category = categoryService
          .getCategoryByPrimaryKey(categoryModel.getCategoryId(), categoryModel.getTrademarkId());
      if (category.isPresent()) {
        categoryEntity = this.toBuildCategory(categoryModel, category.get(), Boolean.FALSE);
        return categoryService
            .update(categoryEntity, categoryModel.getCategoryId(), category.get().getTrademarkId());
      }
      return null;
    }
    categoryEntity = this.toBuildCategory(categoryModel, new CategoryEntity(), Boolean.TRUE);
    return categoryService.insert(categoryEntity);
  }

  /**
   * Delete category.
   *
   * @param categoryId  categoryId
   * @param trademarkId trademarkId
   * @return TRUE or FALSE
   */
  public Boolean deleteByPrimaryKey(Long categoryId, Long trademarkId) {
    Optional<CategoryEntity> category =
        categoryService.getCategoryByPrimaryKey(categoryId, trademarkId);
    if (category.isPresent()) {
      categoryService.delete(categoryId, trademarkId);
      return Boolean.TRUE;
    }
    return Boolean.FALSE;
  }

  /**
   * Build category.
   *
   * @param categoryModel categoryModel
   * @param isChecked     check
   * @return entity
   */
  private CategoryEntity toBuildCategory(CategoryModel categoryModel, CategoryEntity category,
                                         Boolean isChecked) {
    CategoryEntity categoryEntity = new CategoryEntity();
    categoryEntity.setCategoryName(categoryModel.getCategoryName());
    categoryEntity.setCategoryDescription(categoryModel.getCategoryDescription());
    categoryEntity.setSeo(categoryModel.getCategoryName().toLowerCase().replace(" ", "-"));
    categoryEntity.setTrademarkId(categoryModel.getTrademarkId());
    categoryEntity.setStatus(
        categoryModel.getCategoryStatus().equals(Constant.TRUE) ? Boolean.TRUE : Boolean.FALSE);
    if (Boolean.TRUE.equals(isChecked)) {
      categoryEntity.setCreatedDate(new Date());
      categoryEntity.setCreatedBy(1);
      categoryEntity.setUpdatedDate(new Date());
      categoryEntity.setUpdatedBy(1);
    } else {
      categoryEntity.setCreatedDate(category.getCreatedDate());
      categoryEntity.setCreatedBy(category.getCreatedBy());
      categoryEntity.setCategoryId(categoryModel.getCategoryId());
      categoryEntity.setUpdatedDate(new Date());
      categoryEntity.setUpdatedBy(1);
    }
    return categoryEntity;
  }

  /**
   * Convert category entity => model.
   *
   * @param category category
   * @return category model.
   */
  private CategoryModel convertCategory(ICategory category) {
    CategoryModel categoryModel = new CategoryModel();
    categoryModel.setCategoryId(category.getCategoryId());
    categoryModel.setCategoryName(category.getCategoryName());
    categoryModel.setCategorySeo(category.getCategorySeo());
    categoryModel.setCategoryDescription(category.getCategoryDescription());
    categoryModel.setCategoryStatus(category.getCategoryStatus());
    categoryModel.setCreatedDate(DatetimeConvertFormat
        .convertDateToStringWithFormat(Constant.PATTERN_DATETIME, category.getCreatedDate()));
    categoryModel.setUpdatedDate(DatetimeConvertFormat
        .convertDateToStringWithFormat(Constant.PATTERN_DATETIME, category.getUpdatedDate()));
    categoryModel.setTrademarkId(category.getTrademarkId());
    categoryModel.setTrademarkName(category.getTrademarkName());
    return categoryModel;
  }

  /**
   * Convert category entity => model.
   *
   * @param category category
   * @return category model.
   */
  private CategoryModel convertCategory(CategoryEntity category) {
    CategoryModel categoryModel = new CategoryModel();
    categoryModel.setCategoryId(category.getCategoryId());
    categoryModel.setCategoryName(category.getCategoryName());
    categoryModel.setCategorySeo(category.getSeo());
    categoryModel.setCategoryDescription(category.getCategoryDescription());
    categoryModel.setCategoryStatus(category.getStatus().toString());
    categoryModel.setCreatedDate(DatetimeConvertFormat
        .convertDateToStringWithFormat(Constant.PATTERN_DATETIME, category.getCreatedDate()));
    categoryModel.setUpdatedDate(DatetimeConvertFormat
        .convertDateToStringWithFormat(Constant.PATTERN_DATETIME, category.getUpdatedDate()));
    categoryModel.setTrademarkId(category.getTrademarkId());
    return categoryModel;
  }
}
