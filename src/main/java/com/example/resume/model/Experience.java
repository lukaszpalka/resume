package com.example.resume.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity(name = "EXPERIENCE")
public class Experience {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String position;

    private String company;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startDate;

    private boolean isStillWorking;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;

    private String description;

    public Experience() {
    }

    public Experience(Long id, String position, String company, Date startDate, boolean isStillWorking, Date endDate, String description) {
        this.id = id;
        this.position = position;
        this.company = company;
        this.startDate = startDate;
        this.isStillWorking = isStillWorking;
        this.endDate = endDate;
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public boolean isIsStillWorking() {
        return isStillWorking;
    }

    public void setIsStillWorking(boolean isStillWorking) {
        this.isStillWorking = isStillWorking;
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
