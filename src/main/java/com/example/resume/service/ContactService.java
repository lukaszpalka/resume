package com.example.resume.service;

import com.example.resume.repository.ContactRepository;
import org.springframework.stereotype.Service;

@Service
public class ContactService {

private final ContactRepository contactRepository;

    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }
}
