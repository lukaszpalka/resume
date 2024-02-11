package com.example.resume.service;

import com.example.resume.model.Education;
import com.example.resume.repository.EducationRepository;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class EducationService {

    private final EducationRepository educationRepository;

    public EducationService(EducationRepository educationRepository) {
        this.educationRepository = educationRepository;
    }

    public List<Education> getEducationList() {
        List<Education> educationList = educationRepository.findAll();
        return educationList.stream().sorted(Comparator.comparing(Education::getEndDate).reversed()).collect(Collectors.toList());
    }

    public void addEducation(Education education) {
        educationRepository.save(education);
    }

    public void editEducation(Education education) {
        educationRepository.save(education);
    }

    public void deleteEducationById(Long id) {
        educationRepository.deleteById(id);
    }
}
