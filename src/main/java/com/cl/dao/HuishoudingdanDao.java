package com.cl.dao;

import com.cl.entity.HuishoudingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.HuishoudingdanView;


/**
 * 回收订单
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
public interface HuishoudingdanDao extends BaseMapper<HuishoudingdanEntity> {
	
	List<HuishoudingdanView> selectListView(@Param("ew") Wrapper<HuishoudingdanEntity> wrapper);

	List<HuishoudingdanView> selectListView(Pagination page,@Param("ew") Wrapper<HuishoudingdanEntity> wrapper);
	
	HuishoudingdanView selectView(@Param("ew") Wrapper<HuishoudingdanEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<HuishoudingdanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<HuishoudingdanEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<HuishoudingdanEntity> wrapper);



}
