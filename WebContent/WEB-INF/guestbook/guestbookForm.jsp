<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>����</title>
    
    <style type="text/css">
        #wrap {
            width: 700px;
            margin: 0 auto 0 auto;
        }
        
        #comment{
            text-align :left;
        }
        
        #writeGestFrom, #listGestFrom{
            text-align :center;
        }
        
    </style>
    
    <script type="text/javascript">
        // �Է°� üũ
        function checkValue()
        {
            if(!document.gestbookInfo.guestbook_id.value){
                alert("�̸��� �Է��ϼ���.");
                return false;
            }
            
            if(!document.gestbookInfo.guestbook_password.value){
                alert("��й�ȣ�� �Է��ϼ���.");
                return false;
            }
            
            if(!document.gestbookInfo.guestbook_content.value){
                alert("������ �Է��ϼ���.");
                return false;
            }
        }
    
    </script>
    
</head>
<body>
 
    <br>
    <b><font size="6" color="gray">����</font></b>
    <hr size="1" width="700">
    <br>
    
<div id="wrap">    
 
    <!-- �� ��� �κ� ����-->
    <div id="writeGestFrom">
        <form name="gestbookInfo" method="post" action="GuestbookWriteAction.ge"
            onsubmit="return checkValue()" >
            <table width="700">
                <tr>
                    <td>�̸�</td>
                    <td><input type="text" name="guestbook_id"></td>
                    <td>��й�ȣ</td>
                    <td><input type="password" name="guestbook_password"></td>
                </tr>
                <tr><td colspan="4">&nbsp;</td></tr>
                <tr>
                    <td colspan="4">
                        <textarea rows="7" cols="80" name="guestbook_content"></textarea>
                    </td>
                </tr>
            </table>
            <br>
            <input type="submit" value="���">
        </form>
    </div>
    <!-- �� ��� �κ� ��-->
 
    <br><br>
    <!-- �� ��� �κ� ���� -->
    <div id="listGestFrom">
        <form method="post" name="listform">
            <input type="hidden" name="pro">
            <div id="comment">
                <hr size="1" width="700">
                <label>�̸�</label>&nbsp;&nbsp;&nbsp;
                <label>��¥</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#">[�亯]</a>&nbsp;
                <a href="#">[����]</a>&nbsp;
                <a href="#">[����]</a><br>
                 ���� <br>
                 <hr size="1" width="700">
            </div>
            
             <div id="pageForm">
                <c:if test="${startPage != 1}">
                    <a href='GuestbookListAction.ge?page=${startPage-1}'>[ ���� ]</a>
                </c:if>
                
                <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
                    <c:if test="${pageNum == spage}">
                        ${pageNum} 
                    </c:if>
                    <c:if test="${pageNum != spage}">
                        <a href='GuestbookListAction.ge?page=${pageNum}'>${pageNum} </a>
                    </c:if>
                </c:forEach>
                
                <c:if test="${endPage != maxPage }">
                    <a href='GuestbookListAction.ge?page=${endPage+1 }'>[����]</a>
                </c:if>
            </div> 

        </form>
     </div>
      <!-- �� ��� �κ� �� -->
           
</div>
     
</body>
</html>
