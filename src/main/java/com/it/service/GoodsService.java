package com.it.service;

import com.it.entity.Goods;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author bxystart
 * @since 2021-04-07
 */
public interface GoodsService extends IService<Goods> {

    boolean saveGoodsCategory(int goodsid, String categoryids);
}
