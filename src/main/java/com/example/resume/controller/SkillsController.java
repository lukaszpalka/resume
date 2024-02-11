package com.example.resume.controller;

import com.example.resume.model.LanguageSkills;
import com.example.resume.model.SoftSkills;
import com.example.resume.model.TechSkills;
import com.example.resume.service.LanguageSkillsService;
import com.example.resume.service.SoftSkillsService;
import com.example.resume.service.TechSkillsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class SkillsController {

    private final TechSkillsService techSkillsService;
    private final SoftSkillsService softSkillsService;
    private final LanguageSkillsService languageSkillsService;

    public SkillsController(TechSkillsService techSkillsService, SoftSkillsService softSkillsService, LanguageSkillsService languageSkillsService) {
        this.techSkillsService = techSkillsService;
        this.softSkillsService = softSkillsService;
        this.languageSkillsService = languageSkillsService;
    }

    @GetMapping("/skills")
    public String getSkillsList(Model model) {
        List<TechSkills> techSkills = techSkillsService.getTechSkillsList();
        model.addAttribute("techskills", techSkills);
        List<SoftSkills> softSkills = softSkillsService.getSoftSkillsList();
        model.addAttribute("softskills", softSkills);
        List<LanguageSkills> languageSkills = languageSkillsService.getLanguageSkillsList();
        model.addAttribute("languageskills", languageSkills);
        return "viewer/skills";
    }
}
