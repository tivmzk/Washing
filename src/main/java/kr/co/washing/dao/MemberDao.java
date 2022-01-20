package kr.co.washing.dao;

import java.util.List;

import kr.co.washing.model.Member;
import kr.co.washing.util.Pager;

public interface MemberDao {

	void add(Member item);

	Member item(Member item);

	int total(Pager pager);

	List<Member> list(Pager pager);

	void delete(String email);

}
