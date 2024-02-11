package com.example.resume.controller;

import com.example.resume.model.About;
import com.example.resume.service.AboutService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutController {

    private final AboutService aboutService;

    public AboutController(AboutService aboutService) {
        this.aboutService = aboutService;
    }

    @GetMapping("/about")
    public String getAbout(Model model) {
        About about = aboutService.getEditAbout(1l);
        about.setDescription(about.getDescription().replaceAll("\n", "<br/>").replaceAll("\r", ""));
        model.addAttribute("about", about);
        return "viewer/about";
    }




}
