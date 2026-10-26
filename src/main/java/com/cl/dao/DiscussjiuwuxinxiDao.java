package com.cl.dao;

import com.cl.entity.DiscussjiuwuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscussjiuwuxinxiView;


/**
 * 旧物信息评论表
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:59
 */
public interface DiscussjiuwuxinxiDao extends BaseMapper<DiscussjiuwuxinxiEntity> {
	
	List<DiscussjiuwuxinxiView> selectListView(@Param("ew") Wrapper<DiscussjiuwuxinxiEntity> wrapper);

	List<DiscussjiuwuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjiuwuxinxiEntity> wrapper);
	
	DiscussjiuwuxinxiView selectView(@Param("ew") Wrapper<DiscussjiuwuxinxiEntity> wrapper);
	

}
