package com.xa.mapper;

import com.xa.pojo.Entry;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface EntryMapper {
    List<Entry> queryAll();

    List<Entry> queryByCategoryId(@Param("id") Integer id);

    int add(Entry entry);

    Entry queryById(@Param("id") Integer id);

    int update(Entry entry);

    int delete(@Param("id") Integer id);
}
