<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<form action="${pageContext.servletContext.contextPath }/together/selectboard.do" method="post">
	<div class="accordion" id="accordionExample">
		<div class="card">
			<div class="card-header" id="headingOne">
				<h5 class="mb-0">
					<button class="btn btn-link collapsed" type="button"
						data-toggle="collapse" data-target="#collapseOne"
						aria-expanded="false" aria-controls="collapseOne"
						style="align-content: center;">������ �������ּ���</button>
				</h5>
			</div>
			<div id="collapseOne" class="collapse show"
				aria-labelledby="headingOne" data-parent="#accordionExample">
				<div class="card-body">
					<a onclick="area(10);" href="${pageContext.servletContext.contextPath }/together/selectboard.do?area=10" class="badge badge-light"
						style="opacity: 0.5;">������</a> <a onclick="area(20);" href="#"
						class="badge badge-light" style="opacity: 0.5;">������</a> <a
						onclick="area(30);" href="#" class="badge badge-light"
						style="opacity: 0.5;">���ϱ�</a> <a onclick="area(40);" href="#"
						class="badge badge-light" style="opacity: 0.5;">������</a> <a
						onclick="area(50);" href="#" class="badge badge-light"
						style="opacity: 0.5;">���Ǳ�</a> <a onclick="area(60);" href="#"
						class="badge badge-light" style="opacity: 0.5;">������</a> <a
						onclick="area(70);" href="#" class="badge badge-light"
						style="opacity: 0.5;">���α�</a> <a onclick="area(80);" href="#"
						class="badge badge-light" style="opacity: 0.5;">��õ��</a> <a
						onclick="area(90);" href="#" class="badge badge-light"
						style="opacity: 0.5;">�����</a> <a onclick="area(100);" href="#"
						class="badge badge-light" style="opacity: 0.5;">������</a> <a
						onclick="area(110);" href="#" class="badge badge-light"
						style="opacity: 0.5;">���빮��</a> <a onclick="area(120);" href="#"
						class="badge badge-light" style="opacity: 0.5;">���۱�</a> <a
						onclick="area(130);" href="#" class="badge badge-light"
						style="opacity: 0.5;">������</a> <a onclick="area(140);" href="#"
						class="badge badge-light" style="opacity: 0.5;">���빮��</a> <a
						onclick="area(150);" href="#" class="badge badge-light"
						style="opacity: 0.5;">���ʱ�</a> <a onclick="area(160);" href="#"
						class="badge badge-light" style="opacity: 0.5;">������</a> <a
						onclick="area(170);" href="#" class="badge badge-light"
						style="opacity: 0.5;">���ϱ�</a> <a onclick="area(180);" href="#"
						class="badge badge-light" style="opacity: 0.5;">���ı�</a> <a
						onclick="area(190);" href="#" class="badge badge-light"
						style="opacity: 0.5;">��õ��</a> <a onclick="area(200);" href="#"
						class="badge badge-light" style="opacity: 0.5;">��������</a> <a
						onclick="area(210);" href="#" class="badge badge-light"
						style="opacity: 0.5;">��걸</a> <a onclick="area(220);" href="#"
						class="badge badge-light" style="opacity: 0.5;">����</a> <a
						onclick="area(230);" href="#" class="badge badge-light"
						style="opacity: 0.5;">���α�</a> <a onclick="area(240);" href="#"
						class="badge badge-light" style="opacity: 0.5;">�߱�</a> <a
						onclick="area(250);" href="#" class="badge badge-light"
						style="opacity: 0.5;">�߷���</a>
				</div>
			</div>
		</div>
	</div>
	<hr />
	<button type="submit" id="result"
		class="btn btn-secondary btn-lg btn-block">�˻�</button>


	<script>
		/* 		$("ul#area li").on("click", function() {
		 $("#area").css("color","black");
		 console.log($("#ar").val());

		 }); */

		var area = function(target) {
			var area = target;
			$("#result").on("click", function() {

				console.log(area);

				area = null;
			});

		}
	</script>
</form>

