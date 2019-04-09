package com.xa.service;

import com.xa.pojo.Category;

import java.util.List;

public interface CategoryService {

    /**
     * 查询所有的分类信息
     * @return
     */
    List<Category> queryAll();
}
