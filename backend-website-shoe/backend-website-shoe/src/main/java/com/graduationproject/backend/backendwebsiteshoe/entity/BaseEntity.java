package com.graduationproject.backend.backendwebsiteshoe.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import lombok.Data;
import lombok.RequiredArgsConstructor;

/**
 * Base entity.
 *
 * @author Mai Ngoc Dinh.
 */
@MappedSuperclass
@Data
@RequiredArgsConstructor
public abstract class BaseEntity {

  @Column(name = "status")
  private Boolean status = Boolean.TRUE;

  @Column(name = "created_by", nullable = false)
  private Integer createdBy;

  @Column(name = "updated_by", nullable = false)
  private Integer updatedBy;

  @Column(name = "created_date", nullable = false)
  private Date createdDate;

  @Column(name = "updated_date", nullable = false)
  private Date updatedDate;
}
