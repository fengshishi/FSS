package com.no1.cz.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="/file")
public class FileController{

	private static final Logger LOG = LoggerFactory.getLogger(FileController.class);

@RequestMapping(value="upload")
	@ResponseBody
	public String upload(@RequestParam("myFile") MultipartFile file){
		if(file.isEmpty()){
			return "文件为空";
}
// 获取文件名
String fileName = file.getOriginalFilename();
LOG.info("上传的文件名为：" + fileName);
// 获取文件的后缀名
String suffixName=fileName.substring(fileName.lastIndexOf("."));
LOG.info("上传文件的后缀名：" + suffixName);
// 文件上传路径
String filePath = "F:/myl/uploadfile/";
// 使用随机字符作为文件名称
fileName = (UUID.randomUUID()+"").replace("-", "") + suffixName;
// 上传后的文件路径名全称
File dest = new File(filePath + fileName);
// 检测是否存在目录
if(!dest.getParentFile().exists()){
	dest.getParentFile().mkdirs();
}

try{
	file.transferTo(dest);
	return "上传成功";
}catch(IOException e){
	e.printStackTrace();
}
		return "上传失败";
}
}

