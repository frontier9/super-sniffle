package com.kitri.travelia.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by Kevin on 2016-09-01.
 */

@Repository("articleDAOimpl")
public class ArticleDaoImpl extends AbstractDAO  {

    public List<Map<String, Object>> selectArticleList(Map<String, Object> map) throws Exception{
        String namespace="com.kitri.travelia.mapper.MemberMaper";

        return (List<Map<String, Object>>)selectList(namespace + ".selectArticleList", map);
    }
}

