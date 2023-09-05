package team.co.kr.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import team.co.kr.entity.Audition;
import team.co.kr.mapper.auditionMapper;

@Service
public class auditionService {
	
	@Autowired
	private auditionMapper audmapper;
	
	public int audition(Audition aud) {
		return audmapper.audition(aud);
		
	}
	

}
