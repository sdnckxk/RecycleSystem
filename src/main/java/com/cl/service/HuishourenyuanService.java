package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.HuishourenyuanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.HuishourenyuanView;


/**
 * 回收人员
 *
 * @author 
 * @email 
 * @date 2024-05-09 19:34:57
 */
public interface HuishourenyuanService extends IService<HuishourenyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuishourenyuanView> selectListView(Wrapper<HuishourenyuanEntity> wrapper);
   	
   	HuishourenyuanView selectView(@Param("ew") Wrapper<HuishourenyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuishourenyuanEntity> wrapper);
   	

}

