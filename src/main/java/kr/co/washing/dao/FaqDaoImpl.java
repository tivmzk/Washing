package kr.co.washing.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.washing.model.Faq;
import kr.co.washing.util.Pager;

@Repository
public class FaqDaoImpl implements FaqDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public Faq item(int fcode) {
		return sql.selectOne("faq.item", fcode);
	}

	@Override
	public void update(Faq item) {
		sql.update("faq.update", item);
	}

	@Override
	public void add(Faq item) {
		sql.insert("faq.add", item);
	}

	@Override
	public void delete(int fcode) {
		sql.delete("faq.delete", fcode);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("faq.total", pager);
	}

	@Override
	public List<Faq> list(Pager pager) {
		return sql.selectList("faq.list", pager);
	}
	
}
