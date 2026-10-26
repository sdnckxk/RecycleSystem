package com.cl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cl.annotation.IgnoreAuth;
import com.cl.dao.ConfigDao;
import com.cl.dao.JiuwuxinxiDao;
import com.cl.dao.YonghuDao;
import com.cl.entity.ConfigEntity;
import com.cl.utils.R;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.util.HashMap;
import java.util.Map;

/**
 * 数据库连接测试控制器
 * 用于验证数据库连接是否正常
 */
@RestController
@RequestMapping("/test")
public class DatabaseTestController {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private ConfigDao configDao;

    @Autowired
    private JiuwuxinxiDao jiuwuxinxiDao;

    @Autowired
    private YonghuDao yonghuDao;

    /**
     * 测试数据库连接
     */
    @IgnoreAuth
    @RequestMapping("/database")
    public R testDatabase() {
        Map<String, Object> result = new HashMap<>();
        
        try {
            // 1. 测试数据源连接
            Connection connection = dataSource.getConnection();
            DatabaseMetaData metaData = connection.getMetaData();
            
            result.put("连接状态", "成功");
            result.put("数据库产品", metaData.getDatabaseProductName());
            result.put("数据库版本", metaData.getDatabaseProductVersion());
            result.put("驱动名称", metaData.getDriverName());
            result.put("驱动版本", metaData.getDriverVersion());
            result.put("URL", metaData.getURL());
            result.put("用户名", metaData.getUserName());
            
            connection.close();
            
            // 2. 测试MyBatis Plus查询
            try {
                int configCount = configDao.selectCount(null);
                result.put("config表记录数", configCount);
            } catch (Exception e) {
                result.put("config表查询", "失败: " + e.getMessage());
            }
            
            try {
                int jiuwuxinxiCount = jiuwuxinxiDao.selectCount(null);
                result.put("jiuwuxinxi表记录数", jiuwuxinxiCount);
            } catch (Exception e) {
                result.put("jiuwuxinxi表查询", "失败: " + e.getMessage());
            }
            
            try {
                int yonghuCount = yonghuDao.selectCount(null);
                result.put("yonghu表记录数", yonghuCount);
            } catch (Exception e) {
                result.put("yonghu表查询", "失败: " + e.getMessage());
            }
            
            return R.ok().put("data", result);
            
        } catch (Exception e) {
            result.put("连接状态", "失败");
            result.put("错误信息", e.getMessage());
            result.put("错误类型", e.getClass().getName());
            return R.error(500, "数据库连接失败").put("data", result);
        }
    }

    /**
     * 测试简单查询
     */
    @IgnoreAuth
    @RequestMapping("/query")
    public R testQuery() {
        try {
            // 测试查询配置表
            ConfigEntity config = configDao.selectById(1L);
            if (config != null) {
                return R.ok().put("message", "查询成功").put("data", config);
            } else {
                return R.ok().put("message", "查询成功，但记录不存在");
            }
        } catch (Exception e) {
            return R.error("查询失败: " + e.getMessage());
        }
    }
}
