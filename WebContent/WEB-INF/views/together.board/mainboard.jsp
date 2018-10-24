<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<form
	action="${pageContext.servletContext.contextPath }/together/selectboard.do"
	method="post">
	<div class="accordion" id="accordionExample">
		<div class="card">
   		 <div class="card-header" id="headingTwo">
   		   <h5 class="mb-0">
    	       <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">������ �������ּ���</button>
	       </h5>
		 </div>
	    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
				<div class="card-body">
					<a onclick="area(10);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=10" class="badge badge-light" style="opacity: 0.5;">������</a> 
					<a onclick="area(20);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=20" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(30);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=30"	class="badge badge-light" style="opacity: 0.5;">���ϱ�</a>
					<a onclick="area(40);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=40" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(50);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=50"	class="badge badge-light" style="opacity: 0.5;">���Ǳ�</a>
					<a onclick="area(60);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=60" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(70);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=70" class="badge badge-light" style="opacity: 0.5;">���α�</a>
					<a onclick="area(80);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=80" class="badge badge-light" style="opacity: 0.5;">��õ��</a>
					<a onclick="area(90);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=90" class="badge badge-light" style="opacity: 0.5;">�����</a>
					<a onclick="area(100);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=100" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(110);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=110" class="badge badge-light" style="opacity: 0.5;">���빮��</a>
					<a onclick="area(120);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=120" class="badge badge-light" style="opacity: 0.5;">���۱�</a>
					<a onclick="area(130);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=130" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(140);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=140" class="badge badge-light" style="opacity: 0.5;">���빮��</a>
					<a onclick="area(150);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=150" class="badge badge-light" style="opacity: 0.5;">���ʱ�</a>
					<a onclick="area(160);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=160" class="badge badge-light" style="opacity: 0.5;">������</a>
					<a onclick="area(170);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=170" class="badge badge-light" style="opacity: 0.5;">���ϱ�</a>
					<a onclick="area(180);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=180" class="badge badge-light" style="opacity: 0.5;">���ı�</a>
					<a onclick="area(190);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=190" class="badge badge-light" style="opacity: 0.5;">��õ��</a>
					<a onclick="area(200);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=200" class="badge badge-light" style="opacity: 0.5;">��������</a>
					<a onclick="area(210);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=210" class="badge badge-light" style="opacity: 0.5;">��걸</a>
					<a onclick="area(220);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=220" class="badge badge-light" style="opacity: 0.5;">����</a>
					<a onclick="area(230);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=230" class="badge badge-light" style="opacity: 0.5;">���α�</a>
					<a onclick="area(240);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=240" class="badge badge-light" style="opacity: 0.5;">�߱�</a>
					<a onclick="area(250);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=250" class="badge badge-light" style="opacity: 0.5;">�߷���</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	
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

