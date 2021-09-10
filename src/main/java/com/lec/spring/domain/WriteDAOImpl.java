package com.lec.spring.domain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession;


@Repository
public class WriteDAOImpl implements WriteDAO {
	
	private WriteDAO mapper;
	
	
	
	
	@Autowired
	public WriteDAOImpl(SqlSession sqlSession) {
		System.out.println("WriteDAOImpl() 생성");
		mapper = sqlSession.getMapper(WriteDAO.class);
		
		
	}

	@Override
	public List<WriteDTO> select() {
		
		return mapper.select();
	}

	@Override
	public int insert(WriteDTO dto) {
		
		return mapper.insert(dto);
	}

	@Override
	public List<WriteDTO> readByUid(int uid) {
		
		
		return mapper.selectByUid(uid);
	}

	@Override
	public List<WriteDTO> selectByUid(int uid) {
		
		return mapper.selectByUid(uid);
	}

	@Override
	public int update(WriteDTO dto) {
		
		return mapper.update(dto);
	}

	@Override
	public int deleteByUid(int uid) {
		
		return mapper.deleteByUid(uid);
	}


}
