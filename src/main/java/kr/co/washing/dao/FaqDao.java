package kr.co.washing.dao;

import java.util.List;

import kr.co.washing.model.Faq;
import kr.co.washing.util.Pager;

public interface FaqDao {

	Faq item(int fcode);

	void update(Faq item);

	void add(Faq item);

	void delete(int fcode);

	int total(Pager pager);

	List<Faq> list(Pager pager);

}
