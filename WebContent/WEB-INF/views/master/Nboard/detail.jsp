<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

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
    	  <th scope="row" style="width: 7%"><small>ID</small></th>
    	   <td>${read.BOARD_ID}</td>
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
      
       <c:if test="${sessionScope.userInfo.ID eq 'admin' }">
         <a href="${pageContext.servletContext.contextPath }/Nboard/delete.do?no=${read.BOARD_NUM}" class="btn btn-primary">�����ϱ�</a>
       </c:if>
     </div>
     	
    </html>



