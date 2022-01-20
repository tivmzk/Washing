package kr.co.washing.service;

import java.util.List;

import kr.co.washing.model.Member;
import kr.co.washing.util.Pager;

public interface MemberService {

	void add(Member item);

	Member item(Member item);

	List<Member> list(Pager pager);

	void delete(String email);

	void update(Member item);

}
