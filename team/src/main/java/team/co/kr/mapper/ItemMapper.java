package team.co.kr.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Item;

@Mapper
public interface ItemMapper {
	int insertItem(Item it);
	int buyitem(Map<String, Object> map);
	int mybank(Map<String, Object> map);
}
