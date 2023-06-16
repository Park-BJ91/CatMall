package com.cat.model;

public class Criteria2 {
	
    /* ���� ������ ��ȣ */
    private int pageNum;
    
    /* ������ ǥ�� ���� */
    private int amount;
    
    /* ������ skip */
    private int skip;
    
    /* �˻� Ÿ�� */
    private String type;
    
    /* �˻� Ű���� */
    private String keyword;
    
	/* ī�װ� ��ȣ */
    private String cate_NO;
    
    /* ī�װ� �̸� */
    private String cate_NM;
    /* Criteria ������ */
    public Criteria2(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
        this.skip = (pageNum -1) * amount;
    }
    
    /* Criteria �⺻ ������ */
    public Criteria2(){
        this(1,10);
    }
    
    /* �˻� Ÿ�� ������ �迭 ��ȯ */
	/* �˻� ����(type) �����͸� �迭�� ��ȭ�� �����ͷ� ��ȯ���ִ� getTypeArr() �޼��常 ���� */
	/*MyBatis xml�� �������� #{typeArr} �Ķ���͸� ȣ���ϱ� ���ؼ� "getTypeArr()"�޼��带 ȣ���ϱ� ������
	typeArr������ �������� �ʾ������� �ش� ������ �����ϴ� ��ó�� ó��
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
