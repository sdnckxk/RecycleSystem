package com.cl.dao;

import com.cl.entity.ZixunxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ZixunxinxiView;


/**
 * 资讯信息
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:57
 */
public interface ZixunxinxiDao extends BaseMapper<ZixunxinxiEntity> {
	
	List<ZixunxinxiView> selectListView(@Param("ew") Wrapper<ZixunxinxiEntity> wrapper);

	List<ZixunxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ZixunxinxiEntity> wrapper);
	
	ZixunxinxiView selectView(@Param("ew") Wrapper<ZixunxinxiEntity> wrapper);
	

}
