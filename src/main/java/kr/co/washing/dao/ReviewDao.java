package kr.co.washing.dao;

import java.util.List;

import kr.co.washing.model.Review;
import kr.co.washing.util.Pager;

public interface ReviewDao {

	int total(Pager pager);

	List<Review> list(Pager pager);

	void delete(String rcode);

	void add(Review item);

	Review item(int rcode);

	List<Review> listAll();

}
