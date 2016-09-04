package com.kitri.travelia.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by Kevin on 2016-09-01.
 */

@Repository("articleDAOimp")
public class ArticleDaoImpl extends AbstractDAO  {

    String namespace="com.kitri.travelia.mapper.MemberMaper";


    public List<Map<String, Object>> selectArticleList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList(namespace + ".selectArticleList", map);
    }

    public void insertBoard(Map<String, Object> map) throws Exception {
        insert(namespace + "insertBoard", map);
    }
}

