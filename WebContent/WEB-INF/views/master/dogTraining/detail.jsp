<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�۳���</title>
</head>
<body>


<table class="table table-hover">

  		<thead>
  		</thead>
  		<tbody>
	     <tr>
	     
    	  <th scope="row" style="width: 7%"><small>NO</small></th>
    	  <td>${read.NUM}</td>
    	  </tr>
    	  <tr>
    	  <th scope="row" style="width: 50%"><small>����</small></th>
    	  <td>${read.SUB}</td>
    	   </tr>
    	   <tr>
     	  <th scope="row" style="width: 15%"><small>��¥</small></th>
     	  <td>${read.CDATE}</td>
     	    </tr>
     	    <tr>
     	  <th scope="row" style="width: 12%"><small>��ȸ��</small></th>
     	  <td>${read.LOOKUP}</td>
	      </tr>
	      <tr>
	      <th scope="row" style="width: 4%"><small>ID</small></th>
	      <td>${read.DTBOARDID}</td>
	      </tr>
	      <th scope="row" style="width: 12%"><small>����</small></th>
	      <td>${read.CON}</td>
	      </tbody>

     	
</table>


<section class="content container-fluid">
  <div class="col-lg-12">
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">��� �ۼ�</h3>
        </div>
        <div class="box-body">
            <div class="form-group">
                <label for="newReplyText">��� ����</label>
                <input class="form-control" id="CONTENT" name="CONTENT" placeholder="��� ������ �Է����ּ���">
            </div>
            <div class="form-group">
           <th scope="row"><small>�ۼ���</small></th>
           <td>${comment.ID }
            </div>
        </div>
        <div class="box-footer">
            <ul id="replies">

            </ul>
        </div>
        <div class="box-footer">
            <div class="text-center">
                <ul class="pagination pagination-sm no-margin">

                </ul>
            </div>
        </div>
    </div>
  </div>


</section>



     	<tr>
     <a href="${pageContext.servletContext.contextPath }/dogTraining.training.do">�������</a>
        <a href="${pageContext.servletContext.contextPath }">�����ϱ�</a>
         <a href="${pageContext.servletContext.contextPath }">�����ϱ�</a>
     
     	</tr>
    </html>



