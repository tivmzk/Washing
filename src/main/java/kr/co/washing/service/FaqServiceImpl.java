package kr.co.washing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.washing.dao.FaqDao;
import kr.co.washing.model.Faq;
import kr.co.washing.util.Pager;

@Service
public class FaqServiceImpl implements FaqService {
	@Autowired
	FaqDao dao;

	@Override
	public Faq item(int fcode) {
		return dao.item(fcode);
	}

	@Override
	public void update(Faq item) {
		dao.update(item);
	}

	@Override
	public void add(Faq item) {
		dao.add(item);
	}

	@Override
	public void delete(int fcode) {
		dao.delete(fcode);
	}

	@Override
	public List<Faq> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}
}
