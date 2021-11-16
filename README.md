# SantaFlex_Jsp
<h2>JSP를 활용한 MVC 웹 프레임워크 구현 프로젝트</h2>

- 동적 웹페이지를 생성하기 위한 도구로 Servlet과 JSP를 활용하여 MVC 패턴 프레임워크를 구현한 프로젝트
- 웹 어플리케이션 서버에서 동작될 로그인, 회원가입, 이벤트 초대, Q&A 게시판, 감사메시지 등의 기능 구현
- MySQL 쿼리를 통한 기능 테이블 생성 및 컬럼별 관계 수립, DB 관리

<h3>구조</h3>

<img width="1088" alt="20211024_113036" src="https://user-images.githubusercontent.com/78725674/138577998-30baa86c-c68e-4567-9f20-154fd291d029.png">


<br>
<h3>테이블</h3>

![ER_diagram](https://user-images.githubusercontent.com/78725674/138577301-6201c92c-61d3-4301-9061-3f5e091c24ce.png)

<br>
<h3>프로젝트 시연</h3><br>

1. 메인페이지<br><br>
![image](https://user-images.githubusercontent.com/78725674/142082587-9a04571d-169a-4a56-b194-04ecfcc4237c.png) <br><br><br>

2. 선물 담기 페이지 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142082599-d27b49cf-7dc9-42cb-b43a-2483409842c2.png) <br><br><br>

3. 로그인 및 마이페이지 <br><br>

- 로그인하기 전 마이페이지 접근 제한 알림창 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083073-c37d5864-c21d-4ac4-a950-9f096e21e46d.png) <br><br><br>

- 알림창 확인 클릭시 회원가입 페이지로 이동 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083094-48d1b5e7-f0b0-43df-a62d-4bb9941ea765.png) <br><br><br>

- 회원가입했던 아이디와 비밀번호로 로그인 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083285-b8f248f0-505c-46a4-a758-08dfe8735d17.png) <br><br><br>
 
- 로그인 시 마이페이지 내 정보 보기 화면으로 이동 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083314-c28827c4-4a26-4a17-92ff-1d2a82a26591.png) <br><br><br>

- 내 정보 수정 (업데이트 기능) <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083338-e6b234ba-3db0-4a67-b0af-38103732e360.png) <br><br><br>

4. 초대장 <br><br>
 
- 초대장 만들기 (이벤트 추가 기능) <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083362-1501efb5-a936-4163-8cc0-ac09d55a0e34.png)<br>
![image](https://user-images.githubusercontent.com/78725674/142083374-ebd3637d-f3e3-4d4a-8a8d-66e3ed211353.png) <br><br><br>

- 이벤트 내역 보기 페이지 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083400-1c923c06-ed64-47fa-aade-10c1c7c5cff1.png) <br><br><br>

5. QnA

- FAQ 게시판 페이지 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083412-0a2285ba-33c2-4c40-95a1-b7f164fbacb4.png) <br><br><br>

- 1:1 문의하기 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083425-a0c375c9-ad1c-4431-aed4-9d4008967f27.png) <br><br><br>

- 게시글 수정  <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083453-aeee019a-66a1-4bed-931a-601330bd7c3a.png) <br>
![image](https://user-images.githubusercontent.com/78725674/142083464-c94ab041-f0aa-47ec-966d-6811b330479f.png) <br>
![image](https://user-images.githubusercontent.com/78725674/142083472-714d9f5d-4a56-40c9-89ab-70c5b9dedf32.png) <br><br><br>

- 게시글 삭제 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083482-dd446be9-2c45-42cc-b10c-a81e949af68e.png) <br><br><br>

- 조회수 기능 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083492-fc0679cc-258f-4534-a3c8-2607767cc614.png) <br><br><br>

6. 메시지 기능

- 감사 메시지 작성 페이지 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083534-d67c98fd-a9ef-4a60-bbe4-135842b4b8c4.png) <br><br><br>

- 메시지 목록 페이지 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083582-ef9371f6-c8c0-426c-9167-d315351cb18c.png) <br><br><br>

7. 구글 API 번역 기능 <br><br>
![image](https://user-images.githubusercontent.com/78725674/142083605-0eff0f5a-77f3-48cd-a559-7665d6c3d992.png) <br>
![image](https://user-images.githubusercontent.com/78725674/142083614-23c7f40c-6631-4d74-9015-12bf4fc96e63.png) <br><br><br>

