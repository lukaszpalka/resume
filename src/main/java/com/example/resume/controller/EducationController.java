package com.example.resume.controller;

import com.example.resume.model.Education;
import com.example.resume.service.EducationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class EducationController {

    private final EducationService educationService;

    public EducationController(EducationService educationService) {
        this.educationService = educationService;
    }

    @GetMapping("/education")
    public String getEducationList(Model model) {
        List<Education> educationList = educationService.getEducationList();
        model.addAttribute("education", educationList);
        return "viewer/education";
    }
}
