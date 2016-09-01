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

    @Resource(name="articleDAOimpl")
    private ArticleDaoImpl articleDao;

    @Override
    public List<Map<String, Object>> selectArticleList(Map<String, Object> map) throws Exception {
        return articleDao.selectArticleList(map);
    }
}
