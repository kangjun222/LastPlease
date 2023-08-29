package team.co.kr.mapper;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Artist;

@Mapper
public interface artistMapper {
	Artist profile(Artist art);
}
