package com.proj.resumy.domain;

import java.util.List;

//자소서 DAO 인터페이스 김진섭
public interface IntroDAO {
	// 미완성 자기 자소서 출력 SELECT
	public abstract List<IntroDTO> selectNotFinResume(int mid);
	
	// 완성 자기 자소서 출력 SELECT
	public abstract List<IntroDTO> selectFinResume(int mid);
	
	// 새 자소서 작성 <-- DTO
	public abstract int insert(IntroDTO dto);
	
	// 특정 id 자소서 내용 읽기,
	public abstract List<IntroDTO> selectByUid(int uid);
	
	// 특정 id 자소서 수정
	public abstract int update(IntroDTO dto);
	
	// 특정 id 자소서 삭제하기
	public abstract int deleteByUid(int uid);
}
