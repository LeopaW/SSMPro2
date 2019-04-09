package com.xa.controller;

import com.xa.pojo.Category;
import com.xa.pojo.Entry;
import com.xa.service.CategoryService;
import com.xa.service.EntryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private EntryService entryService;

    @RequestMapping("/main")
    public String main(Model model){

        //1.查询分类信息,所有的电子文档
        List<Category> categories =  categoryService.queryAll();

        //2.查询所有的电子文档
        List<Entry> entries = entryService.queryAll();

        //3存入模型中
        model.addAttribute("categories",categories);
        model.addAttribute("entries",entries);

        return "main";
    }


    @RequestMapping("/query/categoryId")
    public String queryById(@RequestParam("id")Integer id,Model model){
        List<Category> categories =  categoryService.queryAll();
        List<Entry> entries = entryService.queryByCategoryId(id);
        if(id == null || id == 0){
            id = null;
        }
        //保留条件
        model.addAttribute("categoryId",id);
        model.addAttribute("categories",categories);
        model.addAttribute("entries",entries);
        return "main" ;
    }
}
