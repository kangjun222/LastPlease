package team.co.kr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.co.kr.entity.Artist;
import team.co.kr.entity.GroupArtist;
import team.co.kr.entity.Item;
import team.co.kr.mapper.artistMapper;

@Service
public class artistService {
	@Autowired
	private artistMapper artmapper;
	
	public Artist profile(Artist art) {
		return artmapper.profile(art);
	}
	
	public GroupArtist groupprofile(GroupArtist gart) {
		return artmapper.groupprofile(gart);
	}
	
	public List<Item> gonewjins(String artist){
		return artmapper.gonewjins(artist);
	}
	
	
}
