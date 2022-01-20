package kr.co.washing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.washing.dao.MemberDao;
import kr.co.washing.model.Member;
import kr.co.washing.util.Pager;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao dao;
	@Override
	public void add(Member item) {
		dao.add(item);
	}
	@Override
	public Member item(Member item) {
		return dao.item(item);
	}
	@Override
	public List<Member> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}
	@Override
	public void delete(String email) {
		dao.delete(email);
	}
	@Override
	public void update(Member item) {
		dao.update(item);
	}

}
