package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.CompanyDto;
import data.mapper.CompanyMapper;

@Service
public class CompanyService {
@Autowired
CompanyMapper companyMapper;
	
	public void insertCompany(CompanyDto dto) {
		companyMapper.insertCompany(dto);
	}
}
