package kr.co.washing.service;

import java.util.List;

import kr.co.washing.model.Subscription;
import kr.co.washing.util.Pager;

public interface SubscriptionService {

	List<Subscription> list(Pager pager);

	Subscription item(int code);

	void update(Subscription item);

	void delete(int code);

	void add(Subscription item);

}
