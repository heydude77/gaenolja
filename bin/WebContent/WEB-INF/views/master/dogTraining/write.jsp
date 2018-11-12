<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${err eq 'on' }">
	<script>window.alert("���� ����ó�� ���� �ʾҽ��ϴ�.\n�ʼ������� �ٽ��ѹ� Ȯ�����ּ���.")</script>
</c:if>
<form class="needs-validation"
	action="${pageContext.servletContext.contextPath }/dogTraining/write.do"
	method="post" enctype="multipart/form-data">
<h6 style="text-align: center;">���� �������� ������ Ʈ���̴� �Խ��� ��� �������Դϴ�.<br/><br/>
���� ���ε�� �������� �ƴϸ� , ���� ���� ��ϵ��� �ʽ��ϴ�.<br/><br/>
(*) �� �ʼ� �׸��Դϴ�. �ٽ� �ѹ� Ȯ�����ּ���.
</h6>	

<hr/>	
<div class="mb-3">
		<label for="text">(*)�� �� <span class="text-muted"></span> <small
			id="size1">(0/15)</small>
		</label> <input type="text" class="form-control" id="title" name="title"
			placeholder="15���� ���ܷ� �ۼ����ּ���" autocomplete="off">
</div>
<hr/>
<div class="mb-3">
		<label for="text">(*)�� ��</label><small id="size2">(0/500)</small>
		<textarea class="form-control" id="content" name="content" aria-label="With textarea"
			style="width: 99%; height: 100px; resize: none;" autocomplete="off"></textarea>
</div>
<hr/>
<div class="mb-3">
		<label for="text">���� ���ε�  </label>
		<input type="file" class="form-control" name="attach">
</div>
<hr/>
<button class="btn btn-secondary btn-lg btn-block" type="submit" id="b">����ϱ�</button>

</form>

<script>

$("#title").on("keyup", function() {
	var len = $("#title").val().length;
	console.log(len);

	var html = "(" + len + "/15)";
	document.getElementById("size1").innerHTML = html;

	if (len >= 15) {
		$("#b").prop("disabled", true);
	} else {
		$("#b").prop("disabled", false);
	}

});

$("#content").on("keyup", function() {
	var len = $("#content").val().length;
	console.log(len);

	var html = "(" + len + "/500)";
	document.getElementById("size2").innerHTML = html;

	if (len >= 500) {
		$("#b").prop("disabled", true);
	} else {
		$("#b").prop("disabled", false);
	}

});


</script>


