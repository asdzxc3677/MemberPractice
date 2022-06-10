package com.its.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberDTO {
    private Long id; //회원번호
    private String memberId; //아이디
    private String memberPassword; //비번
    private String memberName; //이름
    private int memberAge; //나이
    private String memberPhone; //폰번호
    
}
