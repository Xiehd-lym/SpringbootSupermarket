package com.it.service;

import com.it.entity.Outport;
import com.baomidou.mybatisplus.extension.service.IService;
import com.it.utils.Result;

import javax.servlet.http.HttpSession;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author bxystart
 * @since 2021-04-07
 */
public interface OutportService extends IService<Outport> {

    void addOutport(Integer id, Integer number , String remark, HttpSession session);
}
