package com.util;

import java.util.Map;

public class PageBean {
	
	public static int PAGE_IETM =5;//��ǰҳ��
    
	// ÿҳ��ʾ�����
	private int pageSize = PAGE_IETM;
	// ��ǰҳ
	private int currentPage = 1;
	// �ܼ�¼��
	private int totalCount ;
	// ��ʼȡ��ݵ��к�
	private int offset;
	
	
	public static void setPageMap(Map<String,Object> map,PageBean page){
		if(page!=null){
			map.put("page", true);
			map.put("offset", page.getOffset());
			map.put("pageSize", page.getPageSize());
		}
	}
	
	
	
	public PageBean(){}
	
	
	public PageBean(int offset) {
		super();
		this.offset = offset;
	}
	
	public PageBean(int offset,int pageSize) {
		super();
		this.offset = offset;
		this.pageSize = pageSize;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getOffset() {
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	
	
	
	
}
