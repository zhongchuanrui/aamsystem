package com.aim.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aim.pojo.Alumniassociation;
import com.aim.service.AlumnusAssociationService;

@Controller
@RequestMapping("/alumnusassociation")
public class AlumnusAssociationAction {

	@Resource(name = "Alumnusassociationserviceimpl")
	private AlumnusAssociationService alumnusassociationservice;

	@RequestMapping("/insertassociation")
	@ResponseBody
	public int insertAssociation(Alumniassociation alumniassociation) {

		return alumnusassociationservice.insertAssociation(alumniassociation);
	}

	@RequestMapping("/getallAssociation")
	@ResponseBody
	public List<Alumniassociation> getAllAssociation() {
		return alumnusassociationservice.getAllAssociation();
	}

	@RequestMapping("/getsearchassociation")
	@ResponseBody
	public List<Alumniassociation> getSearchAssociation(String association_province) {
		return alumnusassociationservice.getSearchAssociation(association_province);
	}
}
