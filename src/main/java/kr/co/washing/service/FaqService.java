package kr.co.washing.service;

import java.util.List;

import kr.co.washing.model.Faq;
import kr.co.washing.util.Pager;

public interface FaqService {

	Faq item(int code);

	void update(Faq item);

	void add(Faq item);

	void delete(int code);

	List<Faq> list(Pager pager);
}
