package com.example.resume.controller;

import com.example.resume.model.*;
import com.example.resume.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class ManageController {

    private final AboutService aboutService;
    private final EducationService educationService;
    private final TechSkillsService techSkillsService;
    private final SoftSkillsService softSkillsService;
    private final LanguageSkillsService languageSkillsService;
    private final ExperienceService experienceService;

    public ManageController(AboutService aboutService, EducationService educationService, TechSkillsService techSkillsService, SoftSkillsService softSkillsService, LanguageSkillsService languageSkillsService, ExperienceService experienceService) {
        this.aboutService = aboutService;
        this.educationService = educationService;
        this.techSkillsService = techSkillsService;
        this.softSkillsService = softSkillsService;
        this.languageSkillsService = languageSkillsService;
        this.experienceService = experienceService;
    }


    @GetMapping("/manage")
    public String getManage(Model model) {
        About about = aboutService.getEditAbout(1L);
        model.addAttribute("about", about);

        List<TechSkills> techSkills = techSkillsService.getTechSkillsList();
        model.addAttribute("techskills", techSkills);
        List<SoftSkills> softSkills = softSkillsService.getSoftSkillsList();
        model.addAttribute("softskills", softSkills);
        List<LanguageSkills> languageSkills = languageSkillsService.getLanguageSkillsList();
        model.addAttribute("languageskills", languageSkills);

        List<Experience> experienceList = experienceService.getExperienceList();
        model.addAttribute("experience", experienceList);

        List<Education> educationList = educationService.getEducationList();
        model.addAttribute("education", educationList);

        return "manager/manage";
    }

    @PostMapping("/editAbout/{id}")
    public RedirectView postEditAbout(@PathVariable("id") Long id, About about) {
        aboutService.editAbout(about);
        return new RedirectView("/manage#about");
    }


    @PostMapping("/addTechSkill")
    public RedirectView postAddTechSkill(TechSkills techSkills) {
        techSkillsService.addTechSkill(techSkills);
        return new RedirectView("/manage#techskills");
    }

    @PostMapping("/editTechSkill/{id}")
    public RedirectView postEditTechSkill(@PathVariable("id") Long id, TechSkills editedSkill) {
        techSkillsService.editTechSkill(editedSkill);
        return new RedirectView("/manage#techskills");
    }

    @PostMapping("/deleteTechSkill{id}")
    public RedirectView deleteTechSkill(@PathVariable("id") Long id) {
        techSkillsService.deleteTechSkill(id);
        return new RedirectView("/manage#techskills");
    }


    @PostMapping("/addSoftSkill")
    public RedirectView postAddSoftSkill(SoftSkills softSkills) {
        softSkillsService.addSoftSkill(softSkills);
        return new RedirectView("/manage#softskills");
    }

    @PostMapping("/editSoftSkill/{id}")
    public RedirectView postEditSoftSkill(@PathVariable("id") Long id, SoftSkills editedSkills) {
        softSkillsService.editSoftSkill(editedSkills);
        return new RedirectView("/manage#softskills");
    }

    @PostMapping("/deleteSoftSkill{id}")
    public RedirectView deleteSoftSkill(@PathVariable("id") Long id) {
        softSkillsService.deleteSoftSkill(id);
        return new RedirectView("/manage#softskills");
    }


    @PostMapping("/addLanguageSkill")
    public RedirectView postAddLanguageSkill(LanguageSkills languageSkills) {
        languageSkillsService.addLanguageSkill(languageSkills);
        return new RedirectView("/manage#languages");
    }

    @PostMapping("/editLanguageSkill/{id}")
    public RedirectView postEditLanguageSkill(@PathVariable("id") Long id, LanguageSkills editedSkill) {
        languageSkillsService.editLanguageSkill(editedSkill);
        return new RedirectView("/manage#languages");
    }

    @PostMapping("/deleteLanguageSkill{id}")
    public RedirectView deleteLanguageSkill(@PathVariable("id") Long id) {
        languageSkillsService.deleteLanguageSkill(id);
        return new RedirectView("/manage#languages");
    }


    @PostMapping("/addExperience")
    public RedirectView postAddExperience(Experience experience) {
        experienceService.addExperience(experience);
        return new RedirectView("/manage#experience");
    }

    @PostMapping("/editExperience/{id}")
    public RedirectView postEditExperience(@PathVariable("id") Long id, Experience editedExperience) {
        experienceService.editExperience(editedExperience);
        return new RedirectView("/manage#experience");
    }

    @PostMapping("/deleteExperience{id}")
    public RedirectView deleteExperience(@PathVariable("id") Long id) {
        experienceService.deleteExperienceById(id);
        return new RedirectView("/manage#experience");
    }


    @PostMapping("/addEducation")
    public RedirectView postAddEducation(Education education) {
        educationService.addEducation(education);
        return new RedirectView("/manage#education");
    }

    @PostMapping("/editEducation/{id}")
    public RedirectView postEditEducation(@PathVariable("id") Long id, Education editedEducation) {
        educationService.editEducation(editedEducation);
        return new RedirectView("/manage#education");
    }

    @PostMapping("/deleteEducation{id}")
    public RedirectView deleteEducation(@PathVariable("id") Long id) {
        educationService.deleteEducationById(id);
        return new RedirectView("/manage#education");
    }
}
