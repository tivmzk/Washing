package kr.co.washing.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import kr.co.washing.model.ReviewImage;

public class FileUploader {
	public static String UPLOAD_PATH = "D:/washing_upload/";
	
	public List<ReviewImage> upload(List<MultipartFile> files) {
		List<ReviewImage> list = new ArrayList<>();
		
		try {
			for(MultipartFile file : files) {
				ReviewImage image = new ReviewImage();
				image.setFilename(file.getOriginalFilename());
				UUID uuid = UUID.randomUUID();
				image.setUuid(uuid.toString());
				file.transferTo(new File(UPLOAD_PATH+image.getFullname()));
				list.add(image);
			}
		}
		catch (Exception e) {
			System.out.println("업로드 실패");
			System.out.println(e.getMessage());
		}
		
		return list;
	}
	
	public void delete(String filename) {
		File file = new File(UPLOAD_PATH+filename);
		if(file.exists()) {
			file.delete();
		}
		else {
			System.out.println(UPLOAD_PATH+filename+" 파일이 없습니다.");
		}
	}
}
