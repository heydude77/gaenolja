<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<table class="table table-hover">

  		<thead>
	     <tr>
    	  <th scope="col" style="width: 7%"><small>NO</small></th>
    	  <th scope="col" style="width: 50%"><small>제목</small></th>
     	  <th scope="col" style="width: 15%"><small>날짜</small></th>
     	  <th scope="col" style="width: 12%"><small >id</small></th>
     	  <th scope="col" style="width: 12%"><small>조회수</small></th>
	     </tr>
  		</thead>
  		<tbody>
     	<c:forEach var="l" items="${list }">
     		<tr>
     			<th scope="row">${l.NUM }</th>
     			<td>
     			<a href="${pageContext.servletContext.contextPath }/dogTraining/detail.do?NUM=${l.NUM}">
     			${l.SUB}
     			</a></td>
     			<td>${l.CDATE}</td>
                <td>${l.DTBOARDID}</td>
     			<td>${l.LOOKUP}</td>
     		</tr>
     		
     		
     	</c:forEach> 
     	<tr>
     
     	</tr>
    <a href="${pageContext.servletContext.contextPath }/dogTraining/write.do">글쓰기</a>
  </tbody>
</table>


