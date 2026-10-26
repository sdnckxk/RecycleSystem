package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ShangmenhuishouEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShangmenhuishouView;


/**
 * 上门回收
 *
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
public interface ShangmenhuishouService extends IService<ShangmenhuishouEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShangmenhuishouView> selectListView(Wrapper<ShangmenhuishouEntity> wrapper);
   	
   	ShangmenhuishouView selectView(@Param("ew") Wrapper<ShangmenhuishouEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShangmenhuishouEntity> wrapper);
   	

}

