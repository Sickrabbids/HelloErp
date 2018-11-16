package com.rb.etp.services.supporter;

import java.util.HashMap;
import org.springframework.stereotype.Component;


@Component
public class paging {

public String pagingcount(double count) {
	int totalcount = 0;
	StringBuilder make=new StringBuilder();	
	totalcount = (int) Math.ceil(count/10 );
	
	make.append("<li><a href='#'onclick='paging(1)' aria-label='Previous'> <span aria-hidden='true'>&laquo;</span></a></li>");
	for(int i=0;i<totalcount ;i++) {
		make.append("<li><a href='#' onclick='paging("+(i+1)+")'>"+(i+1)+"</a></li>");
	}
	make.append("<li><a href='#' onclick='paging("+totalcount+")' aria-label='Next'> <span aria-hidden='true'>&raquo;</span></a></li>");
	return make.toString();
}

public HashMap<String, String> pagingSQLhelp(int pageNum) {
	HashMap <String, String> hmap=new HashMap <String, String> () ;
	
	int a ;
	int b = 0;
	a=pageNum*10;
	if(pageNum==1) {
		 b=0;
	}else if(pageNum!=1) {
		 b=pageNum*10-10;
	}
	hmap.put("a",Integer.toString(a));
	hmap.put("b",Integer.toString(b));
	return hmap;
	
}


}
