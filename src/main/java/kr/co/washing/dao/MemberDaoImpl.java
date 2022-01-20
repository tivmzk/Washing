package kr.co.washing.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.washing.model.Member;
import kr.co.washing.util.Pager;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Member item) {
		sql.insert("member.add", item);
	}

	@Override
	public Member item(Member item) {
		return sql.selectOne("member.item", item);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("member.total", pager);
	}

	@Override
	public List<Member> list(Pager pager) {
		return sql.selectList("member.list", pager);
	}

	@Override
	public void delete(String email) {
		sql.delete("member.delete", email);
	}

	@Override
	public void update(Member item) {
		sql.update("member.update", item);
	}

}
