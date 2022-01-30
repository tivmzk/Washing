package kr.co.washing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.washing.dao.ReviewDao;
import kr.co.washing.dao.ReviewImageDao;
import kr.co.washing.model.Review;
import kr.co.washing.model.ReviewImage;
import kr.co.washing.util.FileUploader;
import kr.co.washing.util.Pager;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	ReviewDao dao;
	@Autowired
	ReviewImageDao imageDao;
	
	@Override
	public List<Review> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}
	
	@Transactional
	@Override
	public void delete(int rcode) {
		Review item = item(rcode);
		
		FileUploader uploader = new FileUploader();
		for(ReviewImage image : item.getImages()) {
			imageDao.delete(image.getTcode());
			uploader.delete(image.getFullname());
		}
		dao.delete(rcode);		
	}
	
	@Transactional
	@Override
	public void add(Review item) {
		dao.add(item);
		for(ReviewImage image : item.getImages()) {
			image.setRcode(item.getRcode());
			imageDao.add(image);
		}
	}

	@Override
	public Review item(int rcode) {
		return dao.item(rcode);
	}

	@Override
	public List<Review> listAll() {
		return dao.listAll();
	}

}
