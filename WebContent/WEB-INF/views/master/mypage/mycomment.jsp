<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>데려가시개(분양)</h2>
<table class="table table-hover">
  		<thead>
	     <tr>
     	  <th style="text-align: center;">분양유무</th>
    	  <th style="text-align: center;">댓글 내용</th>
    	  <th style="text-align: center;">제목</th>
    	  <th style="text-align: center;">작성자</th>
     	  <th style="text-align: center;">댓글작성 날짜</th>
	     </tr>
  		</thead>
  		<tbody>
	     	<c:forEach var="p" items="${pacmt }">
	     		<tr>
					<c:choose>
						<c:when test="${p.CHOICE == 1 }">
							<td style="text-align: center;">[분양중]</td>
						</c:when>
						<c:otherwise>
							<td style="text-align: center;">[분양완료]</td>
						</c:otherwise>
					</c:choose>
					<td style="text-align: center;">${p.COMMENTS }</td>
	     			<td style="text-align: center;"><a href="${pageContext.servletContext.contextPath }/detail.do?no=${p.NO }">${p.TITLE }</a></td>
					<td style="text-align: center;">${p.TALKER }</td>
	     			<td style="text-align: center;"><fmt:formatDate value="${p.REGDAY }" /></small></td>
	     		</tr>
	     	</c:forEach>
		</tbody>
</table>
<h2>같이가시개</h2>
<table class="table table-hover">
  		<thead>
	     <tr>
    	  <th style="width:80px; text-align: center;">지역구</th>
    	  <th style="width:50px; text-align: center;">댓글내용</th>
    	  <th style="width:150px; text-align: center;">제목</th>
    	  <th style="width:80px; text-align: center;">작성자</th>
     	  <th style="width:80px; text-align: center;">댓글작성 날짜</th>
	     </tr>
  		</thead>
  		<tbody>
  			<c:forEach var="tc" items="${tocmt }">
     		<tr>
				<td style="text-align: center;">${tc.AREA }</td>
				<td style="text-align: center;">${tc.CONTENT }</td>
     			<td style="text-align: center;"><a href="${pageContext.servletContext.contextPath }/together/detail.do?no=${tc.NO }">${tc.TITLE }</a></td>
     			<td style="text-align: center;">${tc.NICK_1 }</td>
				<td style="text-align: center;"><fmt:formatDate value="${tc.LEFTDATE }" /></td>
     		</tr>
     		</c:forEach>
	  </tbody>
</table>