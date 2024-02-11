package com.example.resume.service;

import com.example.resume.model.SoftSkills;
import com.example.resume.repository.SoftSkillsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SoftSkillsService {

    private final SoftSkillsRepository softSkillsRepository;

    public SoftSkillsService(SoftSkillsRepository softSkillsRepository) {
        this.softSkillsRepository = softSkillsRepository;
    }

    public List<SoftSkills> getSoftSkillsList() {
        return softSkillsRepository.findAll();
    }

    public void addSoftSkill(SoftSkills softSkills) {
        softSkillsRepository.save(softSkills);
    }

    public void editSoftSkill(SoftSkills editedSoftSkill) {
        softSkillsRepository.save(editedSoftSkill);
    }

    public void deleteSoftSkill(Long id) {
        softSkillsRepository.deleteById(id);
    }


}
