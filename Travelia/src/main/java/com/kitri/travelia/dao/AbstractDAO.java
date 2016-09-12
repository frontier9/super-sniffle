package com.kitri.travelia.dao;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

/**
 * Created by Kevin on 2016-09-01.
 */
public class AbstractDAO {
    protected Log log = LogFactory.getLog(AbstractDAO.class);
    String namespace="com.kitri.travelia.mapper.articleMapper";

    @Autowired
    private SqlSessionTemplate sqlSession;

    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()) {
            log.debug("\t QueryId \t: " + queryId);
        }
    }

    public Object insert(String queryId, Object params) {
        printQueryId(queryId);
        return sqlSession.insert(queryId, params);
    }

    public Object update(String queryId, Object params) {
        printQueryId(queryId);
        return sqlSession.update(queryId, params);
    }

    public Object delete(String queryId, Object params) {
        printQueryId(queryId);
        return sqlSession.delete(queryId, params);
    }

    public Object selectOne(String queryId) {
        printQueryId(queryId);
        return sqlSession.selectOne(queryId);
    }

    public Object selectOne(String queryId, Object params) {
        printQueryId(queryId);
        return sqlSession.selectOne(queryId, params);
    }

    public List selectList(String queryId) {
        printQueryId(queryId);
        return sqlSession.selectList(queryId);
    }

    public List selectList(String queryId, Object params) {
        printQueryId(queryId);
        return sqlSession.selectList(queryId, params);
    }

    public void updateBoard(Map<String, Object> map) throws Exception {
        update(namespace + ".updateArticle", map);
    }

    public void deleteBoard(Map<String, Object> map) throws Exception {
        delete(namespace + ".deleteArticle", map);
    }

    public Object selectPagingList(String queryId, Object params) {
        printQueryId(queryId);
        Map<String, Object> map = (Map<String, Object>)params;

        // 현재 페이지 번호와 한 페이지에 보여줄 행의 개수
        String strPageIndex = (String)map.get("PAGE_INDEX");
        String strPageRow = (String)map.get("PAGE_ROW");
        int nPageIndex = 0;
        int nPageRow = 20;

        if(!StringUtils.isEmpty(strPageIndex)) {
            nPageIndex = Integer.parseInt(strPageIndex) - 1;
        }

        if(!StringUtils.isEmpty(strPageRow)) {
            nPageRow = Integer.parseInt(strPageRow);
        }

        map.put("START", (nPageIndex * nPageRow) + 1);
        map.put("END", (nPageIndex * nPageRow) + nPageRow);

        return sqlSession.selectList(queryId, map);
    }
}