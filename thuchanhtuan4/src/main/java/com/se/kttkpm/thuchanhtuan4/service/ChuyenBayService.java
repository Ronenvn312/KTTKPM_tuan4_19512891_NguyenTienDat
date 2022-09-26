package com.se.kttkpm.thuchanhtuan4.service;

import java.util.List;

import com.se.kttkpm.thuchanhtuan4.entity.ChuyenBay;

public interface ChuyenBayService {
	public List<ChuyenBay> findAll();
	public ChuyenBay findById(int theId);
	public void save(ChuyenBay chuyenBay);
	public void deleteById(String maCB);
}
