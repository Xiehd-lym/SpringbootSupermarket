package com.it.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author bxystart
 * @since 2021-04-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("tb_customer")
public class Customer implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "custid", type = IdType.AUTO)
    private Integer custid;

    /**
     * 客户名
     */
    private String custname;

    /**
     * 客户电话
     */
    private String custphone;

    /**
     * 客户邮箱
     */
    private String custemail;

    /**
     * 客户vip
     */
    private String custvip;


}
