package com.aim.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aim.dao.NewsDao;
import com.aim.pojo.News;
import com.aim.service.NewsService;

@Service("Newsserviceimpl")
public class NewsServiceImpl implements NewsService {

	@Resource
	NewsDao newsDao;

	@Override
	public int insertNews(News news) {
		return newsDao.insertNews(news);
	}

	@Override
	public List<News> getAllNews() {
		return newsDao.getAllNews();
	}

	@Override
	public List<News> getshowNews() {
		return newsDao.getshowNews();
	}

	@Override
	public List<News> getblankNews() {
		return newsDao.getblankNews();
	}

	@Override
	public int deleteNews(int news_id) {
		return newsDao.deleteNews(news_id);
	}

	@Override
	public int modifyNews(int state,int news_id) {
		return newsDao.modifyNews(state,news_id);
	}

	@Override
	public int getNewCount() {
		return newsDao.getNewCount();
	}

	@Override
	public List<News> usergetAllNews(int currpage) {
		return newsDao.usergetAllNews(currpage);
	}

}
