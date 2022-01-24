package kr.co.washing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.washing.dao.ReviewDao;
import kr.co.washing.model.Review;
import kr.co.washing.util.Pager;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	ReviewDao dao;
	
	@Override
	public List<Review> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}

	@Override
	public void delete(String rcode) {
		dao.delete(rcode);
	}

}
