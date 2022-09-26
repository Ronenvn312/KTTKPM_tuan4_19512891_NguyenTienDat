package com.se.kttkpm.thuchanhtuan4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.se.kttkpm.thuchanhtuan4.entity.ChuyenBay;
import com.se.kttkpm.thuchanhtuan4.service.ChuyenBayService;

@RestController
@RequestMapping("/chuyenbays")
public class ChuyenBayRestController {
	@Autowired
	private ChuyenBayService chuyenBayService;
	
	@GetMapping("/list")
	public List<ChuyenBay> findAlls() {
		return chuyenBayService.findAll();
	}
}
