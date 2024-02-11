package com.example.resume.service;

import com.example.resume.model.LanguageSkills;
import com.example.resume.repository.LanguageSkillsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LanguageSkillsService {

    private final LanguageSkillsRepository languageSkillsRepository;


    public LanguageSkillsService(LanguageSkillsRepository languageSkillsRepository) {
        this.languageSkillsRepository = languageSkillsRepository;
    }

    public List<LanguageSkills> getLanguageSkillsList() {
        return languageSkillsRepository.findAll();
    }

    public void addLanguageSkill(LanguageSkills languageSkill) {
        languageSkillsRepository.save(languageSkill);
    }

    public void deleteLanguageSkill(Long id) {
        languageSkillsRepository.deleteById(id);
    }
    public void editLanguageSkill(LanguageSkills editedSkill) {
        languageSkillsRepository.save(editedSkill);
    }

}
