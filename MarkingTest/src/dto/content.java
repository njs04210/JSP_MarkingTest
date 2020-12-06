package dto;

import java.io.Serializable;

public class content implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String contentId;
	private String title;
	private String text;
	private String date;
	private String filename;
	
	
	public content() {
		super();
	}
	
	public content(String contentId) {
		this.contentId = contentId;
	}
	
	public String getContentId() {
		return contentId;
	}

	public void setContentId(String contentId) {
		this.contentId = contentId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
}
