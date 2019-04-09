package com.xa.service.impl;

import com.xa.mapper.EntryMapper;
import com.xa.pojo.Entry;
import com.xa.service.EntryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.TransactionTemplate;

import java.util.List;

@Service("entryService")
public class EntryServiceImpl implements EntryService {


    @Autowired
    private EntryMapper entryMapper;

    @Override
    public List<Entry> queryAll() {
        return entryMapper.queryAll();
    }

    @Override
    public List<Entry> queryByCategoryId(Integer id) {
        return entryMapper.queryByCategoryId(id);
    }

    @Override
    public boolean add(Entry entry) {
        return entryMapper.add(entry) == 1 ? true:false;
    }

    @Override
    public Entry queryById(Integer id) {
        if(id == null || id == 0){
            return null;
        }
        return entryMapper.queryById(id);
    }

    @Override
    public boolean update(Entry entry) {
        if(entry.getId() == null || entry.getId() == 0){
            return false;
        }
        return entryMapper.update(entry)  == 1 ? true:false;
    }

    @Override
    public boolean delete(Integer id) {
        return entryMapper.delete(id) == 1 ? true:false;
    }

}
