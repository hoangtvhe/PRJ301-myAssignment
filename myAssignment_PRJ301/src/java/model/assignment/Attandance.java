/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.assignment;

import java.util.Date;

/**
 *
 * @author Ngo Tung Son
 */
public class Attandance {
    private Student student;
    private model.assignment.Session session;
    private boolean present;
    private String description;
    private Date record_time;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public model.assignment. Session getSession() {
        return session;
    }

    public void setSession(model.assignment. Session session) {
        this.session = session;
    }

    public boolean isPresent() {
        return present;
    }

    public void setPresent(boolean present) {
        this.present = present;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getRecord_time() {
        return record_time;
    }

    public void setRecord_time(Date record_time) {
        this.record_time = record_time;
    }
    
}
