<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<c:if test="${joinFailed==1}">
	<script>
		window.alert("회원가입에 실패하였습니다. 다시 작성해주세요.");
	</script>
</c:if>
<form action="${pageContext.servletContext.contextPath}/joinFormHandle.do" method="post" enctype="multipart/form-data">

<div class="container">
	<div class="row  justify-content-center">	
		<div class="col-md-8 offset-md-2">
			<div class="alert alert-warning row" role="alert">
			  로그인 정보 입력
			</div>		
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">아이디</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="id"	placeholder="아이디" onchange="checkId(this)" id="id" ><span id="checkId" style="color:white;"></span>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">비밀번호</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="pw" id="pw"
						placeholder="비밀번호">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">비밀번호확인</label>
				<div class="col-sm-6">
					<input type="password" class="form-control"
						id="pwConfirm" placeholder="비밀번호 확인" onchange="confirmPw()">
						<span id="error"></span>
				</div>
			</div>
		</div>
		
<!--  ============================================================ -->
		<div class="col-md-8 offset-md-2">
			<div class="alert alert-warning row" role="alert">
			개인 정보 입력
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">이름</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="name"
						placeholder="이름">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">닉네임</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" name="nickname"	placeholder="닉네임" onchange="checkNick(this)" id ="nick"><span id="checkNick" style="color:white;"></span>
				</div>				
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">주소</label>
				<div class="col-sm-6">
					<button type="button" 
						onclick="addressPopUp()" >주소 입력</button>
					<input type="text" class="form-control" name="address" id = "address" placeholder="주소">
					<input type="text" class="form-control" name="address2"  id = "address2" placeholder="상세주소">
				</div>
			</div>			
		</div>
		
		
			<div class="col-md-8 offset-md-2">			
			<div class="alert alert-warning row" role="alert">
			강아지 정보
			</div>
			 <div class="row">
			   <div class="col-4 col-sm-4">
		        <label class="">강아지 사진</label><br>
				<img src="${pageContext.servletContext.contextPath }/image/noimage.png"  class="img-thumbnail" id="preview">
				<input type="file" type = "file" class="btn-outline-info" name="dogProfile" id="dogProfile">
				
		      </div>
		      <div class="col-8 col-sm-8">
		        	<div class="form-group row">
						<label  class="col-sm-3 col-form-label">강아지 이름</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="dogName"
								placeholder="강아지 이름">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-3 col-form-label">강아지 견종</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" name="dogType"
								placeholder="강아지견종">
						</div>			
					</div>
					<div class="form-group row">
						<label class="col-sm-3 col-form-label">강아지 성별</label>
						<div class="col-sm-6">
							<select class="custom-select" required name="dogGender">
						      <option value="">성별을 선택해 주세요</option>
						      <option value="수컷">수컷</option>
						      <option value="암컷">암컷</option>						  
						    </select>
															
						</div>			
					</div>
		      </div>
		      </div>			
			
			</div>
			<div class="col-md-8 offset-md-2">			
				<div class="alert alert-warning row" role="alert">
				하고싶은 말!
				</div>
			<input type="text" placeholder="하고싶은말을 적어주세요!" style="width:600px" name ="usercomment">			
			</div>
			
			<div class="offset-md-2 justify-content-center">	
				<br>			
				<button type="submit" class="btn btn-primary">회원가입 신청</button>
			</div>
			
			<br>
			<br>
			<br>
			<br>
			<br>
</div>
		
</div>

</form>






<script>
	var confirmPw = function(pw){
		console.log("confrimPw function");
		var pw = document.getElementById("pw").value;
		var confirm = document.getElementById("pwConfirm").value;		
		if(pw != confirm){
			document.getElementById("error").innerHTML = "비밀번호 값이 일치하지 않음";
			$("#error").css("color","red");
			$("#pwConfirm").val("");				
		}
	}
	
	var checkId = function (id) {
		var input =id.value;
				
		console.log("id function");
		var url = "/gaenolja/main/validate.do";		
		
		var param = {
				"mode"  : "id",
				"input" : input			
		};	
		
		$.get(url, param, function(rst) {	 			
			if(rst==true){
				$("#checkId").html("사용가능한 아이디 입니다.");
				$("#checkId").css("color","blue");
			}else{
				$("#checkId").html("이미 사용중인 아이디 입니다.");
				$("#checkId").css("color","red");
				$("#id").val("");
			}
		
		});
	};
	
	var checkNick = function (nick) {
		var input =nick.value;
		
		var url = "/gaenolja/main/validate.do";		
		
		var param = {
				"mode"  : "nick",
				"input" : input			
		};	
		
		$.get(url, param, function(rst) {	 			
			if(rst==true){
				$("#checkNick").html("사용가능한 닉네임 입니다.");
				$("#checkNick").css("color","blue");
			}else{
				$("#checkNick").html("이미 사용중인 닉네임 입니다.");
				$("#checkNick").css("color","red");
				$("#nickname").val("");
			}
		
		});
	};
	
	$("#dogProfile").on("change",function(){
		var f = new FileReader();
		f.onload= function(e){
			$("#preview").attr("src", e.target.result);
		}
		f.readAsDataURL(this.files[0]);
	});
	
	var addressPopUp = function(){
		
		new daum.Postcode({
	        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		            var fullAddr = ''; // 최종 주소 변수
		            var extraAddr = ''; // 조합형 주소 변수
		
		            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                fullAddr = data.roadAddress;
		
		            } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                fullAddr = data.jibunAddress;
		            }
		
		            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		            if(data.userSelectedType === 'R'){
		                //법정동명이 있을 경우 추가한다.
		                if(data.bname !== ''){
		                    extraAddr += data.bname;
		                }
		                // 건물명이 있을 경우 추가한다.
		                if(data.buildingName !== ''){
		                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		            }
		
		            // 우편번호와 주소 정보를 해당 필드에 넣는다.
		            document.getElementById('address').value = data.zonecode; //5자리 새우편번호 사용
		            document.getElementById('address').value = fullAddr;
		
		            // 커서를 상세주소 필드로 이동한다.
		            document.getElementById('address2').focus();
		        }
	   		}).open();
		}
	

</script>




