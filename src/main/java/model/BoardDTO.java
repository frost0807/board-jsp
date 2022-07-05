package model;

import java.util.Calendar;

public class BoardDTO {
	private int id;
	private int writerId;
	private String title;
	private String content;
	private Calendar writtenDate;
	private Calendar updatedDate;
	
	public boolean equals(Object o) {
		if(o instanceof BoardDTO) {
			return this.id==((BoardDTO)o).id;
		} else {
			return false;
		}
	}

	public int getId() {
		return id;
	}

	public int getWriterId() {
		return writerId;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public Calendar getWrittenDate() {
		return writtenDate;
	}

	public Calendar getUpdatedDate() {
		return updatedDate;
	}


	public void setId(int id) {
		this.id = id;
	}

	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setWrittenDate(Calendar writtenDate) {
		this.writtenDate = writtenDate;
	}

	public void setUpdatedDate(Calendar updatedDate) {
		this.updatedDate = updatedDate;
	}
}
