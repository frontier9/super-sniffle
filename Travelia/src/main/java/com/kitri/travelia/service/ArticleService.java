package com.kitri.travelia.service;

import java.util.List;
import java.util.Map;

/**
 * Created by Kevin on 2016-09-01.
 */
public interface ArticleService {
    List<Map<String,Object>> selectArticleList(Map<String, Object> map) throws Exception;
    void insertBoard(Map<String, Object> map) throws Exception;
    Map<String, Object> selectArticleDetail(Map<String, Object> map) throws Exception;
    void updateArticle(Map<String, Object> map) throws Exception;
    void deleteArticle(Map<String, Object> map) throws Exception;
}
