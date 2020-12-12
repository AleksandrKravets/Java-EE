package jpa.crud;
 
import java.util.List;
 
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import jpa.operations.database.DatabaseOperations;
 
@ManagedBean
public class DoctorBean {
 
    private int id;
    private String name;    
    private String editDoctorId;
 
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public String getEditDoctorId() {
        return editDoctorId;
    }
 
    public void setEditDoctorId(String editDoctorId) {
        this.editDoctorId = editDoctorId;
    }

    public List doctorListFromDb() {
        return DatabaseOperations.getAllDoctorDetails();        
    }

    public String addNewDoctor(DoctorBean doctorBean) {
        return DatabaseOperations.createNewDoctor(doctorBean.getName());        
    }

    public String deleteDoctorById(int doctorId) {      
        return DatabaseOperations.deleteNewDoctor(doctorId);        
    }
 
    public String editDoctorDetailsById() {
        editDoctorId = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("selectedDoctorId");     
        return "doctorEdit.xhtml";
    }

    public String updateSchoolDetails(DoctorBean doctorBean) {
        return DatabaseOperations.updateDoctorDetails(Integer.parseInt(doctorBean.getEditDoctorId()), doctorBean.getName());        
    }
}