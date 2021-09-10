package com.lec.spring;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.lec.spring.domain.WriteDTO;

public class WriteValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return WriteDTO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		System.out.println("[WriteValidator::validate() 호출]");
		WriteDTO dto = (WriteDTO)target;
		
		String name = dto.getName();
		if(name == null || name.trim().isEmpty()) {
			errors.rejectValue("name", "이름을 적어주세요");
		}
		
		String kind = dto.getKind();
		if(kind == null ||  kind.trim().isEmpty()) {
			errors.rejectValue("kind", "종류를 적어주세요");
		}else if(!(kind.equals("한식") || kind.equals("중식") || kind.equals("일식"))) {
			errors.rejectValue("kind", "한식 중식 일식 적어주세요");
		}
	
		int price = dto.getPrice();
		if(price < 0 ) {
			errors.rejectValue("price", "empty price");
		}	
		
	}

}
