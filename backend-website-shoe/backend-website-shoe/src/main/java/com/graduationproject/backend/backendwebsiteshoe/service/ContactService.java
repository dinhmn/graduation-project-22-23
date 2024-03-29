package com.graduationproject.backend.backendwebsiteshoe.service;

import com.graduationproject.backend.backendwebsiteshoe.dto.IContact;
import com.graduationproject.backend.backendwebsiteshoe.entity.ContactEntity;
import com.graduationproject.backend.backendwebsiteshoe.repository.ContactRepository;
import java.util.Optional;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

/**
 * Implement service of contact.
 *
 * @author Mai Ngoc Dinh.
 */
@Service
public class ContactService {

  @Autowired
  ContactRepository contactRepository;

  /**
   * Get all contact.
   *
   * @return list of entity contact.
   */
  public Page<ContactEntity> getAll(Pageable pageable) {
    return contactRepository.findAllPageable(pageable);
  }

  /**
   * Get all contact.
   *
   * @param searchValue searchValue
   * @param pageable    pageable
   * @return list of entity contact.
   */
  public Page<IContact> getAllPageable(String searchValue, Pageable pageable) {
    return contactRepository.getAllContact(searchValue, pageable);
  }

  /**
   * Insert new entity of contact.
   *
   * @param contactEntity contactEntity
   * @return entity contact.
   */
  public ContactEntity insert(ContactEntity contactEntity) {
    return contactRepository.save(contactEntity);
  }

  public ContactEntity update(Long contactId) {
    Optional<ContactEntity> contactEntity = contactRepository.findById(contactId);
    ContactEntity contactEntity1 = new ContactEntity();
    BeanUtils.copyProperties(contactEntity.get(), contactEntity1);
    contactEntity1.setStatus(Boolean.TRUE);
    return contactRepository.save(contactEntity1);
  }
}
