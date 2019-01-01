package com.aim.service;

import java.util.List;

import com.aim.pojo.Donation;

public interface DonationService {
	List<Donation> getAllDonation();

	int modifyState(int state,int donation_id);
}
