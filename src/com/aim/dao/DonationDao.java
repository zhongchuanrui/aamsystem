package com.aim.dao;

import java.util.List;
import com.aim.pojo.Donation;

public interface DonationDao {

	List<Donation> getAllDonation();

	int modifyState(int state,int donation_id);
}
