package com.proj.resumy.domain;

import java.time.LocalDateTime;

import lombok.Data;

// DTO : Data Transfer Object
// DAO 등과 연동하여 데이터를 실어 나르는 객체
// 필요한 객체(entity) 만큼 작성

@Data
public class IntroDTO {
	private int id;   				// intr_id
	private String title;			// intr_title
	private LocalDateTime regdate;	// intr_regdate
	private boolean pub;			// intr_public
	private boolean fin;			// intr_finish
	private LocalDateTime modydate;	// mody_dtm
	private int mid;				// mem_id
	
	public IntroDTO() {
		super();
		System.out.println("IntroDTO() 객체 생성");
	}


	public IntroDTO(int id, String title, LocalDateTime regdate, boolean pub, boolean fin, LocalDateTime modydate, int mid) {
		super();
		this.id = id;
		this.title = title;
		this.regdate = regdate;
		this.pub = pub;
		this.fin = fin;
		this.modydate = modydate;
		this.mid = mid;
		System.out.println("IntroDTO(...) 객체 생성");
	}
}
