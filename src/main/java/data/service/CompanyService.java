package data.service;

import java.util.List;

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
	public List<CompanyDto> selectAllCompany() {
		return companyMapper.selectAllCompany();
	}
	
	public void deleteCompanyByNum(int num) {
		companyMapper.deleteCompanyByNum(num);
	}
	
	public CompanyDto selectCompanyByNum(int num) {
		return companyMapper.selectCompanyByNum(num);
	}
	
	public void updateCompanyByNum(CompanyDto dto) {
		companyMapper.updateCompanyByNum(dto);
	}
}
