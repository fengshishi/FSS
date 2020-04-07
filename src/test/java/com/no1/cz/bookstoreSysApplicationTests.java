package com.no1.cz;


import java.text.SimpleDateFormat;
import java.util.Calendar;

import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.cz.domain.ylBook;
import com.no1.cz.domain.ylBookDate;
import com.no1.cz.domain.ylBookWriter;
import com.no1.cz.mapper.ylBookDateMapper;
import com.no1.cz.mapper.ylBookMapper;
import com.no1.cz.mapper.ylBookWriterMapper;



@RunWith(SpringRunner.class)
@SpringBootTest
public class bookstoreSysApplicationTests {

	@Test
	public void contextLoads() {
	}
	
	@Autowired
	private ylBookMapper ylbookMapper;
	
	//查询所有，分页
	@Test
	public void findAll() {
		List<ylBook> ylbookList = this.ylbookMapper.findAll();
		PageHelper.startPage(1, 5);//从第一页开始查，每页5条数据
		PageInfo<ylBook> pageInfo = new PageInfo<ylBook>(ylbookList);
		for (ylBook ylBook : pageInfo.getList()) {
			System.out.println(ylBook);
			System.out.println("当前页码"+pageInfo.getPageNum());
			System.out.println("总页码"+pageInfo.getPages());
			System.out.println("总记录数"+pageInfo.getTotal());
			System.out.println("在页面连续显示的页码");
			int[] nums = pageInfo.getNavigatepageNums();
			for(int i : nums) {
				System.out.println(" "+i);
			}
		}
	
	}
	//通过id查询
	@Test
	public void findById() {
		ylBook ylbook = this.ylbookMapper.findById(16);
		System.out.println(ylbook);
	}
	@Test
	public void findByName() {
		List<ylBook> findnameList = this.ylbookMapper.findByName("的世界");
		for(ylBook ylBook : findnameList) {
			System.out.println(ylBook);
		}
		
	}
	
	
	//作者操作
	@Autowired
	private ylBookWriterMapper ylbookWriterMapper;
	@Test
	public void findByBook() {
		List<ylBookWriter> ylbookWriter = this.ylbookWriterMapper.findByBook(3);
		System.out.println(ylbookWriter);
	}
	@Test
	public void findall() {
		List<ylBookWriter> writerList = this.ylbookWriterMapper.findAll();
		for (ylBookWriter writer : writerList) {
			System.out.println(writer);
		}
	}
	@Test
	public void Insert() {
		ylBookWriter ylbookWriter = new ylBookWriter();
		ylbookWriter.setYlwriterName("添加作者");
		ylbookWriter.setYlwriterGender("添加性别");
		ylbookWriter.setYlwriterAge(12);
		ylbookWriter.setYlwriterNationality("添加国籍");
		this.ylbookWriterMapper.insert(ylbookWriter);
	}
	
	@Test
	public void update() {
		ylBookWriter ylbookWriter = new ylBookWriter();
		ylbookWriter.setYlwriterId(2);
		ylbookWriter.setYlwriterName("修改2");
		ylbookWriter.setYlwriterGender("男");
		ylbookWriter.setYlwriterAge(22);
		ylbookWriter.setYlwriterNationality("中国");
		this.ylbookWriterMapper.update(ylbookWriter);
	}
	
	//对应Service中@Resource注解
	@Autowired
	private ylBookDateMapper ylbookDateMapper;
	
	//对应Service中@Transactional注解
	@Test
	public void findAlldate() {
		List<ylBookDate> ylbookDateList = this.ylbookDateMapper.findAll();
		for (ylBookDate ylbookDate : ylbookDateList) {
			System.out.println(ylbookDate);
		}
	}
	
	@Test
	public void findByIddate() {
		List<ylBookDate> ylbookDate = this.ylbookDateMapper.findById(12);
		System.out.println(ylbookDate);
	}

	
	
	@Test
	public void deletedate() {
		this.ylbookDateMapper.deleteById(19);
	}
	
	
	
	@Test
	public void testCalendar() {
		Calendar calendar = Calendar.getInstance();
//		calendar.set(Calendar.YEAR, 1997);
//		calendar.set(Calendar.MONTH, 10);
//		calendar.set(Calendar.DATE, 11);
		calendar.set(1997, 10, 11);
		System.out.println(new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime()));
	}
	

}
