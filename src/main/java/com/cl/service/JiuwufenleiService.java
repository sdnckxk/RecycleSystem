package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.JiuwufenleiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JiuwufenleiView;


/**
 * 旧物分类
 *
 * @author 
 * @email 
 * @date 2024-05-09 19:34:57
 */
public interface JiuwufenleiService extends IService<JiuwufenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiuwufenleiView> selectListView(Wrapper<JiuwufenleiEntity> wrapper);
   	
   	JiuwufenleiView selectView(@Param("ew") Wrapper<JiuwufenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiuwufenleiEntity> wrapper);
   	

}

