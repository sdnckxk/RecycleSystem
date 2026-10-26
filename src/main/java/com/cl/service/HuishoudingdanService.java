package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.HuishoudingdanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.HuishoudingdanView;


/**
 * 回收订单
 *
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
public interface HuishoudingdanService extends IService<HuishoudingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuishoudingdanView> selectListView(Wrapper<HuishoudingdanEntity> wrapper);
   	
   	HuishoudingdanView selectView(@Param("ew") Wrapper<HuishoudingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuishoudingdanEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<HuishoudingdanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<HuishoudingdanEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<HuishoudingdanEntity> wrapper);



}

