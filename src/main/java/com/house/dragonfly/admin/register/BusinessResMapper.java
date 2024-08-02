package com.house.dragonfly.admin.register;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Insert;
import com.house.dragonfly.domain.BUSINESS;

@Mapper
public interface BusinessResMapper {
    @Insert("INSERT INTO business (bu_email, bu_password, bu_tel, bu_name, bu_code, bu_approval, bu_account_num) VALUES (#{bu_email}, #{bu_password}, #{bu_tel}, #{bu_name}, #{bu_code}, #{bu_approval}, #{bu_account_num})")
    void registerBusiness(BUSINESS business);
}
