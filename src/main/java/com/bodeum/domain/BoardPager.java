package com.bodeum.domain;

import lombok.Data;

@Data
public class BoardPager {

	public static final int PAGE_SCALE=10;
	
	public static final int BLOCK_SCALE=10;
	
	private int curPage;
	private int prevPage;
	private int nextPage;
	private int totPage;
	private int totBlock;
	private int curBlock;
	private int prevBlock;
	private int nextBlock;
	private int pageBegin;
	private int pageEnd;
	private int blockBegin;
	private int blockEnd;
	
	public BoardPager(int count, int curPage) {
		curBlock=1;
		this.curPage=curPage;
		setTotPage(count);
		setPageRange();
		setTotBlock();
		setBlockRange();
	}
	
	public void setBlockRange() {
		//현 페이지가 몇번째 페이지인지 계산
		curBlock=(int)Math.ceil((curPage-1)/BLOCK_SCALE)+1;
		//페이지블록 시작, 끝 계산
		blockBegin=(curBlock-1)*BLOCK_SCALE+1;
		//페이지블록 끝 번호
		blockEnd=blockBegin+BLOCK_SCALE-1;
		//마지막 페이지 블록이 범위를 넘지 않게 함
		if(blockEnd>totPage)blockEnd=totPage;
		//이전페이지
		prevPage=(curPage==1)?1:(curBlock-1)*BLOCK_SCALE;
		//다음페이지
		nextPage=curBlock>totBlock?(curBlock*BLOCK_SCALE) : (curBlock*BLOCK_SCALE)+1;
		//페이지 범위 넘지 않게 함
		if(nextPage>=totPage)nextPage=totPage;
	}
	
	public void setPageRange() {
		pageBegin=(curPage-1)*PAGE_SCALE+1;
		pageEnd=pageBegin+PAGE_SCALE-1;
	}
	
	//페이지 올림처리
	public void setTotPage(int count) {
		totPage=(int)Math.ceil(count*1.0/PAGE_SCALE);
	}
	
	public int getTotBlock() {
		return totBlock;
	}
	//페이지 갯수 계산
	public void setTotBlock() {
		totBlock=(int)Math.ceil(totPage/BLOCK_SCALE);
	}
	

	
}
