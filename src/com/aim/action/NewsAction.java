package com.aim.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aim.pojo.News;
import com.aim.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsAction {

	@Resource(name = "Newsserviceimpl")
	private NewsService newsService;

	@RequestMapping("/getallnews")
	@ResponseBody
	public List<News> getAllNews() {
		
		
		return newsService.getAllNews();
	}

	@RequestMapping("/insertnews")
	@ResponseBody
	public int insertNews(News news) {
		return newsService.insertNews(news);
	}

	@RequestMapping("/getshownews")
	@ResponseBody
	public List<News> getshowNews() {
		return newsService.getshowNews();
	}

	@RequestMapping("/getblanknews")
	@ResponseBody
	public List<News> getblankNews() {
		return newsService.getblankNews();
	}

	@RequestMapping("/deletenews")
	@ResponseBody
	public int deleteNews(int news_id) {
		return newsService.deleteNews(news_id);
	}

	@RequestMapping("/modifynews")
	@ResponseBody
	public int modifyNews(int state, int news_id) {
		return newsService.modifyNews(state, news_id);
	}
	
	
	@RequestMapping("/usergetallnews")
	@ResponseBody
	public Map<Object, Object> usergetAllNews(int currpage) {
		
		Map<Object, Object> result =  new HashMap<Object, Object>();
		result.put("news", newsService.usergetAllNews((currpage-1)*10));
		
		int all =newsService.getNewCount();	
		
		if(all%10 ==0){
			result.put("totalpage", all/10);
		}else{			
			result.put("totalpage", all/10+1);
		}
		
		return result;
	}
}
