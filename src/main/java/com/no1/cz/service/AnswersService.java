package com.no1.cz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.no1.cz.domain.Answers;
import com.no1.cz.mapper.AnswersMapper;
@Service("AnswersService")
public class AnswersService {
	
	@Resource
	private AnswersMapper answersMapper;
	
	/*我要提问*/
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor={Exception.class})
	public void insertanswers(Answers answers, int userId) {
		try {
			this.answersMapper.insertanswers(answers);
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	
	//按userId查询所有问题
		@Transactional(rollbackFor=Exception.class)
		public List<Answers> answersList(int userId) {
			try {
				List<Answers> answersList=this.answersMapper.answersList(userId);
				return answersList;
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
}
