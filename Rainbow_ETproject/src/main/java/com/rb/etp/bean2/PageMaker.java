package com.rb.etp.bean2;

public class PageMaker {
	int totalCount;// 총 게시물 수
	int contentPage=10;//1페이지에 담길 게시물수
	int page;//현재페이지
	int totalPage;//페이지 전체 개수
	int countPage=10;//한화면에 출력될 페이지수
	int startPage;//시작페이지
	int endPage;//끝페이지
	
	int currentBlock;//현재블록

	int startBlock;// 처음 블록
	int endBlock;// 끝 블록
	int totalblock;//페이지 1묶음 ex)1~5페이지가 한묶음
	
	
	int pageRoll;//페이지를 묶을 개수
	
	
	//총게시물수 
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	//1페이지에 담길 게시물수
	public int getContentPage() {
		return contentPage;
	}

	public void setContentPage(int contentPage) {
		this.contentPage = contentPage;
	}

	//페이지 
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
	//한 화면에 출력될 페이지 수
	public int getCountPage() {
		return countPage;
	}

	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}

	//페이지를 묶을 개수
	public int getPageRoll() {
		return pageRoll;
	}

	public void setPageRoll(int pageRoll) {
		this.pageRoll = pageRoll;
	}

	

	//페이지 전체 개수
	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	//시작페이지
	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	//끝페이지
	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	//시작블록
	public int getStartBlock() {
		return startBlock;
	}

	
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}

	//끝 블록
	public int getEndBlock() {
		return endBlock;
	}

	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}

	
	//현재 블록
	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	//전체 블록
	public int getTotalblock() {
		return totalblock;
	}

	public void setTotalblock(int totalblock) {
		this.totalblock = totalblock;
	}
	
}
