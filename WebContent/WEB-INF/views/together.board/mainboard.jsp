<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<form>
	<label for="seoul">����</label>
	<div class="form-row">
		<div class="form-group col-md-3">
			<select id="area" class="form-control">
				<option selected value="">���� ��ü</option>
				<option value="������">������</option>
				<option value="������">������</option>
				<option value="���ϱ�">���ϱ�</option>
				<option value="������">������</option>
				<option value="���Ǳ�">���Ǳ�</option>
				<option value="������">������</option>
				<option value="���α�">���α�</option>
				<option value="��õ��">��õ��</option>
				<option value="�����">�����</option>
				<option value="������">������</option>
				<option value="���빮��">���빮��</option>
				<option value="���۱�">���۱�</option>
				<option value="������">������</option>
				<option value="���빮��">���빮��</option>
				<option value="���ʱ�">���ʱ�</option>
				<option value="������">������</option>
				<option value="���ϱ�">���ϱ�</option>
				<option value="���ı�">���ı�</option>
				<option value="��õ��">��õ��</option>
				<option value="��������">��������</option>
				<option value="��걸">��걸</option>
				<option value="����">����</option>
				<option value="���α�">���α�</option>
				<option value="�߱�">�߱�</option>
				<option value="�߷���">�߷���</option>
			</select>
		</div>
	</div>
	
	
	
	
	
	<script>
	$("#area").on("click",function(){
		
	console.log( $("#area").val() );
	var area = 	$("#area").val();
		
		
	});
	
	
	
	</script>
</form>

