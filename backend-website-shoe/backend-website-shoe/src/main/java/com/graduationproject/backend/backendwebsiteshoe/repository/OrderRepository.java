package com.graduationproject.backend.backendwebsiteshoe.repository;

import com.graduationproject.backend.backendwebsiteshoe.dto.EachMonthOrderDto;
import com.graduationproject.backend.backendwebsiteshoe.dto.ICart;
import com.graduationproject.backend.backendwebsiteshoe.dto.IOrder;
import com.graduationproject.backend.backendwebsiteshoe.entity.OrderEntity;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * Implement repository of invoice.
 *
 * @author Mai Ngoc Dinh
 */
@Repository
public interface OrderRepository extends JpaRepository<OrderEntity, Long> {

  /**
   * Get order by order id.
   *
   * @param orderId orderId
   * @return invoice.
   */
  @Query(value =
      "SELECT cart.productId AS productId, usr.userId AS userId, invoice.orderId AS orderId, "
          + " cart.productName AS productName, userInfo.address AS customerAddress, "
          + " COALESCE(product.productPriceSale, product.productPrice) AS productPrice, "
          + " cart.productQuantity AS productQuantity, cart.cartId AS cartId, userInfo.firstName AS "
          + " customerFirstName, userInfo.lastName AS customerLastName, userInfo.email AS "
          + " customerEmail, userInfo.phone AS customerPhone, invoice.createdDate AS createdDate,"
          + " invoice.orderCode AS orderCode, userInfo.note AS customerNote, cart.createdDate AS createdDateOrder,"
          + " cart.productSizeName AS productSizeName, invoice.orderStatus AS status"
          + " FROM OrderEntity invoice INNER JOIN CartEntity cart ON cart.cartId = invoice.cartId"
          + " INNER JOIN ProductEntity product ON cart.productId = product.productId"
          + " LEFT JOIN UserInformationEntity userInfo ON userInfo.userInformationId = "
          + " invoice.userInformationId LEFT JOIN UserEntity usr ON usr.userId = invoice.userId"
          + " WHERE invoice.orderId = ?1")
  List<IOrder> findAllByOrderId(Long orderId);

  /**
   * Get order by order id.
   *
   * @param userId userId
   * @return invoice.
   */
  @Query(value =
      "SELECT cart.productId AS productId, usr.userId AS userId, invoice.orderId AS orderId, "
          + " cart.productName AS productName, userInfo.address AS customerAddress, "
          + " COALESCE(product.productPriceSale, product.productPrice) AS productPrice, "
          + " cart.productQuantity AS productQuantity, cart.cartId AS cartId, userInfo.firstName AS "
          + " customerFirstName, userInfo.lastName AS customerLastName, userInfo.email AS "
          + " customerEmail, userInfo.phone AS customerPhone, invoice.createdDate AS createdDate,"
          + " invoice.orderCode AS orderCode, userInfo.note AS customerNote, cart.createdDate AS createdDateOrder,"
          + " cart.productSizeName AS productSizeName, invoice.orderStatus AS status"
          + " FROM OrderEntity invoice INNER JOIN CartEntity cart ON cart.cartId = invoice.cartId"
          + " INNER JOIN ProductEntity product ON cart.productId = product.productId"
          + " LEFT JOIN UserInformationEntity userInfo ON userInfo.userInformationId = "
          + " invoice.userInformationId LEFT JOIN UserEntity usr ON usr.userId = invoice.userId"
          + " WHERE invoice.userId = ?1")
  List<IOrder> findAllByUserId(Long userId);

  /**
   * Get all invoice.
   *
   * @param pageable    pageable
   * @param searchValue searchValue
   * @return list invoice.
   */
  @Query(value =
      "SELECT DISTINCT(invoice.order_id) AS orderId, product.product_id AS productId, "
          + " product.product_name AS productName, userInfo.address AS customerAddress,"
          + " COALESCE(product.product_price_sale, product.product_price) AS productPrice, "
          + " cart.product_quantity AS productQuantity, cart.cart_id AS cartId,"
          + "  invoice.order_code AS orderCode, COALESCE(usr.user_id, userInfo.user_id) AS userId,"
          + " userInfo.first_name AS customerFirstName, userInfo.last_name AS customerLastName, "
          + " userInfo.email AS customerEmail, userInfo.phone AS customerPhone, "
          + " invoice.created_date AS createdDate, userInfo.note AS customerNote,"
          + " invoice.order_status AS status"
          + " FROM tbl_order invoice INNER JOIN tbl_cart cart ON cart.cart_id = invoice.cart_id"
          + " INNER JOIN tbl_product product ON cart.product_id = product.product_id"
          + " LEFT JOIN tbl_product_color color ON color.product_id = product.product_id"
          + " LEFT JOIN tbl_product_size si ON si.product_id = product.product_id"
          + " LEFT JOIN tbl_user_information userInfo ON userInfo.user_information_id = "
          + " invoice.user_information_id LEFT JOIN tbl_user usr ON usr.user_id = invoice.user_id"
          + " WHERE userInfo.first_name LIKE %?1% OR userInfo.last_name LIKE %?1% "
          + " OR userInfo.email LIKE %?1%", nativeQuery = true,
      countQuery = " SELECT COUNT(DISTINCT(invoice.order_id)) FROM tbl_order invoice"
          + " INNER JOIN tbl_cart cart ON cart.cart_id = invoice.cart_id"
          + " INNER JOIN tbl_product product ON cart.product_id = product.product_id"
          + " LEFT JOIN tbl_product_color color ON color.product_id = product.product_id"
          + " LEFT JOIN tbl_product_size si ON si.product_id = product.product_id"
          + " LEFT JOIN tbl_user_information userInfo ON userInfo.user_information_id = "
          + " invoice.user_information_id LEFT JOIN tbl_user usr ON usr.user_id = invoice.user_id"
          + " WHERE userInfo.first_name LIKE %?1% OR userInfo.last_name LIKE %?1% "
          + " OR userInfo.email LIKE %?1%")
  Page<IOrder> findAllPage(Pageable pageable, String searchValue);

  @Query("SELECT MAX(ord.orderId) FROM OrderEntity ord")
  Long getNewOrderId();

  @Query(value = "SELECT invoice.order_id AS orderId, invoice.cart_id AS cartId,"
      + " SUM(cart.product_quantity) AS totalQuantity, invoice.order_status AS orderStatus, "
      + " SUM(invoice.order_total_price) AS totalOrderPrice FROM tbl_order invoice"
      + " INNER JOIN tbl_cart cart ON cart.cart_id = invoice.cart_id"
      + " WHERE invoice.order_status = '1'"
      + " GROUP BY invoice.order_id, invoice.cart_id, invoice.order_status", nativeQuery = true)
  List<ICart> findAllTotal();

  @Query(value = "SELECT DISTINCT(invoice.order_id) AS orderId, invoice.cart_id AS cartId,"
      + " SUM(cart.product_quantity) AS totalQuantity, invoice.order_status AS orderStatus, "
      + " SUM(invoice.order_total_price) AS totalOrderPrice FROM tbl_order invoice"
      + " INNER JOIN tbl_cart cart ON cart.cart_id = invoice.cart_id"
      + " GROUP BY invoice.order_id, invoice.cart_id, invoice.order_status", nativeQuery = true)
  List<ICart> findAllTotalDistinct();

  @Query(value = "select MONTH(ord.created_date) AS month, SUM(ord.order_total_price) AS totalPrice"
      + " from tbl_order ord"
      + " inner join tbl_cart tc on ord.cart_id = tc.cart_id"
      + " WHERE ord.order_status = '1'"
      + " group by MONTH(ord.created_date)"
      + " order by MONTH(ord.created_date)", nativeQuery = true)
  List<EachMonthOrderDto> findAllByMonth();

  @Query(value = "SELECT invoice.order_id AS orderId, invoice.cart_id AS cartId,"
      + " SUM(cart.product_quantity) AS totalQuantity, invoice.order_status AS orderStatus, "
      + " usr.first_name AS firstName, usr.last_name AS lastName, invoice.created_date AS createdDate,"
      + " SUM(invoice.order_total_price) AS totalOrderPrice FROM tbl_order invoice"
      + " INNER JOIN tbl_cart cart ON cart.cart_id = invoice.cart_id "
      + " LEFT JOIN tbl_user_information usr ON usr.user_information_id = invoice.user_information_id"
      + " GROUP BY invoice.order_id, invoice.cart_id, invoice.order_status"
      + " ORDER BY invoice.created_date DESC LIMIT 5", nativeQuery = true)
  List<ICart> findBill();
}
