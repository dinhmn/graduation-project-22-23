package com.graduationproject.backend.backendwebsiteshoe.controller;

import com.graduationproject.backend.backendwebsiteshoe.helper.SendMailHelper;
import com.graduationproject.backend.backendwebsiteshoe.model.MailRequestModel;
import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Implement controller of product.
 *
 * @author Mai Ngoc Dinh.
 */
@CrossOrigin("*")
@RestController
@RequestMapping(value = "api/send-mail")
public class SendMailController {

  @Autowired
  SendMailHelper sendMailHelper;

  /**
   * Send mail.
   *
   * @param requestModel requestModel
   * @return response entity
   */
  @PostMapping(value = "/post/{orderId}")
  public ResponseEntity<?> registerProduct(@RequestBody MailRequestModel requestModel,
                                           @PathVariable Long orderId) throws IOException {
    Boolean statusSend = sendMailHelper.sendMail(requestModel, orderId);

    if (Boolean.FALSE.equals(statusSend)) {
      return new ResponseEntity<>(false, HttpStatus.BAD_REQUEST);
    }

    return new ResponseEntity<>(statusSend, HttpStatus.OK);
  }
}
