package kr.co.washing.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.washing.model.Review;
import kr.co.washing.model.ReviewImage;
import kr.co.washing.service.ReviewService;
import kr.co.washing.util.FileUploader;

@RequestMapping("/review")
@Controller
public class ReviewController {
	final String path = "review/";
	
	@Autowired
	ReviewService rs;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Review> list = rs.listAll();
		model.addAttribute("list", list);
		return path + "list.main";
	}
	
	@GetMapping("/{code}")
	public String item(@PathVariable int code, Model model) {
		Review item = rs.item(code);
		model.addAttribute("item", item);
		return path + "item.main";
	}
	
	@GetMapping("/add")
	public String add() {
		return path+"add.main";
	}
	
	@PostMapping("/add")
	public String add(Review item, @RequestParam("reviewImages") List<MultipartFile> files) {
		FileUploader uploader = new FileUploader();
		List<ReviewImage> list = uploader.upload(files);
		item.setImages(list);
		rs.add(item);
		return "redirect:list";
	}
}
