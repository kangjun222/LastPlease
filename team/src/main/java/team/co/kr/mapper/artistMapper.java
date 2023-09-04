package team.co.kr.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Artist;
import team.co.kr.entity.GroupArtist;
import team.co.kr.entity.Item;

@Mapper
public interface artistMapper {
	Artist profile(Artist art);
	GroupArtist groupprofile(GroupArtist gr);
	List<Item> gonewjins(String artist);
	
}
