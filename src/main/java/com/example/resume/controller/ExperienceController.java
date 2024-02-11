package com.example.resume.controller;

import com.example.resume.model.Experience;
import com.example.resume.service.ExperienceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ExperienceController {

    private final ExperienceService experienceService;

    public ExperienceController(ExperienceService experienceService) {
        this.experienceService = experienceService;
    }

    @GetMapping("/experience")
    public String getExperienceList(Model model) {
        List<Experience> experienceList = experienceService.getExperienceList();
        model.addAttribute("experience", experienceList);
        return "viewer/experience";
    }

}
