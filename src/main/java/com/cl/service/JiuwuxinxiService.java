package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.JiuwuxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JiuwuxinxiView;


/**
 * 废旧物品信息
 *
 * @author
 * @email
 * @date 2024-05-09 19:34:58
 */
public interface JiuwuxinxiService extends IService<JiuwuxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiuwuxinxiView> selectListView(Wrapper<JiuwuxinxiEntity> wrapper);
   	
   	JiuwuxinxiView selectView(@Param("ew") Wrapper<JiuwuxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiuwuxinxiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<JiuwuxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<JiuwuxinxiEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<JiuwuxinxiEntity> wrapper);



}

