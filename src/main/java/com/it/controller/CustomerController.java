package com.it.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.it.aspect.SysLog;
import com.it.entity.Provider;
import com.it.vo.CustomerVO;
import com.it.entity.Customer;
import com.it.service.CustomerService;
import com.it.utils.DataGridViewResult;
import com.it.utils.Result;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author bxystart
 * @since 2021-04-04
 */
@RestController
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;


    /**
     * 客户模糊查询
     * @param
     * @return
     */
    @SysLog("客户查询操作")
    @RequestMapping("/customerList")
    public DataGridViewResult customerList(CustomerVO customerVO) {

        //创建分页信息    参数1 当前页  参数2 每页显示条数
        IPage<Customer> page = new Page<>(customerVO.getPage(), customerVO.getLimit());
        QueryWrapper<Customer> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(!StringUtils.isEmpty(customerVO.getCustvip()),"custvip", customerVO.getCustvip());
        IPage<Customer> customerIPage = customerService.page(page, queryWrapper);
        /**
         * logsIPage.getTotal() 总条数
         * logsIPage.getRecords() 分页记录列表
         */
        return new DataGridViewResult(customerIPage.getTotal(),customerIPage.getRecords());

    }

    /**
     * 客户批量删除
     * @param ids
     * @return
     */
    @SysLog("客户删除操作")
    @RequestMapping("/deleteList")
    public Result deleteList(String ids) {
        //将字符串拆分成数组
        String[] idsStr = ids.split(",");
        List<String> list = Arrays.asList(idsStr);
        boolean bool = customerService.removeByIds(list);
        if(bool){
            return Result.success(true,"200","删除成功！");
        }
        return Result.error(false,null,"删除失败！");
    }

    /**
     * 添加客户信息
     * @param customer
     * @return
     */
    @SysLog("客户添加操作")
    @PostMapping("/addcustomer")
    public Result addCustomer(Customer customer){
        String id = RandomStringUtils.randomAlphanumeric(10);

        customer.setCustvip(id);
        boolean bool = customerService.save(customer);
        if(bool){
            return Result.success(true,"200","添加成功！");
        }
        return Result.error(false,null,"添加失败！");
    }

    /**
     * 修改客户信息
     * @param customer
     * @return
     */
    @SysLog("客户修改操作")
    @PostMapping("/updatecustomer")
    public Result updateCustomer(Customer customer){

        boolean bool = customerService.updateById(customer);
        if(bool){
            return Result.success(true,"200","修改成功！");
        }
        return Result.error(false,null,"修改失败！");
    }

    /**
     * 删除单条数据
     * @param id
     * @return
     */
    @SysLog("客户删除操作")
    @RequestMapping("/deleteOne")
    public Result deleteOne(int id) {

        boolean bool = customerService.removeById(id);
        if(bool){
            return Result.success(true,"200","删除成功！");
        }
        return Result.error(false,null,"删除失败！");
    }



    /**
     *
     * 加载下拉框
     * @return
     */
    @RequestMapping("/loadAllCustomer")
    public DataGridViewResult loadAllCustomer(){
        QueryWrapper<Customer> queryWrapper = new QueryWrapper<>();
        List<Customer> list = customerService.list(queryWrapper);
        return new DataGridViewResult(list);

    }

}
