package com.example.resume.repository;

import com.example.resume.model.TechSkills;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TechSkillsRepository extends JpaRepository<TechSkills, Long> {
}
