package kr.co.DB;

import java.io.Serializable;

public class NoticeDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int num;
	private int menu;
	private String author;
    private String title;
	private String content;
	private String writeday;
	private int readcnt;
	private int reproot;
	private int repstep;
	private int repindent;
	
	public NoticeDTO() {
		// TODO Auto-generated constructor stub
	}

	public NoticeDTO(int num, int menu, String author, String title, String content, String writeday, int readcnt,
			int reproot, int repstep, int repindent) {
		super();
		this.num = num;
		this.menu = menu;
		this.author = author;
		this.title = title;
		this.content = content;
		this.writeday = writeday;
		this.readcnt = readcnt;
		this.reproot = reproot;
		this.repstep = repstep;
		this.repindent = repindent;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getMenu() {
		return menu;
	}

	public void setMenu(int menu) {
		this.menu = menu;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriteday() {
		return writeday;
	}

	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

	public int getReadcnt() {
		return readcnt;
	}

	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}

	public int getReproot() {
		return reproot;
	}

	public void setReproot(int reproot) {
		this.reproot = reproot;
	}

	public int getRepstep() {
		return repstep;
	}

	public void setRepstep(int repstep) {
		this.repstep = repstep;
	}

	public int getRepindent() {
		return repindent;
	}

	public void setRepindent(int repindent) {
		this.repindent = repindent;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + num;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		NoticeDTO other = (NoticeDTO) obj;
		if (num != other.num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "NoticeDTO [num=" + num + ", menu=" + menu + ", author=" + author + ", title=" + title + ", content="
				+ content + ", writeday=" + writeday + ", readcnt=" + readcnt + ", reproot=" + reproot + ", repstep="
				+ repstep + ", repindent=" + repindent + "]";
	}
	
	
	
}