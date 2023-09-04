package team.co.kr.mapper;

import org.apache.ibatis.annotations.Mapper;

import team.co.kr.entity.Item;

@Mapper
public interface ItemMapper {
	int insertItem(Item it);
}
