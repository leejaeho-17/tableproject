package company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import data.dto.CompanyDto;
import data.mapper.CompanyMapper;
import data.service.CompanyService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import naver.storage.NcpObjectStorageService;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Controller

public class CompanyController {
	@Autowired
	CompanyService companyService;
	
	private String bucketName = "bitcamp-bucket-121";
	
	@Autowired
	NcpObjectStorageService storageService;
	
	@GetMapping("/insert")
	public String company() {
		return "insertcompany";
	}
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@PostMapping("/insert")
	public String insert(HttpServletRequest request,
			@ModelAttribute CompanyDto dto,
			@RequestParam("upload") MultipartFile upload) {
		
		if(upload.getOriginalFilename().equals("")) {
			dto.setCphoto("no");
		} else {
			String uploadFilename = storageService.uploadFile(bucketName, "company", upload);
			dto.setCphoto(uploadFilename);
		}
		companyService.insertCompany(dto);
		
		return "home";
	}
	
	
	
}
