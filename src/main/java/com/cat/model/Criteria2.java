package com.cat.model;

public class Criteria2 {
	
    /* 현재 페이지 번호 */
    private int pageNum;
    
    /* 페이지 표시 개수 */
    private int amount;
    
    /* 페이지 skip */
    private int skip;
    
    /* 검색 타입 */
    private String type;
    
    /* 검색 키워드 */
    private String keyword;
    
	/* 카테고리 번호 */
    private String cate_NO;
    
    /* 카테고리 이름 */
    private String cate_NM;
    /* Criteria 생성자 */
    public Criteria2(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
        this.skip = (pageNum -1) * amount;
    }
    
    /* Criteria 기본 생성자 */
    public Criteria2(){
        this(1,10);
    }
    
    /* 검색 타입 데이터 배열 변환 */
	/* 검색 조건(type) 데이터를 배열로 변화한 데이터로 반환해주는 getTypeArr() 메서드만 선언 */
	/*MyBatis xml의 쿼리에서 #{typeArr} 파라미터를 호출하기 위해서 "getTypeArr()"메서드를 호출하기 때문에
	typeArr변수를 선언하지 않았음에도 해당 변수가 존재하는 것처럼 처리
	*/ 
    
    public String[] getTypeArr() {
        return type == null? new String[] {} : type.split("");
    }

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.skip = (pageNum -1)*this.amount;
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.skip = (this.pageNum -1)*amount;
		this.amount = amount;
	}
		

	public int getSkip() {
		return skip;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}	
	

	public String getCate_NO() {
		return cate_NO;
	}

	public void setCate_NO(String cate_NO) {
		this.cate_NO = cate_NO;
	}
	
	

	public String getCate_NM() {
		return cate_NM;
	}

	public void setCate_NM(String cate_NM) {
		this.cate_NM = cate_NM;
	}

	@Override
	public String toString() {
		return "Criteria2 [pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip + ", type=" + type
				+ ", keyword=" + keyword + ", cate_NO=" + cate_NO + ", cate_NM=" + cate_NM + "]";
	}
    
    
    
    

}
