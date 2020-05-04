package com.example.test.service.company;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.test.model.company.dao.CompanyDAO;
import com.example.test.model.company.dto.CompanyDTO;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Inject
	CompanyDAO dao;
	
	@Override
	public CompanyDTO view(String company_name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(CompanyDTO dto, HttpSession session) {
		try {
			dao.insert(dto);
			session.setAttribute("company", "a");
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	@Override
	public String check(String userid) {
		// TODO Auto-generated method stub
		return null;
	}

}
