package com.no1.cz.domain;


import java.sql.Date;
import java.util.List;



import lombok.Data;
@Data

public class ylBook {
//	yl_book_id	int
	private Integer ylbookId;
//	yl_book_name	varchar
	private String ylbookName;
//	yl_book_writer	varchar
	private String ylbookWriter;
//	yl_book_date	date
	
	private Date ylbookDate;
//	yl_book_concern	varchar
	private String ylbookConcern;
//	yl_book_price	double
	private Double ylbookPrice;
//	yl_book_category	int
	private ylBookCategory ylbookCategory;
	
	
	private List<ylBookWriter> ylbookWriterList;
	private List<ylBookConcern> ylbookConcernList;
	


}
