package com.kh.walkwork.member.model.service;

import java.util.ArrayList;

import com.kh.walkwork.member.model.vo.Cert;
import com.kh.walkwork.member.model.vo.Member;

public interface MemberService {

	//회원가입
	int insertMember(Member m);
	
	String sendMail(String ip);
	
	int valiCheck(Cert cert);
	
	int emailDuplicationCheck(String emailDupl);
	
	int idDuplicationCheck(String id);
	
	
	//로그인
	Member loginMember(Member m);

	Member searchId(Member m);
	
	int loginFail(Member loginUser);
	
	String sendPwd(Member m);
	
	int deleteTmpPwd(Member loginUser);
	
	int loginFailReset(Member loginUser);
	
	int loginFailCount(Member loginUser);
	
	int changePwd(Member m);
	
	Member searchMember(Member m);
//-------------------------------------------------------
	
	
	// 헤더
	ArrayList<Member> selectAddrList();
	
	

	// ---윤희
	public Member selectMemberInformation(Member m);







	
}
