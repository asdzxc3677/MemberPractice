package com.its.member.repository;

import com.its.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {

    @Autowired
    private SqlSessionTemplate sql;

    public int save(MemberDTO memberDTO) { //회원가입
        return sql.insert("Member.save",memberDTO);
    }

    public String duplicateCheck(String memberId) { //중복체크
    return sql.selectOne("Member.duplicate",memberId);
    }


    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }
}
