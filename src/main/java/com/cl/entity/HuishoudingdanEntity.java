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
 * 回收订单
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-05-09 19:34:58
 */
@TableName("huishoudingdan")
public class HuishoudingdanEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public HuishoudingdanEntity() {
		
	}
	
	public HuishoudingdanEntity(T t) {
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
	 * 回收单价
	 */
					
	private Double huishoudanjia;
	
	/**
	 * 回收数量
	 */
					
	private Integer huishoushuliang;
	
	/**
	 * 回收总价
	 */
					
	private Double huishouzongjia;
	
	/**
	 * 状态
	 */
					
	private String zhuangtai;
	
	/**
	 * 用户账号
	 */
					
	private String yonghuzhanghao;
	
	/**
	 * 用户姓名
	 */
					
	private String yonghuxingming;
	
	/**
	 * 分配状态
	 */
					
	private String fenpeizhuangtai;
	
	
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
	 * 设置：回收单价
	 */
	public void setHuishoudanjia(Double huishoudanjia) {
		this.huishoudanjia = huishoudanjia;
	}
	/**
	 * 获取：回收单价
	 */
	public Double getHuishoudanjia() {
		return huishoudanjia;
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
	 * 设置：回收总价
	 */
	public void setHuishouzongjia(Double huishouzongjia) {
		this.huishouzongjia = huishouzongjia;
	}
	/**
	 * 获取：回收总价
	 */
	public Double getHuishouzongjia() {
		return huishouzongjia;
	}
	/**
	 * 设置：状态
	 */
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	/**
	 * 获取：状态
	 */
	public String getZhuangtai() {
		return zhuangtai;
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
	 * 设置：分配状态
	 */
	public void setFenpeizhuangtai(String fenpeizhuangtai) {
		this.fenpeizhuangtai = fenpeizhuangtai;
	}
	/**
	 * 获取：分配状态
	 */
	public String getFenpeizhuangtai() {
		return fenpeizhuangtai;
	}

}
