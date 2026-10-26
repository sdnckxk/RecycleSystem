package com.cl.dao;

import com.cl.entity.JiuwufenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JiuwufenleiView;


/**
 * 旧物分类
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:57
 */
public interface JiuwufenleiDao extends BaseMapper<JiuwufenleiEntity> {
	
	List<JiuwufenleiView> selectListView(@Param("ew") Wrapper<JiuwufenleiEntity> wrapper);

	List<JiuwufenleiView> selectListView(Pagination page,@Param("ew") Wrapper<JiuwufenleiEntity> wrapper);
	
	JiuwufenleiView selectView(@Param("ew") Wrapper<JiuwufenleiEntity> wrapper);
	

}
