<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 로그인 Modal-->
<div class="modal fade" id="log-in">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">
					<span style="color: #643691;">IZONE</span> 로그인
				</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>

			<!-- Modal body -->
			<div class="modal-body">

				<form action="#" name="izone-sign-in" method="post" id="signInForm"
					style="margin-bottom: 0;">
					<table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">
								<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userId" id="signInId"
								class="form-control tooltipstered" maxlength="14"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="최대 14자"></td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="signInPw"
								name="userPw" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="최소 8자"></td>
						</tr>
						
						<!-- 자동 로그인 체크박스 -->
						<tr>
							<td>
								<input type="checkbox" id="auto-login" name="autoLogin"> 자동로그인 
							</td>
						</tr>
						
						<tr>
							<td style="padding-top: 10px; text-align: center">
								<p><strong>로그인해주세요</strong></p>
							</td>
						</tr>
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;"><input
								type="button" value="로그인" class="btn form-control tooltipstered" id="signIn-btn"
								style="background-color: #643691; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
							</td>
						</tr>
						<tr>
							<td
								style="width: 100%; text-align: center; colspan: 2; margin-top: 24px; padding-top: 12px; border-top: 1px solid #ececec">

								<a class="btn form-control tooltipstered" data-toggle="modal"
								href="#sign-up"
								style="cursor: pointer; margin-top: 0; height: 40px; color: white; background-color: orange; border: 0px solid #388E3C; opacity: 0.8">
									회원가입</a>
							</td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 회원가입 Modal -->
<div class="modal fade" id="sign-up" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">
					<span style="color: #643691;">IZONE</span>회원 가입
				</h4>
				<button type="button" class="close" data-dismiss="modal">×</button>

			</div>

			<div class="modal-body">

				<form action="<c:url value='/user/register'/>" name="signup" id="signUpForm" method="post"
					style="margin-bottom: 0;">
					<table
						style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">
								<p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="idChk"></span></p>
							</td>
								
							
						</tr>
						<tr>
							<td><input type="text" name="userId" id="user_id"
								class="form-control tooltipstered" maxlength="14"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="숫자와 영어로 4-10자">
								</td>
							
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" id="password"
								name="userPw" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="영문과 특수문자를 포함한 최소 8자"></td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" id="password_check"
								name="pw_check" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
								placeholder="비밀번호가 일치해야합니다."></td>
						</tr>

						<tr>
							<td style="text-align: left">
								<p><strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="userName" id="user_name"
								class="form-control tooltipstered" maxlength="6"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="한글로 최대 6자"></td>
						</tr>
						
						<%-- 
						<tr>
							<td style="text-align: left">
								<p><strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="email" name="userEmail" id="user_email"
								class="form-control tooltipstered" 
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="ex) izone@produce.com"></td>
						</tr>
						--%>

						<tr>
							<td style="padding-top: 10px; text-align: center">
								<p><strong>회원가입하셔서 WIZONE이 되어보세요~~!</strong></p>
							</td>
						</tr>
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;"><input
								type="button" value="회원가입" 
								class="btn form-control tooltipstered" id="signup-btn"
								style="background-color: #643691; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
							</td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
	
	//start Jquery
	$(function() {
		
		const getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
		const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
		const getName= RegExp(/^[가-힣]+$/);
		//const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
		let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
		
		//회원가입 검증
		
		//ID 입력값 검증
		$("#user_id").on('keyup', function() { //keyup : 키보드에서 손을 뗐을 때
			if($("#user_id").val() === ""){
				$("#user_id").css("background.color", "pink");
				$("#idChk").html('<b style="font-size:14px; color:red;">[아이디는 필수 정보예요!]</b>');
				chk1 = false;
			}
			//아이디 유효성 검사
			else if(!getIdCheck.test($("#user_id").val())){  //getIdCheck의 값이 정규표현식에 어긋난다면
				$("#user_id").css("background.color", "pink");
				$("#idChk").html('<b style="font-size:14px; color:red;">[영문자와 숫자 4-10자로 작성하세요]</b>');
				chk1 = false;
			}
		
			// ID 중복확인 비동기 처리
			else{
				
				//id 중복확인 통신을 위해 id값을 가져오기
				const id = $(this).val();
				console.log(id);
				
				//클라이언트에서 서버와 통신하는 ajax함수(비동기 통신)
				$.ajax({
					type:"POST", //서버에 전송하는 Http방식
					url: "/user/checkId", //서버 요청 URL
					headers: {  //요청 헤더 정보
						"Content-Type" : "application/json"
					},
					dataType : "text", //서버로부터 응답받을 데이터의 형태
					data : id, //서버로 전송할 데이터
					success : function(result) { //함수의 매개변수는 통신성공시 데이터가 저장될 곳
						console.log("통신성공 : "+result);
						if(result === "OK"){
							$("#user_id").css("background-color","aqua");
							$("#idChk").html('<b style="font-size:14px; color:green;">[아이디 사용이 가능합니다]</b>');
							chk1 = true;
						} else{
							$("#user_id").css("background-color","pink");
							$("#idChk").html('<b style="font-size:14px; color:red;">[아이디가 중복되었습니다]</b>');
							chk1 = false;
						}
					},
					error: function() {
						console.log("통신 실패!");
					}					
				}); //ajax(아이디 중복 확인)				
			}
		
		});	//아이디 검증 끝
		
		
		//패스워드 입력값 검증
		$('#password').on('keyup', function() {
			if($('#password').val() === "" ){
				$('#password').css("background.color", "pink");
				$('#pwChk').html('<b style="font-size:14px; color:red;">[패스워드는 필수 정보]</b>');
				chk2 = false;
			}
			else if(!getPwCheck.test($('#password').val()) || $('#password').val().length < 8){
				$('#password').css("background.color", "pink");
				$('#pwChk').html('<b style="font-size:14px; color:red;">[특수문자 포함 8자 이상]</b>');
				chk2 = false;
			} else {
				$('#password').css("background.color", "aqua");
				$('#pwChk').html('<b style="font-size:14px; color:green;">[비밀번호 입력 완료]</b>');
				chk2 = true;
			}
		}); //비밀번호 검증 끝
		
		
		//패스워드 확인란 입력값 검증.
		   $('#password_check').on('keyup', function() {
		      //비밀번호 확인란 공백 확인
		      if($("#password_check").val() === ""){
		         $('#password_check').css("background-color", "pink");
		         $('#pwChk2').html('<b style="font-size:14px;color:red;">[패스워드확인은 필수정보!]</b>');
		         chk3 = false;
		      }               
		      //비밀번호 확인란 유효성검사
		      else if($("#password").val() != $("#password_check").val()){
		         $('#password_check').css("background-color", "pink");
		         $('#pwChk2').html('<b style="font-size:14px;color:red;">[위에랑 똑같이!!]</b>');
		         chk3 = false;
		      } else {
		         $('#password_check').css("background-color", "aqua");
		         $('#pwChk2').html('<b style="font-size:14px;color:green;">[비밀번호가 일치합니다]</b>');
		         chk3 = true;
		      }
		      
		   });//비밀번호 확인 검증 끝
		   
		   
		 //이름 입력값 검증.
		   $('#user_name').on('keyup', function() {
		      //이름값 공백 확인
		      if($("#user_name").val() === ""){
		         $('#user_name').css("background-color", "pink");
		         $('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 필수정보!]</b>');
		         chk4 = false;
		      }               
		      //이름값 유효성검사
		      else if(!getName.test($("#user_name").val())){
		         $('#user_name').css("background-color", "pink");
		         $('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 한글로 ~]</b>');
		         chk4 = false;
		      } else {
		         $('#user_name').css("background-color", "aqua");
		         $('#nameChk').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
		         chk4 = true;
		      }
		      
		   }); //이름 입력값 검증 끝
		   
		  
	    //사용자가 회원가입 버튼을 눌렀을 때 이벤트 처리
	    $('#signup-btn').click(function() {
			
	    	if(chk1 && chk2 && chk3 && chk4){ //모두 다 true
	    		
	    		//아이디 정보
	    		const id = $('#user_id').val();
	    		//패스워드 정보
	    		const pw = $('#password').val();
	    		//이름 정보
	    		const name = $('#user_name').val();
	    		
	    		const user = {
	    			account : id,
	    			password : pw,
	    			name : name
	    		};
	    		
	    		//비동기 통신 시작(ajax)
	    		$.ajax({
	    			type: "POST",
	    			url: "/user/",
	    			headers: {
	    				"Content-type" : "application/json"
	    			},
	    			dataType: "text",
	    			data: JSON.stringify(user), //자바스크립객체를 json으로 변환
	    			success: function(result) {
						console.log("통신 성공: "+result);
						if(result === "joinSuccess"){
							alert("회원가입에 성공했습니다");
							loction.href = "/";
						} else{
							alert("회원가입에 실패했습니다");
						}
					},
					error: function() {
						console.log("통신 실패");
					}
	    			
	    		}); //ajax 끝
	    		
	    		
	    	} else{
	    		alert('입력 정보를 다시 확인하세요');
	    	}
	    	
		}); //signup-btn 이벤트 처리 끝
		
		/////////////////////////////////////////////////////////////
		
		//로그인 검증
		
		//아이디 입력값 검증
		$('#signInId').on('keyup', function() {
			if($("#signInId").val() === ""){
				$("#signInId").css("background.color", "pink");
				$("#idCheck").html('<b style="font-size:14px; color:red;">[아이디는 필수 정보예요!]</b>');
				chk1 = false;
			}
			//아이디 유효성 검사
			else if(!getIdCheck.test($("#signInId").val())){  //getIdCheck의 값이 정규표현식에 어긋난다면
				$("#signInId").css("background.color", "pink");
				$("#idCheck").html('<b style="font-size:14px; color:red;">[영문자와 숫자 4-10자로 작성하세요]</b>');
				chk1 = false;
			} else{
				$("#signInId").css("background.color", "aqua");
				$("#idCheck").html('<b style="font-size:14px; color:green;">[아이디 입력 완료]</b>');
				chk1 = true;
			}
		}); //아이디 입력값 검증끝 
	
		
		//패스워드 입력값 검증.
		   $('#signInPw').on('keyup', function() {
		      //비밀번호 공백 확인
		      if($("#signInPw").val() === ""){
		          $('#signInPw').css("background-color", "pink");
		         $('#pwCheck').html('<b style="font-size:14px;color:red;">[패스워드는 필수!]</b>');
		         chk2 = false;
		      }               
		      //비밀번호 유효성검사
		      else if(!getPwCheck.test($("#signInPw").val()) || $("#signInPw").val().length < 8){
		          $('#signInPw').css("background-color", "pink");
		         $('#pwCheck').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
		         chk2 = false;
		      } else {
		         $('#signInPw').css("background-color", "aqua");
		         $('#pwCheck').html('<b style="font-size:14px;color:green;">[참 잘했어요]</b>');
		         chk2 = true;
		      }
		      
		   }); //패스워드 입력값 검증 끝.
		
		//로그인 버튼 클릭 이벤트
		$('#signIn-btn').click(function() {
			if(chk1 && chk2){
				
				//아이디, 비밀번호를 가져와서 객체로 포장
				//이후 비동기 통신을 진행하여 서버로 객체를 json형태로 전송
				//그리고 console.log()로 서버가 보내온 데이터를 확인하여 
				//아이디가 없습니다, 비밀번호가 틀렸습니다, 로그인 성공 이라는 메세지를 브라우저의 console창에서 확인
				
				//아이디 정보
	    		const id = $('#signInId').val();
	    		//패스워드 정보
	    		const pw = $('#signInPw').val();
	    		
	    		//is()함수는 상태여부를 판단하여 논리값을 리턴한다
	    		const autoLogin = $("input[name=autoLogin]").is(":checked");
	    		
	    		console.log("auto: "+autoLogin);
	    		
	    		const userInfo = {
	    			account : id,
	    			password : pw,
	    			autoLogin : autoLogin
	    		};
	    		
	    		//비동기 통신 시작(ajax)
	    		$.ajax({
	    			type: "POST",
	    			url: "/user/loginCheck",
	    			headers: {
	    				"Content-type" : "application/json"
	    			},
	    			dataType: "text",
	    			data: JSON.stringify(userInfo), //자바스크립객체를 json으로 변환
	    			success: function(result) {
						console.log("통신 성공: "+result); //서버에서 return해준 값
						
						if(result === "idFail"){
							$('#signInId').css("background-color", "pink");
							$('#idCheck').html('<b style="font-size:14px;color:red;">[회원가입 먼저 해주세요]</b>');
							$('#signInPw').val("");
							$('#signInId').focus(); //커서를 이동시키고, 스크롤도 해당 위치로 이동시키는 메서드
							chk2 = false;
						} else if(result === "pwFail"){
							$('#signInPw').css("background-color", "pink");
							$('#pwCheck').html('<b style="font-size:14px;color:red;">[비밀번호가 틀렸습니다]</b>');
							$('#signInPw').val("");
							$('#signInPW').focus(); //커서를 이동시키고, 스크롤도 해당 위치로 이동시키는 메서드
							chk2 = false;
						} else if(result === "loginSuccess"){
							self.location = "/"; 
							
						}
					},
					error: function() {
						console.log("통신 실패");
					}
	    			
	    		}); //ajax 끝
				
				
			}else{
				alert("입력 정보를 다시 확인하세요!");
			}
		}); //로그인 버튼 클릭 이벤트 끝
		
		
		
	}); // end Jquery

</script>









