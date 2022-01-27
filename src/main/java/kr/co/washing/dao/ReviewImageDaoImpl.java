package kr.co.washing.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.washing.model.ReviewImage;

@Repository
public class ReviewImageDaoImpl implements ReviewImageDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(ReviewImage image) {
		sql.insert("reviewImage.add", image);
	}

}
