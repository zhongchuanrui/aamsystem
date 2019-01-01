package com.aim.dao;

import java.util.List;

import com.aim.pojo.News;

public interface NewsDao {

	int insertNews(News news);

	List<News> getAllNews();

	List<News> getshowNews();

	List<News> getblankNews();
	
	int deleteNews(int news_id);
	
	int modifyNews(int state,int news_id);
	
	int getNewCount();
	
	List<News> usergetAllNews(int currpage);

}
