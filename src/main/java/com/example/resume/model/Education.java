package com.example.resume.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity(name = "EDUCATION")
public class Education {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String degree;
    private String subject;
    private String university;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startDate;

    private boolean isStillStudying;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;

    private String description;

    public Education() {
    }

    public Education(long id, String degree, String subject, String university, Date startDate, boolean isStillStudying, Date endDate, String description) {
        this.id = id;
        this.degree = degree;
        this.subject = subject;
        this.university = university;
        this.startDate = startDate;
        this.isStillStudying = isStillStudying;
        this.endDate = endDate;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public boolean isIsStillStudying() {
        return isStillStudying;
    }

    public void setIsStillStudying(boolean isStillStudying) {
        this.isStillStudying = isStillStudying;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
