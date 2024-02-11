package com.example.resume.service;

import com.example.resume.model.TechSkills;
import com.example.resume.repository.TechSkillsRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TechSkillsService {

    private final TechSkillsRepository techSkillsRepository;

    public TechSkillsService(TechSkillsRepository techSkillsRepository) {
        this.techSkillsRepository = techSkillsRepository;
    }

    public List<TechSkills> getTechSkillsList() {
        return techSkillsRepository.findAll();
    }

    public void addTechSkill(TechSkills techSkills) {
        techSkillsRepository.save(techSkills);
    }

    public void editTechSkill(TechSkills techSkills) {
        techSkillsRepository.save(techSkills);
    }

    public void deleteTechSkill(Long id) {
        techSkillsRepository.deleteById(id);
    }

}
