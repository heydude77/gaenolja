<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<form class="needs-validation"
	action="${pageContext.servletContext.contextPath }/dogTraining/write.do"
	method="post">
<h6 style="text-align: center;">���� �������� ������ Ʈ���̴� �Խ��� ��� �������Դϴ�.<br/><br/>
���� ���ε�� ���� �� ���������� ��Ź�帲�ϴ�.<br/><br/>
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
		<input type="file" class="form-control" name="upload">
</div>
<hr/>
<button class="btn btn-secondary btn-lg btn-block" type="submit" id="b">����ϱ�</button>

</form>


