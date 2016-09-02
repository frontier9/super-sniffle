package com.kitri.travelia.dao;

import java.util.List;
import java.util.Map;

/**
 * Created by Kevin on 2016-09-01.
 */

public interface ArticleDAO {

    List<Map<String,Object>> selectArticleList(Map<String, Object> map);
}
