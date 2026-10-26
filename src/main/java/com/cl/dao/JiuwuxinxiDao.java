package com.cl.dao;

import com.cl.entity.JiuwuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JiuwuxinxiView;


/**
 * 旧物信息
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
public interface JiuwuxinxiDao extends BaseMapper<JiuwuxinxiEntity> {
	
	List<JiuwuxinxiView> selectListView(@Param("ew") Wrapper<JiuwuxinxiEntity> wrapper);

	List<JiuwuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<JiuwuxinxiEntity> wrapper);
	
	JiuwuxinxiView selectView(@Param("ew") Wrapper<JiuwuxinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiuwuxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiuwuxinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiuwuxinxiEntity> wrapper);



}
