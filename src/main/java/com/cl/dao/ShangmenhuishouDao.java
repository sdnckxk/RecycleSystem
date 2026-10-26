package com.cl.dao;

import com.cl.entity.ShangmenhuishouEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShangmenhuishouView;


/**
 * 上门回收
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
public interface ShangmenhuishouDao extends BaseMapper<ShangmenhuishouEntity> {
	
	List<ShangmenhuishouView> selectListView(@Param("ew") Wrapper<ShangmenhuishouEntity> wrapper);

	List<ShangmenhuishouView> selectListView(Pagination page,@Param("ew") Wrapper<ShangmenhuishouEntity> wrapper);
	
	ShangmenhuishouView selectView(@Param("ew") Wrapper<ShangmenhuishouEntity> wrapper);
	

}
