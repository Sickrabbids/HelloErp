package com.rb.etp.services.supporter;

import java.io.File;
import java.util.Iterator;
import java.util.Random;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component
public class fileHelper {


	
	
	public  String fileUpload(MultipartHttpServletRequest mu) {
		String  filePath = "E:\\img\\";
		Iterator<String> iter = mu.getFileNames();
		MultipartFile Multf = null;
		Random rd = new Random();
		String fileNOri = null;
		String fileNCut = null;
		String nameCount = null;
		String fileNSys = null;
		String succs="first.png";//처음 이미지이름 

		File file = new File(filePath);
		if (!file.exists()) {
			file.mkdirs();
		}

		while (iter.hasNext()) {
			Multf = mu.getFile(iter.next());
			if (!Multf.isEmpty()) {
				fileNOri = Multf.getOriginalFilename();
				fileNCut = fileNOri.substring(fileNOri.lastIndexOf("."));
				nameCount = System.currentTimeMillis() + rd.nextInt() + "";
				fileNSys =  nameCount.substring(8, 13)+fileNOri;
				System.out.println("파일이름이 무엇인고?" + fileNSys);
				}
			try {
				if(fileNOri!=null) {
				file = new File(filePath + fileNSys);
				Multf.transferTo(file);
				System.out.println("파일 업로드 성공");
				succs=fileNSys;
				}else 
				System.out.println("아이고 맙소사 파일이름이없어...");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("파일 업로드 중 에러 ");
			}
			
		}
		return succs;

	}
	public boolean fileDelete(String fileName) {
		  String path;
		  path="E:\\img\\";
		  File file = new File(path);
		  if(file.exists() == true){
			  	file.delete();
		
	}
						return false;

}
	
	
	
}//class_end
