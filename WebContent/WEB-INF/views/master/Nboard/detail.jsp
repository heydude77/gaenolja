<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�۳���</title>
</head>
<body>


<table class="table table-hover">

  		<thead>
  		</thead>
  		<tbody>
	     <tr>
	     
    	  <th scope="row" style="width: 7%"><small>NO</small></th>
    	  <td>${read.BOARD_NUM}</td>
    	  </tr>
    	  <tr>
    	  <th scope="row" style="width: 50%"><small>����</small></th>
    	   <td>${read.BOARD_SUBJECT}</td>
    	   </tr>
    	   <tr>
     	  <th scope="row" style="width: 15%"><small>��¥</small></th>
     	    <td>${read.BOARD_DATE}</td>
     	    </tr>
     	    <tr>
     	  <th scope="row" style="width: 12%"><small>��ȸ��</small></th>
     	    <td>${read.BOARD_LOOKUP}</td>
	      </tr>
	      <th scope="row" style="width: 12%"><small>����</small></th>
	      <td>${read.BOARD_CONTENT}</td>
	      </tbody>
  		
  
     	
</table>
     	<div style="text-align: right">
     <a href="${pageContext.servletContext.contextPath }/Nboard/list.do" class="btn btn-primary">�������</a>
        <a href="${pageContext.servletContext.contextPath }/Nboard/write.do" class="btn btn-primary">�����ϱ�</a>
         <a href="${pageContext.servletContext.contextPath }/Nboard/write.do" class="btn btn-primary">�����ϱ�</a>
     </div>
     	
    </html>



