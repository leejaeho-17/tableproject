package company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/insert")
	public String company() {
		return "insertcompany";
	}
	
	@PostMapping("/insert")
	public String insert(HttpServletRequest request,
	        @ModelAttribute CompanyDto dto,
	        @RequestParam("upload") MultipartFile upload) {
	    
	    if (upload.getOriginalFilename().equals("")) {
	        dto.setCphoto("no");
	    } else {
	        // 파일을 네이버 Object Storage에 업로드
	        String uploadFilename = storageService.uploadFile(bucketName, "company", upload);

	        // DTO에 이미지 URL 저장
	        dto.setCphoto(uploadFilename);
	    }

	    companyService.insertCompany(dto);
	    return "home";
	}

	
	@GetMapping("/list")		
	public String selectAllCompany(Model model) {
		List<CompanyDto> list = companyService.selectAllCompany();
		model.addAttribute("list", list);
		model.addAttribute("fronturl", "https://hit24cex8733.edge.naverncp.com/e0XP0bC7Fl");
		model.addAttribute("backurl", "?type=f&w=30&h=30&faceopt=true&ttype=jpg");
		return "list";
	}
	
	
	
	
}
