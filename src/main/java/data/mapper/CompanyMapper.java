package data.mapper;

import org.apache.ibatis.annotations.Mapper;

import data.dto.CompanyDto;

@Mapper
public interface CompanyMapper {
	public void insertCompany(CompanyDto dto);
}
