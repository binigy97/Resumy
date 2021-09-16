package com.proj.resumy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.resumy.domain.IntroDAO;
import com.proj.resumy.domain.IntroDTO;

//Service 단.
//JSP MVC model2 의 Command 역할 비슷
//  Controller -> Commmand -> DAO

//- Transaction 담당
//Spring
//@Controller -> @Service -> DAO -> JdbcTemplate

@Service
public class IntroService {
	IntroDAO dao;

	@Autowired
	public void setDao(IntroDAO dao) {
		this.dao = dao;
	}
	
	public IntroService() {
		System.out.println("IntroService() 생성");
		
	}

	public List<IntroDTO> list() {
		
		return dao.select();
	}

//	public int write(IntroDTO dto) {
//		return dao.insert(dto);
//	}
//
//	public List<IntroDTO> selectByUid(int uid) {
//		return dao.selectByUid(uid);
//	}
//
//	public int update(IntroDTO dto) {
//		return dao.update(dto);
//	}
//
//	public int deleteByUid(int uid) {
//		return dao.deleteByUid(uid);
//	}
	
}
