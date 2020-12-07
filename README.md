# JSP_MarkingTest
JSP/Servlet을 이용한 시험 채점 사이트
***

MarkingTest 구현 기능
-------------
-  로그인, 채점 신청, 채점수행
-  관리자 전용 게시글 입력,수정,삭제
-  글 입력시 사진 업로드

개발 환경 및 기술
-------------
- eclipse
- apache-tomcat-9.0.37
- mysql 8.0.20
- jsp/servlet 
- javaScript
- JSTL
- JavaBeans
- bootstrap.min.css
- font-awsome.css
- reset.css
- prism-okaidia.min.css
- jquery

WEB-INF/lib 추가
-------------
-  cos.jar  //사진 업로드를 위한 라이브러리
-  commons-fileupload-1.4.jar
-  commons-io-2.8.0.jar
-  jstl-1.2.jar //jstl
-  mysql-connector-java-8.0.22jar  // sql connector

Servers/Tomcat v9.0 Server at localhost-config/tomcat-user.xml 유저 설정
-------------
```xml
<tomcat-users version="1.0" xmlns="http://tomcat.apache.org/xml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd">
  <role rolename="admin" />
  <role rolename="guest" />
  <user username="admin" password="admin1234" roles="admin" />
  <user username="guest" password="guest1234" roles="guest" />
</tomcat-users>
```

answersheet table db CREATE 쿼리문
-------------
<pre><code>
CREATE TABLE IF NOT EXISTS answersheet (sheet_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, guest_id VARCHAR(20) NOT NULL, num1 VARCHAR(100) not null, num2 VARCHAR(100) not null, num3 varchar(100) not null, num4 varchar(100) not null, num5 varchar(100) not null, num6 varchar(100) not null, num7 varchar(100) not null, num8 varchar(100) not null, num9 varchar(100) not null, num10 varchar(100) not null, num11 varchar(100) not null, num12 VARCHAR(100) not null, num13
varchar(100) not null, num14 varchar(100) not null, num15 varchar(100) not null, num16 varchar(100) not null, num17 varchar(100) not null, num18 varchar(100) not null, num19 varchar(100) not null, num20 varchar(100) not null, created DATETIME NOT NULL, score int)default CHARSET=UTF8;
</code></pre>


answersheet table db INSERT 쿼리문
-------------
<pre><code>
INSERT INTO answersheet(guest_id, num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20, created) values ('kim', '가', '나', '다', '라', '마', '바', '사', '아', '자', '차', '카', '타', '파', '하', 'A', 'B', 'C', 'D', 'E', 'F', NOW());
INSERT INTO answersheet(guest_id, num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12,num13,num14,num15,num16,num17,num18,num19,num20, created) values ('park', '가', '나', '다', '라', '마', '바', '사', '아', '자', '차', '카', '타', '파', '하', 'A', 'B', 'C', 'D', 'E', 'F', NOW());
</code></pre>


