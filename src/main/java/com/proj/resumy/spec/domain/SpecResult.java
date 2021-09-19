package com.proj.resumy.spec.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SpecResult {
	int count;   // 데이터 개수
	String status;  // 처리결과
	String message;  // 결과 메세지
}
