<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<body>



<table>
	<div class="container-fluid">
		<div class="col-lg-12">
			<!--�Խ��� ���� -->
			<div class="col-lg-12"></div>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							��������
							<div class="panel-body">
								<form action="${pageContext.servletContext.contextPath}/Nboard/write.do" method="post">
									<div class="row form-group">
										<label class="col-lg-2">����</label>
										<div class="col-lg-12">
											<input type="text" class="form-control" id="BOARD_SUBJECT" name="BOARD_SUBJECT">
										</div>
									</div>
									<div class="row form-group">
										<label class="col-lg-2">����</label>
										<div class="col-lg-12">
											<textarea class="form-control" id="BOARD_CONTENT" name="BOARD_CONTENT"></textarea>
										</div>
									</div>

									<button type="submit">�Ϸ�</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</table>

</head>

</body>
</html>