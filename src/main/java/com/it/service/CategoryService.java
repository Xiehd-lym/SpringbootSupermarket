package com.it.service;

import com.it.entity.Category;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Set;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author bxystart
 * @since 2021-04-04
 */
public interface CategoryService extends IService<Category> {

    Set<Integer> findGoodsByCategoryId(int id)throws Exception;
}
