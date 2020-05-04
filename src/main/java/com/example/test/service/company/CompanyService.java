package com.example.test.service.company;

import javax.servlet.http.HttpSession;

import com.example.test.model.company.dto.CompanyDTO;

public interface CompanyService {

	public CompanyDTO view(String company_name);
	public void insert(CompanyDTO dto, HttpSession session);
	public String check(String userid);
}