package com.cl.dao;

import com.cl.entity.HuishoufenpeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.HuishoufenpeiView;


/**
 * 回收分配
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
public interface HuishoufenpeiDao extends BaseMapper<HuishoufenpeiEntity> {
	
	List<HuishoufenpeiView> selectListView(@Param("ew") Wrapper<HuishoufenpeiEntity> wrapper);

	List<HuishoufenpeiView> selectListView(Pagination page,@Param("ew") Wrapper<HuishoufenpeiEntity> wrapper);
	
	HuishoufenpeiView selectView(@Param("ew") Wrapper<HuishoufenpeiEntity> wrapper);
	

}
