<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정규화 표현식</title>

<script type="text/javascript">
String.prototype.trim=function(){
	var TRIM_PATTERN=/(^\s*)|(\s*$)/g; //  \s => 요게 공백. /(^\s*)|(\s*$)/g : 앞의 공백과 뒤의 공백을 제거하라
	return this.replace(TRIM_PATTERN,"");
}

function send(){
	var f=document.forms[0];
	var a="           우리   나라    ";
	a=a.trim();
	alert(":"+a+":");

	// 이름
	if(! /^[\uac00-\ud7a3]*$/g.test(f.name.value)){ //g: 완전일치, ^앞 $뒤 *0개이상, uac00~ud7a3은 한글 코드값  , gi대소문자 구분없이 완전일치
		alert("이름을 제대로 입력하쇼");
		f.name.focus();
		return;
	}

	// 아이디
	if(! /^[a-z][a-z0-9_$@#]{4,9}$/i.test(f.id.value)){ // ^ : 앞에만 검사, $ : 뒤에만 검사, i 대소문자 구분 안함(없으면 소문자만 가능하다)
		alert("아이디 첫문자는 영문자이고 5~10자만 가능");
		f.id.focus();
		return;
	}

	//패스워드검사(영문자와 1자 이상의 숫자특수문자. 5~10)
	if(! /^(?=.*[a-z])(?=.*[_!@#$%^&*]|.*[0-9]).{4,9}$/i.test(f.pwd.value)){
		alert("패드워드는 특수문자가 필요 ");
		f.pwd.focus();
		return;
	}			
	
	// 날짜 형식 검사

	if(! /[12][0-9]{3}-[0-9]{2}-[0-9]{2}/.test(f.birth.value)){ // 검사방법 / ~ / 슬러시와 슬러시 사이. [12][0-9]{3} => 첫글자는 1이나 2가 와야한다. 그다음에는 0~9가 3번와야한다.
		alert("생년월일은 yyyy-mm-dd 형식으로 입력해야 함!!!");
		f.birth.focus();
		return;
	}

	//나이 형식 검사
	if(! /^[0-9]*$/.test(f.age.value)){ // * : 0개이상(제한을 두지 않는다)
		alert("나이는 숫자만 가능");
		f.age.focus();
		return;
	}

	//이미지 파일만
	if(! /(\.gif|\.png|\.jpg|\.jpeg)$/i.test(f.upload.value)){ // 뒷글자만 검사하면 되기때문에 $
		alert("그림만..............")
		f.upload.focus();
		return;
	}

	// 메모에는 SELECT, INSERT 등의 sql 삽입금지
	var p=/SELECT|INSERT|UPDATE|DELETE|ALTER|DROP/gi;
	if(p.test(f.memo.value)){
		alert("SELECT, INSERT, UPDATE, DELETE, ALTER,DROP 등 sql문 사용 금지");
		f.memo.focus();
		return;
	}
	alert("성공!!!");
}
</script>
</head>

<body>
<form action="">
	이름 : <input type="text" name="name"><br/>
	아이디 : <input type="text" name="id"><br/>
	패스워드 : <input type="text" name="pwd"><br/>
	나이 : <input type="text" name="age"><br/>
	생녀월일: <input type="text" name="birth"><br/>
	파일 : <input type="file" name="upload"><br/>
	메모: <textarea rows="10" cols="60" name="memo"></textarea><br/>
	<input type="button" value="보내기" onclick="send();">
</form>
</body>
</html>