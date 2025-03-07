package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;
@Data
@Alias("CompanyDto")
public class CompanyDto {
	private int num;
	private String cname;
	private String chp;
	private String caddr;
	private String cphoto;
	private Timestamp gaipday;
	
}
