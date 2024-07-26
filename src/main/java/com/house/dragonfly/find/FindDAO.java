package com.house.dragonfly.find;

import com.house.dragonfly.domain.MEMBER;

public interface FindDAO {
	MEMBER findId(MEMBER member);
	MEMBER findPassword(MEMBER member);
}
