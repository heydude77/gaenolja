<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
</body>
</html>




<!--
<table class="Nboard/list">
<tr>
                 <col width="7"/> 
                 <col width="50"/> 
                 <col width="15"/> 
                 <col width="12"/> 
                 <col width="12"/> 

  		</thead>

<th scope ="row">NO</th>
<td>${l.BOARD_NUM }</td>

<th scope ="row">����</th>
<td>${l.BOARD_SUBJECT }</td>
<th scope ="row">��¥</th>
<td>${l.BOARD_DATE }</td>
<th scope ="row">��õ</th>
<td>${l.BOARD_COUNT }</td>
<th scope ="row">��ȸ��</th>
<td>${l.BOARD_LOOKUP }</td>

<td colspan="4">${l.BOARD_CONTENTS}</td>
  		<tbody>

<a href="#this" class="btn" id="list">�������</a>
    <a href="#this" class="btn" id="update">�����ϱ�</a>
     
    <script type="text/javascript">
        $(document).ready(function(){
            $("list").on("click", function(e){ //���
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("update").on("click", function(e){  //����
                e.preventDefault();
                fn_openBoardUpdate();
            });
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/Nboard/list.do' />");
            comSubmit.submit();
        }
         
        function fn_openBoardUpdate(){
            var idx = "${map.IDX}";
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/Nboard/update.do' />");
            comSubmit.addParam("IDX", idx);
            comSubmit.submit();}
            !-->
