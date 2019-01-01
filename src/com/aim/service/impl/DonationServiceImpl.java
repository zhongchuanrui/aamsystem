package com.aim.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.aim.dao.DonationDao;
import com.aim.pojo.Donation;
import com.aim.service.DonationService;

@Service("Donationserviceimpl")
public class DonationServiceImpl implements DonationService{
	
	@Resource
	DonationDao donationdao;

	@Override
	public List<Donation> getAllDonation() {
		return donationdao.getAllDonation();
	}

	@Override
	public int modifyState(int state ,int donation_id) {
		return donationdao.modifyState(state, donation_id);
	}

}
