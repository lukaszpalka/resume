package com.example.resume.service;

import com.example.resume.model.Experience;
import com.example.resume.repository.ExperienceRepository;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ExperienceService {

    private final ExperienceRepository experienceRepository;

    public ExperienceService(ExperienceRepository experienceRepository) {
        this.experienceRepository = experienceRepository;
    }

    public List<Experience> getExperienceList() {
        List<Experience> experienceList = experienceRepository.findAll();
        return experienceList.stream().sorted(Comparator.comparing(Experience::getEndDate).reversed()).collect(Collectors.toList());
    }

    public void addExperience(Experience experience) {
        experienceRepository.save(experience);
    }

    public Experience getExperience(Long id) {
        return experienceRepository.findById(id).orElse(null);
    }

    public void editExperience(Experience experience) {
        experienceRepository.save(experience);
    }

    public void deleteExperienceById(Long id) {
        experienceRepository.deleteById(id);
    }
}
