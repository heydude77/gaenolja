<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form
	action="${pageContext.servletContext.contextPath }/together/selectboard.do"
	method="post">
	<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          ������ �������ּ���
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
					<a onclick="area(������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=������" class="badge badge-light" style="opacity: 0.5;">������</a> 
					<a onclick="area(������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=������" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(���ϱ�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���ϱ�"	class="badge badge-light" style="opacity: 0.5;">���ϱ�</a>
					<a onclick="area(������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=������" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(���Ǳ�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���Ǳ�"	class="badge badge-light" style="opacity: 0.5;">���Ǳ�</a>
					<a onclick="area(������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=������" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(���α�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���α�" class="badge badge-light" style="opacity: 0.5;">���α�</a>
					<a onclick="area(��õ��);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=��õ��" class="badge badge-light" style="opacity: 0.5;">��õ��</a>
					<a onclick="area(�����);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=�����" class="badge badge-light" style="opacity: 0.5;">�����</a>
					<a onclick="area(������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=������" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(���빮��);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���빮��" class="badge badge-light" style="opacity: 0.5;">���빮��</a>
					<a onclick="area(���۱�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���۱�" class="badge badge-light" style="opacity: 0.5;">���۱�</a>
					<a onclick="area(������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=������" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(���빮��);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���빮��" class="badge badge-light" style="opacity: 0.5;">���빮��</a>
					<a onclick="area(���ʱ�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���ʱ�" class="badge badge-light" style="opacity: 0.5;">���ʱ�</a>
					<a onclick="area(������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=������" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(���ϱ�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���ϱ�" class="badge badge-light" style="opacity: 0.5;">���ϱ�</a>
					<a onclick="area(���ı�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���ı�" class="badge badge-light" style="opacity: 0.5;">���ı�</a>
					<a onclick="area(��õ��);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=��õ��" class="badge badge-light" style="opacity: 0.5;">��õ��</a>
					<a onclick="area(��������);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=��������" class="badge badge-light" style="opacity: 0.5;">��������</a>
					<a onclick="area(��걸);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=��걸" class="badge badge-light" style="opacity: 0.5;">��걸</a>
					<a onclick="area(����);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=����" class="badge badge-light" style="opacity: 0.5;">����</a>
					<a onclick="area(���α�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=���α�" class="badge badge-light" style="opacity: 0.5;">���α�</a>
					<a onclick="area(�߱�);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=�߱�" class="badge badge-light" style="opacity: 0.5;">�߱�</a>
					<a onclick="area(�߷���);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=�߷���" class="badge badge-light" style="opacity: 0.5;">�߷���</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<table class="table table-hover">
  		<thead>
	     <tr>
    	  <th scope="col" style="width: 3%"><small>NO</small></th>
     	  <th scope="col" style="width: 10%"><small>����</small></th>
    	  <th scope="col" style="width: 35%"><small>����</small></th>
      	  <th scope="col" style="width: 20%"><small>�ۼ���</small></th>
     	  <th scope="col" style="width: 10%"><small>��¥</small></th>
     	  <th scope="col" style="width: 9%"><small >��õ</small></th>
     	  <th scope="col" style="width: 9%"><small>��ȸ��</small></th>
	     </tr>
  		</thead>
  		<tbody>
     	<c:forEach var="l" items="${list }">
    	 		<tr>
     			<th scope="row">${l.NO }</th>
     			<td><small>${l.AREA }</small></td>
     			<td>
				<a href="${pageContext.servletContext.contextPath  }/together/detail.do?no=${l.NO }">     			
     			${l.TITLE }</a>
     			</td>
     			<td>-</td>
     			<td>${l.day }</td>
     			<td>${l.GOOD }</td>
     			<td>${l.LOOKUP }</td>
     			</tr>
     	</c:forEach>
    	
  </tbody>
</table>
	
	<a href="${pageContext.servletContext.contextPath }/together/new.do">
	<button type="button" class="btn btn-outline-success" style="position: absolute;right: 0;">
	�� ����</button></a>

	<script>

		var area = function(target) {
			var area = target;
			$("${pageContext.servletContext.contextPath }/together/selectboard.do?area=10result").on("click", function() {

				console.log(area);

				area = null;
			});

		}
	</script>
</form>

