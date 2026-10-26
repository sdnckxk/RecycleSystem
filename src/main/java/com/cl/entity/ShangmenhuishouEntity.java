package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 上门回收
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
@TableName("shangmenhuishou")
public class ShangmenhuishouEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShangmenhuishouEntity() {
		
	}
	
	public ShangmenhuishouEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 旧物名称
	 */
					
	private String jiuwumingcheng;
	
	/**
	 * 旧物分类
	 */
					
	private String jiuwufenlei;
	
	/**
	 * 回收数量
	 */
					
	private Integer huishoushuliang;
	
	/**
	 * 用户账号
	 */
					
	private String yonghuzhanghao;
	
	/**
	 * 用户姓名
	 */
					
	private String yonghuxingming;
	
	/**
	 * 回收时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date huishoushijian;
	
	/**
	 * 人员账号
	 */
					
	private String renyuanzhanghao;
	
	/**
	 * 人员姓名
	 */
					
	private String renyuanxingming;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：旧物名称
	 */
	public void setJiuwumingcheng(String jiuwumingcheng) {
		this.jiuwumingcheng = jiuwumingcheng;
	}
	/**
	 * 获取：旧物名称
	 */
	public String getJiuwumingcheng() {
		return jiuwumingcheng;
	}
	/**
	 * 设置：旧物分类
	 */
	public void setJiuwufenlei(String jiuwufenlei) {
		this.jiuwufenlei = jiuwufenlei;
	}
	/**
	 * 获取：旧物分类
	 */
	public String getJiuwufenlei() {
		return jiuwufenlei;
	}
	/**
	 * 设置：回收数量
	 */
	public void setHuishoushuliang(Integer huishoushuliang) {
		this.huishoushuliang = huishoushuliang;
	}
	/**
	 * 获取：回收数量
	 */
	public Integer getHuishoushuliang() {
		return huishoushuliang;
	}
	/**
	 * 设置：用户账号
	 */
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
	/**
	 * 设置：用户姓名
	 */
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
	/**
	 * 设置：回收时间
	 */
	public void setHuishoushijian(Date huishoushijian) {
		this.huishoushijian = huishoushijian;
	}
	/**
	 * 获取：回收时间
	 */
	public Date getHuishoushijian() {
		return huishoushijian;
	}
	/**
	 * 设置：人员账号
	 */
	public void setRenyuanzhanghao(String renyuanzhanghao) {
		this.renyuanzhanghao = renyuanzhanghao;
	}
	/**
	 * 获取：人员账号
	 */
	public String getRenyuanzhanghao() {
		return renyuanzhanghao;
	}
	/**
	 * 设置：人员姓名
	 */
	public void setRenyuanxingming(String renyuanxingming) {
		this.renyuanxingming = renyuanxingming;
	}
	/**
	 * 获取：人员姓名
	 */
	public String getRenyuanxingming() {
		return renyuanxingming;
	}

}
