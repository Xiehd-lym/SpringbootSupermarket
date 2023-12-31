package com.it.vo;

import com.it.entity.Logs;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 自定义日志扩展类 传参用
 * @author bxystart
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class LogVO extends Logs {

    /**
     * 当前页码
     */
    private Integer page;

    /**
     * 每页显示数量
     */
    private Integer limit;

    /**
     * 开始时间 和logs页面 id保持一致
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;

    /**
     * 结束时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;
}
