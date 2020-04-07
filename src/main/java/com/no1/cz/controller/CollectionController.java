package com.no1.cz.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.no1.cz.domain.Books;
import com.no1.cz.domain.Collection;
import com.no1.cz.domain.User;
import com.no1.cz.service.BooksService;
import com.no1.cz.service.CollectionService;

@Controller
@RequestMapping("collection")
public class CollectionController {

	@Resource
	private CollectionService collectionService;
	
	@Resource
	private BooksService booksService;
	
	@RequestMapping("items")
	public String collectionItems(Model model, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		int userId = user.getUserId();
		List<Collection> collectionList = this.collectionService.selectByUser(userId);
		for(Collection coll : collectionList) {
			System.out.println(coll);
		}
		model.addAttribute("collectionList", collectionList);
		return "collection/collectionItems";
	}
	
	@RequestMapping("insert")
	public String saveCollection(Model model, @RequestParam("booksId") int booksId ,HttpServletRequest request) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			System.out.println(user);
			int userId = user.getUserId();
			System.out.println("拿到用户Id"+userId);
			List<Books> selectById = this.booksService.selectById(booksId);
			model.addAttribute("selectById", selectById);
			Collection collection = new Collection();
			collection.setUserId(user);
			this.collectionService.saveCollection(collection, selectById);
			return "redirect:/collection/items";
		}catch(Exception e) {
			e.printStackTrace();
			return "";
		}
		
	}
	
	@RequestMapping("delete")
	public String deleteCart(@Param("collectionId") int collectionId) {
		try {
			this.collectionService.deleteByCollectionId(collectionId);
			return "redirect:/collection/items";
		}catch(Exception e) {
			e.printStackTrace();
			return "";
		}
	}
	
}
