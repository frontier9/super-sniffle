package com.kitri.travelia.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by Kevin on 2016-09-01.
 */

@Repository("articleDAOImplementation")
public class ArticleDaoImpl extends AbstractDAO  {

    String namespace="com.kitri.travelia.mapper.articleMapper";


    public List<Map<String, Object>> selectArticleList(Map<String, Object> map) throws Exception{
        return (List<Map<String, Object>>)selectList(namespace + ".selectArticleList", map);
    }

    public void insertBoard(Map<String, Object> map) throws Exception {
        insert(namespace + ".insertBoard", map);
    }

    public void updateHitCnt(Map<String, Object> map) throws Exception {
        update(namespace + ".updateHitCnt", map);
    }

    public Map<String, Object> selectArticleDetail(Map<String, Object> map) throws Exception {
        return (Map<String, Object>) selectOne(namespace + ".selectArticleDetail", map);
    }

}

