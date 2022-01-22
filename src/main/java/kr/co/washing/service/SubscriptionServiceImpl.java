package kr.co.washing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.washing.dao.SubscriptionDao;
import kr.co.washing.model.Subscription;
import kr.co.washing.util.Pager;

@Service
public class SubscriptionServiceImpl implements SubscriptionService {
	@Autowired
	SubscriptionDao dao;

	@Override
	public List<Subscription> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}

	@Override
	public Subscription item(int code) {
		return dao.item(code);
	}

	@Override
	public void update(Subscription item) {
		dao.update(item);
	}
}
