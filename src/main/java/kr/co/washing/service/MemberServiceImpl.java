package kr.co.washing.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.washing.dao.MemberDao;
import kr.co.washing.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao dao;
	@Override
	public void add(Member item) {
		dao.add(item);
	}

}
