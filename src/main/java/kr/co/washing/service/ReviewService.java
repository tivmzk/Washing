package kr.co.washing.service;

import java.util.List;

import kr.co.washing.model.Review;
import kr.co.washing.util.Pager;

public interface ReviewService {

	List<Review> list(Pager pager);

	void delete(String rcode);

	void add(Review item);

	Review item(int code);

	List<Review> listAll();

}
