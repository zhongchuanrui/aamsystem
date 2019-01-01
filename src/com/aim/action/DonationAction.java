package com.aim.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aim.pojo.Donation;
import com.aim.service.DonationService;

@Controller
@RequestMapping("/donation")
public class DonationAction {
	
	@Resource(name="Donationserviceimpl")
	DonationService donationservice;
	
	@RequestMapping("/getalldonation")
	@ResponseBody
	public List<Donation> getAllDonation() {
		return donationservice.getAllDonation();
	}
		
	@RequestMapping("/modifystate")
	@ResponseBody
	public int modifyState(int state,int donation_id) {		
		return donationservice.modifyState(state,donation_id);
	}
	
}
