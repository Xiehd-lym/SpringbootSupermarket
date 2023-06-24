package com.it.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.it.aspect.SysLog;
import com.it.vo.CategoryVO;
import com.it.entity.Category;
import com.it.service.CategoryService;
import com.it.utils.DataGridViewResult;
import com.it.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author bxystart
 * @since 2021-04-04
 */
@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;


    /**
     * 类别模糊查询
     * @param
     * @return
     */
    @SysLog("类别查询操作")
    @RequestMapping("/categoryList")
    public DataGridViewResult categoryList(CategoryVO categoryVO) {

        //创建分页信息    参数1 当前页  参数2 每页显示条数
        IPage<Category> page = new Page<>(categoryVO.getPage(), categoryVO.getLimit());
        QueryWrapper<Category> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(!StringUtils.isEmpty(categoryVO.getCatename()),"catename", categoryVO.getCatename());
        IPage<Category> categoryIPage = categoryService.page(page, queryWrapper);
        /**
         * logsIPage.getTotal() 总条数
         * logsIPage.getRecords() 分页记录列表
         */
        return new DataGridViewResult(categoryIPage.getTotal(),categoryIPage.getRecords());

    }

    /**
     * 类别批量删除
     * @param ids
     * @return
     */
    @SysLog("类别删除操作")
    @RequestMapping("/deleteList")
    public Result deleteList(String ids) {
        //将字符串拆分成数组
        String[] idsStr = ids.split(",");
        List<String> list = Arrays.asList(idsStr);
        boolean bool = categoryService.removeByIds(list);
        if(bool){
            return Result.success(true,"200","删除成功！");
        }
        return Result.error(false,null,"删除失败！");
    }

    /**
     * 添加类别信息
     * @param category
     * @return
     */
    @SysLog("类别添加操作")
    @PostMapping("/addcategory")
    public Result addCategory(Category category){
        boolean bool = categoryService.save(category);
        if(bool){
            return Result.success(true,"200","添加成功！");
        }
        return Result.error(false,null,"添加失败！");
    }

    /**
     * 修改类别信息
     * @param category
     * @return
     */
    @SysLog("类别修改操作")
    @PostMapping("/updatecategory")
    public Result updateCategory(Category category){

        boolean bool = categoryService.updateById(category);
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
    @SysLog("类别删除操作")
    @RequestMapping("/deleteOne")
    public Result deleteOne(int id) {

        boolean bool = categoryService.removeById(id);
        if(bool){
            return Result.success(true,"200","删除成功！");
        }
        return Result.error(false,null,"删除失败！");
    }
}
