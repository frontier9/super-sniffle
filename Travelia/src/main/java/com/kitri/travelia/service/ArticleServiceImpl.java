package com.kitri.travelia.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kitri.travelia.dao.ArticleDaoImpl;
import com.sun.istack.internal.logging.Logger;

/**
 * Created by Kevin on 2016-09-01.
 */
@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
    Logger log = Logger.getLogger(this.getClass());

    @Resource(name="articleDAOImplementation")
    private ArticleDaoImpl articleDao;

    @Override
    public List<Map<String, Object>> selectArticleList(Map<String, Object> map) throws Exception {
        return articleDao.selectArticleList(map);
    }

    @Override
    public void insertBoard(Map<String, Object> map) throws Exception {
        articleDao.insertBoard(map);
    }

    @Override
    public Map<String, Object> selectArticleDetail(Map<String, Object> map) throws Exception {
        articleDao.updateHitCnt(map);
        Map<String, Object> resultMap = articleDao.selectArticleDetail(map);

        return resultMap;
    }

    @Override
    public void updateArticle(Map<String, Object> map) throws Exception {
        articleDao.updateBoard(map);
    }

    @Override
    public void deleteArticle(Map<String, Object> map) throws Exception {
        articleDao.deleteBoard(map);
    }
}
