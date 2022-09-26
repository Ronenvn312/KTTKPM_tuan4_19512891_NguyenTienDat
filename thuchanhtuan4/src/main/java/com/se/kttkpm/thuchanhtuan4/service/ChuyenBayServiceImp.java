package com.se.kttkpm.thuchanhtuan4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.kttkpm.thuchanhtuan4.dao.ChuyenBayRepository;
import com.se.kttkpm.thuchanhtuan4.entity.ChuyenBay;

@Service
public class ChuyenBayServiceImp implements ChuyenBayService{
	@Autowired
	private ChuyenBayRepository chuyenBayRepository;
	
	public ChuyenBayServiceImp(ChuyenBayRepository chuyenBayRepository) {
		this.chuyenBayRepository = chuyenBayRepository;
	}
	
	@Override
	public List<ChuyenBay> findAll() {
		return chuyenBayRepository.findAll();
	}

	

	@Override
	public ChuyenBay findById(int theId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(ChuyenBay chuyenBay) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(String maCB) {
		// TODO Auto-generated method stub
		
	}

}
