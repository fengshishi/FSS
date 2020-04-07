package com.no1.cz.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.cz.domain.Books;
import com.no1.cz.domain.BooksCategory;
import com.no1.cz.domain.Business;
import com.no1.cz.service.BooksCategoryService;
import com.no1.cz.service.BooksService;
import com.no1.cz.service.CollectionService;

@Controller
@RequestMapping("/books")
public class BooksController {

	private static final Logger LOG = LoggerFactory.getLogger(FileController.class);

	@Resource
	private BooksService booksService;
	
	@Resource
	private CollectionService collectionService;

	@Resource
	private BooksCategoryService booksCategoryService;

	@RequestMapping("findAll")
	public String findAllBooks(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
		PageHelper.startPage(pn, 12);
		List<Books> booksList = this.booksService.findAll();
		PageInfo<Books> p = new PageInfo<>(booksList);
		System.out.println(booksList);
		model.addAttribute("booksList", booksList);
		model.addAttribute("page", p);
		return "books/books";
	}
	@RequestMapping("findBooks")
	public String findBooks(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
		PageHelper.startPage(pn, 7);
		List<Books> booksList2 = this.booksService.findAll();
		PageInfo<Books> p = new PageInfo<>(booksList2);
		System.out.println(booksList2);
		model.addAttribute("booksList2", booksList2);
		model.addAttribute("page", p);
		return "/user/showBooks";
	}

	@RequestMapping("find")
	public String findAll(Model model,HttpServletRequest request,@Param("categoryName") String categoryName,
			@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
		Business business = (Business) request.getSession().getAttribute("business1");
		System.out.println(business);
		int businessId = business.getBusinessId();
		PageHelper.startPage(pn, 12);
		List<Books> booksList1 = this.booksService.findBooksByBusinessId(businessId);
		PageInfo<Books> p = new PageInfo<>(booksList1);
		model.addAttribute("booksList1", booksList1);
		System.out.println(booksList1);
		List<BooksCategory> booksCategoryName = this.booksCategoryService.findBooksCategoryName();
		model.addAttribute("booksCategoryName", booksCategoryName);
		model.addAttribute("page", p);
		this.booksCategoryService.findCategoryId(categoryName);
		return "books/InsertBooks";
	}


	@RequestMapping("select")
	public String findPartBooks(Model model , HttpServletRequest request,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
		String str = request.getParameter("search");
		PageHelper.startPage(pn, 20);
		List<Books> partBooksList = this.booksService.findPartBooks(str);
		PageInfo<Books> p = new PageInfo<>(partBooksList);
		model.addAttribute("partBooksList", partBooksList);
		model.addAttribute("page", p);
		return "books/selectBooks";
	}


	@RequestMapping("findDetails")
	public String findOne(Model model, int booksId) {
		System.out.println("这本书的Id"+booksId);
		Books books =this.booksService.findOneBook(booksId);
		model.addAttribute("books", books);
		System.out.println("这本书的详细信息"+books);
		return "books/booksDetails";
	}

	@RequestMapping("insert")
	public String saveBooks(Model model,Books books, @RequestParam("file") MultipartFile file,HttpServletRequest request) {
		Business business = (Business) request.getSession().getAttribute("business1");
		System.out.println(business);
		int businessId = business.getBusinessId();
		System.out.println("zhixingdaozheli");
		System.out.println("插入方法的businessId"+businessId);
		model.addAttribute("books", books);
		System.out.println(books);
		if(file.isEmpty()){
			return "文件为空";
			}
		
		// 获取文件名
		String fileName = file.getOriginalFilename();
		LOG.info("上传的文件名为：" + fileName);
		// 获取文件的后缀名
		String suffixName=fileName.substring(fileName.lastIndexOf("."));
		LOG.info("上传文件的后缀名：" + suffixName);
		// 文件上传路径file:F:/myl/eclipse/myl_workspace/fss/src/main/resources/static/images/books/
		String filePath = "F:/myl/eclipse/myl_workspace/fss/src/main/resources/static/images/books/";
		
		// 使用随机字符作为文件名F:/eclipse-workspace/goods/src/main/resources/static/images/books/
		fileName = (UUID.randomUUID()+"").replace("-", "") + suffixName;
		// 上传后的文件路径名全称
		String Url = filePath + fileName;
		File dest = new File(Url);
		
		model.addAttribute("filePath", filePath);
		model.addAttribute("fileName", fileName);
		System.out.println("fileName:"+fileName+"filePath:"+filePath);
		
		System.out.println(books);
		// 检测是否存在目录
		if(!dest.getParentFile().exists()){
			dest.getParentFile().mkdirs();
		}

		try{
			books.setBooksImages("/images/books/" + fileName);
			this.booksService.saveBooks(books, businessId);	
			file.transferTo(dest);
			model.addAttribute("Url", Url);
			System.out.println("Url"+Url);
			//return "succ";
		}catch(Exception e){
			e.printStackTrace();
			//return "def";
		}
		
		return "redirect:/books/find";
		
		}

	@RequestMapping("delete")
	public String deleteBook(Model model,@Param("booksId") int booksId) {
		this.booksService.delete(booksId);
		//this.collectionService.deleteByBookId(booksId);
		return "redirect:/books/find";
	}
	

	@RequestMapping("show")
	public String show() {
		return "books/showBooks";
	}
	
	@RequestMapping("update")
	public String update(int booksId, String booksIntroduce) {
		this.booksService.updateBooks(booksId, booksIntroduce);
		return "redirect:/books/find";
	}

	//去修改页面
	@RequestMapping("test")
	public String go(Model model, int booksId) {
		Books books =this.booksService.findOneBook(booksId);
		model.addAttribute("books", books);
		return "books/test";

	}
}

