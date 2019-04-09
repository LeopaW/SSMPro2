package com.xa.service.impl;

import com.xa.mapper.CategoryMapper;
import com.xa.pojo.Category;
import com.xa.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;


    @Override
    public List<Category> queryAll() {


        return categoryMapper.queryAll();
    }
}
