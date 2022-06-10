package com.its.member.service;

import com.its.member.dto.MemberDTO;
import com.its.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) { //회원가입
        int saveResult = memberRepository.save(memberDTO);
        if (saveResult > 0){
            return true;
        }else {
            return false;
        }
    }

    public String duplicateCheck(String memberId) { //아이디 중복체크
        String checkResult = memberRepository.duplicateCheck(memberId);
        if (checkResult == null){
            return "ok";
        }else {
            return "no";
        }
    }

    public MemberDTO login(MemberDTO memberDTO) { //로그인
        MemberDTO loginMember = memberRepository.login(memberDTO);
        return loginMember;
    }
}
