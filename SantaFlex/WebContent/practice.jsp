<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>����ȭ ǥ����</title>

<script type="text/javascript">
String.prototype.trim=function(){
	var TRIM_PATTERN=/(^\s*)|(\s*$)/g; //  \s => ��� ����. /(^\s*)|(\s*$)/g : ���� ����� ���� ������ �����϶�
	return this.replace(TRIM_PATTERN,"");
}

function send(){
	var f=document.forms[0];
	var a="           �츮   ����    ";
	a=a.trim();
	alert(":"+a+":");

	// �̸�
	if(! /^[\uac00-\ud7a3]*$/g.test(f.name.value)){ //g: ������ġ, ^�� $�� *0���̻�, uac00~ud7a3�� �ѱ� �ڵ尪  , gi��ҹ��� ���о��� ������ġ
		alert("�̸��� ����� �Է��ϼ�");
		f.name.focus();
		return;
	}

	// ���̵�
	if(! /^[a-z][a-z0-9_$@#]{4,9}$/i.test(f.id.value)){ // ^ : �տ��� �˻�, $ : �ڿ��� �˻�, i ��ҹ��� ���� ����(������ �ҹ��ڸ� �����ϴ�)
		alert("���̵� ù���ڴ� �������̰� 5~10�ڸ� ����");
		f.id.focus();
		return;
	}

	//�н�����˻�(�����ڿ� 1�� �̻��� ����Ư������. 5~10)
	if(! /^(?=.*[a-z])(?=.*[_!@#$%^&*]|.*[0-9]).{4,9}$/i.test(f.pwd.value)){
		alert("�е����� Ư�����ڰ� �ʿ� ");
		f.pwd.focus();
		return;
	}			
	
	// ��¥ ���� �˻�

	if(! /[12][0-9]{3}-[0-9]{2}-[0-9]{2}/.test(f.birth.value)){ // �˻��� / ~ / �����ÿ� ������ ����. [12][0-9]{3} => ù���ڴ� 1�̳� 2�� �;��Ѵ�. �״������� 0~9�� 3���;��Ѵ�.
		alert("��������� yyyy-mm-dd �������� �Է��ؾ� ��!!!");
		f.birth.focus();
		return;
	}

	//���� ���� �˻�
	if(! /^[0-9]*$/.test(f.age.value)){ // * : 0���̻�(������ ���� �ʴ´�)
		alert("���̴� ���ڸ� ����");
		f.age.focus();
		return;
	}

	//�̹��� ���ϸ�
	if(! /(\.gif|\.png|\.jpg|\.jpeg)$/i.test(f.upload.value)){ // �ޱ��ڸ� �˻��ϸ� �Ǳ⶧���� $
		alert("�׸���..............")
		f.upload.focus();
		return;
	}

	// �޸𿡴� SELECT, INSERT ���� sql ���Ա���
	var p=/SELECT|INSERT|UPDATE|DELETE|ALTER|DROP/gi;
	if(p.test(f.memo.value)){
		alert("SELECT, INSERT, UPDATE, DELETE, ALTER,DROP �� sql�� ��� ����");
		f.memo.focus();
		return;
	}
	alert("����!!!");
}
</script>
</head>

<body>
<form action="">
	�̸� : <input type="text" name="name"><br/>
	���̵� : <input type="text" name="id"><br/>
	�н����� : <input type="text" name="pwd"><br/>
	���� : <input type="text" name="age"><br/>
	�������: <input type="text" name="birth"><br/>
	���� : <input type="file" name="upload"><br/>
	�޸�: <textarea rows="10" cols="60" name="memo"></textarea><br/>
	<input type="button" value="������" onclick="send();">
</form>
</body>
</html>