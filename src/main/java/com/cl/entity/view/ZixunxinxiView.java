package com.cl.entity.view;

import com.cl.entity.ZixunxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 资讯信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-05-09 19:34:57
 */
@TableName("zixunxinxi")
public class ZixunxinxiView  extends ZixunxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZixunxinxiView(){
	}
 
 	public ZixunxinxiView(ZixunxinxiEntity zixunxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, zixunxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
