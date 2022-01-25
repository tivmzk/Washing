package kr.co.washing.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.washing.model.Subscription;
import kr.co.washing.util.Pager;

@Repository
public class SubscriptionDaoImpl implements SubscriptionDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("subscription.total", pager);
	}

	@Override
	public List<Subscription> list(Pager pager) {
		return sql.selectList("subscription.list", pager);
	}
	
	@Override
	public Subscription item(int scode) {
		return sql.selectOne("subscription.item", scode);
	}

	@Override
	public void update(Subscription item) {
		sql.update("subscription.update", item);
	}
	
	@Override
	public void delete(int scode) {
		sql.delete("subscription.delete", scode);
	}

	@Override
	public void add(Subscription item) {
		sql.insert("subscription.add", item);
	}
}
