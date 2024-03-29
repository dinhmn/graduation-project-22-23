package com.graduationproject.backend.backendwebsiteshoe.controller;

import com.graduationproject.backend.backendwebsiteshoe.common.Constant;
import com.graduationproject.backend.backendwebsiteshoe.dto.ICart;
import com.graduationproject.backend.backendwebsiteshoe.entity.OrderEntity;
import com.graduationproject.backend.backendwebsiteshoe.forms.CancelOrder;
import com.graduationproject.backend.backendwebsiteshoe.forms.OrderForm;
import com.graduationproject.backend.backendwebsiteshoe.helper.OrderHelper;
import com.graduationproject.backend.backendwebsiteshoe.model.OrderJasperModel;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Implement rest controller of chat message.
 *
 * @author Mai Ngoc Dinh.
 */
@CrossOrigin("*")
@RestController
@RequestMapping(value = "api/order")
public class OrderController {

  @Autowired
  OrderHelper orderHelper;

  /**
   * Insert order into database.
   *
   * @param orderJasperModel orderJasperModel
   * @return message response.
   */
  @PostMapping("/")
  public ResponseEntity<OrderEntity> submitOrder(@RequestBody OrderJasperModel orderJasperModel) {

    // insert new value
    OrderEntity orderEntity = orderHelper.insert(orderJasperModel);

    return new ResponseEntity<>(orderEntity, HttpStatus.OK);
  }

  /**
   * Get all product.
   *
   * @param pageNo        pageNo
   * @param pageSize      pageSize
   * @param sortBy        sortBy
   * @param sortDirection sortDirection
   * @return list object.
   */
  @GetMapping("/get-all")
  public OrderForm getAllOrder(
      @RequestParam(value = "page_no", defaultValue = Constant.DEFAULT_PAGE_NUMBER) int pageNo,
      @RequestParam(value = "page_size", defaultValue = Constant.DEFAULT_PAGE_SIZE) int pageSize,
      @RequestParam(value = "sort_direction", defaultValue = Constant.DEFAULT_SORT_DIRECTION)
          String sortDirection,
      @RequestParam(value = "sort_by", defaultValue = "order_id") String sortBy,
      @RequestParam(value = "search_value", defaultValue = Constant.EMPTY_SPACE)
          String searchValue) {
    return orderHelper.getAllByOrderId(pageNo, pageSize, sortBy, sortDirection, searchValue);
  }

  /**
   * Get order by orderId.
   *
   * @param orderId orderId
   * @return order response.
   */
  @GetMapping("/get/{orderId}")
  public OrderJasperModel getOrderBy(@PathVariable Long orderId) {
    return orderHelper.getAllByOrderId(orderId);
  }

  /**
   * Get order by orderId.
   *
   * @param userId userId
   * @return order response.
   */
  @GetMapping("/get-order/{userId}")
  public List<OrderJasperModel> getOrderByUserId(@PathVariable Long userId) {
    return orderHelper.getAllByUserId(userId);
  }

  /**
   * Get order by orderId.
   *
   * @return order response.
   */
  @GetMapping("/get-order-all")
  public List<ICart> getCart() {
    return orderHelper.getAll();
  }

  /**
   * Get order each month.
   *
   * @return order response.
   */
  @GetMapping("/get-order-each")
  public Collection<BigDecimal> getEachMonthOrder() {
    return orderHelper.getEachMonthOrder();
  }

  /**
   * Get order by orderId.
   *
   * @return order response.
   */
  @GetMapping("/get-order-distinct")
  public List<ICart> getCartDistinct() {
    return orderHelper.getAllDistinct();
  }

  /**
   * Get order by orderId.
   *
   * @param orderId orderId
   * @return order response.
   */
  @PutMapping("/update/{orderId}/{orderStatus}")
  public ResponseEntity<?> update(@PathVariable Long orderId, @PathVariable String orderStatus) {
    OrderEntity orderEntity = orderHelper.update(orderId, orderStatus);
    return new ResponseEntity<>(orderEntity, HttpStatus.OK);
  }

  @GetMapping("/get-order-dashboard")
  public List<ICart> getAllOrderDashboard() {
    return orderHelper.getAllBill();
  }

  @PutMapping("/delete/{orderId}")
  public ResponseEntity<?> deleteOrder(@PathVariable Long orderId, @RequestBody CancelOrder cancel) {
    Boolean flag = orderHelper.deleteOrder(orderId, cancel);
    return new ResponseEntity<>(flag, flag ? HttpStatus.OK : HttpStatus.BAD_REQUEST);
  }

}
