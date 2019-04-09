package com.xa.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.xa.pojo.Category;
import com.xa.pojo.Entry;
import com.xa.service.CategoryService;
import com.xa.service.EntryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/entry")
public class EntryController {

    @Autowired
    private EntryService entryService;

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/addTo/{id}")
    public String addTo(@PathVariable("id")Integer id, Model model){
        //提取分类信息
        model.addAttribute("categoryId",id);
        return "addEntry";
    }

    @RequestMapping("/add")
    public String add(Entry entry,Model model){
        //添加电子文档
        boolean sucFlag = entryService.add(entry);
        model.addAttribute("sucFlag",sucFlag);
        List<Category> categories =  categoryService.queryAll();
        Integer id = entry.getCategoryId();
        List<Entry> entries = entryService.queryByCategoryId(id);
        if(id == null || id == 0){
            id = null;
        }

        //保留条件
        model.addAttribute("categoryId",id);
        model.addAttribute("categories",categories);
        model.addAttribute("entries",entries);
        return "main";
    }

    @RequestMapping("/updateTo/{id}")
    public String updateTo(@PathVariable("id")Integer id, Model model){

        //先查询出信息
        Entry entry = entryService.queryById(id);
        model.addAttribute("entry",entry);
        return "updateEntry";
    }

    @RequestMapping("update")
    public String update(Entry entry,Model model){

        //更新entry
        boolean sucFlag = entryService.update(entry);
        Integer id = entry.getCategoryId();
        List<Entry> entries = entryService.queryByCategoryId(id);
        List<Category> categories =  categoryService.queryAll();
        if(id == null || id == 0){
            id = null;
        }
        //保留条件
        model.addAttribute("categoryId",id);
        model.addAttribute("categories",categories);
        model.addAttribute("entries",entries);
        model.addAttribute("updateSucFlag",sucFlag);

        return "main";
    }

    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id")Integer id,Model model){

        boolean sucFlag = entryService.delete(id);
        model.addAttribute("deleteSucFlag",sucFlag);
        List<Category> categories =  categoryService.queryAll();
        List<Entry> entries = entryService.queryAll();
        model.addAttribute("categories",categories);
        model.addAttribute("entries",entries);
        return "main";
    }

}
