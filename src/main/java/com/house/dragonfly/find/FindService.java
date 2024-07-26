package com.house.dragonfly.find;

import com.house.dragonfly.domain.MEMBER;

public interface FindService {
	MEMBER findId(MEMBER member);
	MEMBER findPassword(MEMBER member);
}
