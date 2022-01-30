package kr.co.washing.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.washing.model.Review;
import kr.co.washing.util.Pager;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("review.total", pager);
	}

	@Override
	public List<Review> list(Pager pager) {
		return sql.selectList("review.list", pager);
	}

	@Override
	public void delete(int rcode) {
		sql.delete("review.delete", rcode);
	}

	@Override
	public void add(Review item) {
		sql.insert("review.add", item);
	}

	@Override
	public Review item(int rcode) {
		return sql.selectOne("review.item", rcode);
	}

	@Override
	public List<Review> listAll() {
		return sql.selectList("review.listAll");
	}

}
