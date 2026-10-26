package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.HuishoufenpeiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.HuishoufenpeiView;


/**
 * 回收分配
 *
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
public interface HuishoufenpeiService extends IService<HuishoufenpeiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuishoufenpeiView> selectListView(Wrapper<HuishoufenpeiEntity> wrapper);
   	
   	HuishoufenpeiView selectView(@Param("ew") Wrapper<HuishoufenpeiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuishoufenpeiEntity> wrapper);
   	

}

