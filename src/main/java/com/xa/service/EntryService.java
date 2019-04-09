package com.xa.service;

import com.xa.pojo.Entry;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EntryService {
    List<Entry> queryAll();

    List<Entry> queryByCategoryId(Integer id);

    boolean add(Entry entry);

    Entry queryById(Integer id);

    boolean update(Entry entry);

    boolean delete(Integer id);
}
