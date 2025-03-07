package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.CompanyDto;

@Mapper
public interface CompanyMapper {
	public void insertCompany(CompanyDto dto);
	public List<CompanyDto> selectAllCompany();
}
