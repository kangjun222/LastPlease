package team.co.kr.mapper;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Artist;
import team.co.kr.entity.GroupArtist;

@Mapper
public interface artistMapper {
	Artist profile(Artist art);
	GroupArtist groupprofile(GroupArtist gr);
}
