package dao;

import java.util.ArrayList;

import dto.content;

public class ContentsRepository {
	
	private ArrayList<content> listOfContents = new ArrayList<content>();
	private static ContentsRepository instance = new ContentsRepository(); 
	
	public static ContentsRepository getInstance() {
		return instance;
	}
	
	public ContentsRepository() {
		content content1 = new content("P1234");
		content1.setTitle("Welcome");
		content1.setText("정처기.come 입니다.<br>2020-11-28일자 실기 가채점 신청 : 12월 17일까지 가능<br><hr>ID: guest<br>password : guest1234<br>로그인 후,<br>임의의 고유 아이디로 신청해주세요.");
		content1.setDate("2020-12-05");
		content1.setFilename("compass.png");
		
		listOfContents.add(content1);
	}
	
	public ArrayList<content> getAllContents() {
		return listOfContents;
	}
	
	public content getContentById(String contentId) {
		content contentById = null;
		
		for (int i = 0; i < listOfContents.size(); i++) {
			content content = listOfContents.get(i);
			if (content != null && content.getContentId() != null && content.getContentId().equals(contentId)) {
				contentById = content;
				break;
			}
		}
		return contentById;
	}
	public void addContent(content content) {
		listOfContents.add(content);
	}

}
