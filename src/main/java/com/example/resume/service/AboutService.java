package com.example.resume.service;

import com.example.resume.model.About;
import com.example.resume.repository.AboutRepository;
import org.springframework.stereotype.Service;

@Service
public class AboutService {

    private final AboutRepository aboutRepository;

    public AboutService(AboutRepository aboutRepository) {
        this.aboutRepository = aboutRepository;
    }

    public About getEditAbout(Long id) {
        return aboutRepository.getReferenceById(id);
    }

    public void editAbout(About about) {
        aboutRepository.save(about);
    }
}
