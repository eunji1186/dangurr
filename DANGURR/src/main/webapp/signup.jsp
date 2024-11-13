<!-- 회원 등록  -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <title>🐶댕구르르🐶</title>
        <link rel="stylesheet" href="css/iii.css"/>

        <script type="text/javascript">
        	function checkFun(){
	        	var f = document.dog_info;
	        	
	        	if(!f.serial_number.value.matches("[+-]?\\d*(\\.\\d+)?") || f.serial_number.value.length>16){
	        		alert("동물등록번호는 숫자만 입력해주세요.");
	        		f.serial_number.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.protector_name.value ==""){
	        		alert("보호자 이름을 입력해주세요.");
	        		f.protector_name.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.dog_name.value ==""){
	        		alert("강아지 이름을 입력해주세요. ");
	        		f.dog_name.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.birth.value ==""){
	        		alert("강아지 생일을 입력해주세요. ");
	        		f.birth.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.gender.value ==""){
	        		alert("강아지 성별을 입력해주세요. ");
	        		f.gender.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.fixing.value ==""){
	        		alert("중성화 여부를 선택해주세요.");
	        		f.fixing.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.weight.value ==""){
	        		alert("강아지 몸무게를 입력해주세요. ");
	        		f.weight.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.chip.value ==""){
	        		alert("강아지 인식칩 여부를 선택해주세요. ");
	        		f.chip.focus();
	        		
	        		return false;
	        	}
	        	
	        	else if(f.vaccin.value ==""){
	        		alert("백신접종 여부를 선택해주세요.");
	        		f.vaccin.focus();
	        	}
	        	
	        	else if(f.allergic.value ==""){
	        		alert("강아지 알레르기 유무를 선택해주세요.");
	        		f.allergic.focus();
	        		
	        		return false;
	        	}
	        	
	        	else return true;
        	}
        </script>
    </head>
 	<body>
        <header>
            <div class="innerHeader" style="text-align: center;">
                <h1 class="logo">
                    <a href="#">
                        <img src="images/dangurr.jpeg" width="200" height="200" >
                    </a>
                </h1>
            </div>
        </header>
        
        <header>
        	<div class="settingHeader" style="text-align: center;">
        		<a href="protector_singup.jsp"> 회원등록 </a>
        		<a href="dog_singup.jsp"> 강아지등록 </a>
        	</div>
        </header>
        
        <div class="signup-wrapper" style="text-align: center;">       
	        <h2> 강아지 정보 등록 </h2>
	        
	        <form action="insertDB.jsp" name="dog_info" method="post" onsubmit="return checkFun()">
	        	<fieldset style="text-align: center;" style="width:230px">
	        		<legend> 강아지 등록 </legend>
	        		<p>*표시는 필수 항목입니다. </p>
	        		<p>*동물등록번호</p>
	        		<input type="text" size="16" name="serial_number" id="serial_number">
	        		<br>
	        		
	        		<p>*보호자 이름</p>
	        		<input type="text" size="16" name="protector_name" id="protector_name">
	        		<br>
	        		
	        		<p>*강아지 이름</p> 
	        		<input type="text" size="16" name="dog_name" id="dog_name">
	        		<br>
	        		
	        		<p>종</p>
	        		<input type="text" size="16" name="species" id="species"> 
	        		<br>
	        		
	        		<p>색깔</p> 
	        		<input type="text" size="16" name="color" id="color">
	        		<br>
	        		
	        		<p>*강아지 생일</p>
	        		<input type="date" name="birth" id="birth">
	        		<br>
	        		 
	        		<p>*성별</p>
	        		<input type="radio" name="gender" id="gender_boy"> 남 
	        		<input type="radio" name="gender" id="gender_girl"> 여 
	        		<br>
					
	        		<p>*중성화 여부</p>
	        		<input type="radio" name="fixing" id="fixing" value="yes" onclick="showHideDiv()"/> 예  
	        		<input type="radio" name="fixing" id="fixing" value="no" onclick="showHideDiv()"/> 아니오   
	        		<br>
	        		
	        		
	        		 
	        		<p>*몸무게</p>
	        		<input type="text" size="16" name="weight" id=weight> KG
	        		<br>
	        		 
	        		<p>*인식칩유무 </p>
	        		<label for="chip_yes">
	        			<input type="radio" name="chip" id="chip_yes" onclick="showHideChip()"/> 예 
	        		</label>
	        		<label for="chip_no">
	        			<input type="radio" name="chip" id="chip_no" onclick="showHideChip()"/> 아니오  
	        		</label>
	        		
	        		<input type="text" id="chip_text" style="display:none"/>
	        		
	        		<script type="text/javascript">
					    function ShowHideChip() {
					        var chip = document.getElementById("chip");
					        var chip_text = document.getElementById("chip_text");
					        chip_text.style.display = chip_yes.checked ? "block" : "none";
					    }
					</script>
	 				<br>
	 			 
	        		<p>*백신접종 여부</p>
	        		<input type="radio" name="vaccin" id="vaccin_yes" > 예
	        		<input type="radio" name="vaccin" id="vaccin_no"> 아니오 
	        		<input type="text" name="vaccin_text">
	        		<br>
	        		
	        		<p>*알레르기 유무</p> 
	        		<input type="radio" name="allergic" id="allergic_yes"> 예
	        		<input type="radio" name="allergic" id="allergic_no"> 아니오 
	        		<input type="text" name="allergic_text">
	        		<br>
	        		
	        		<p>기타</p> 
	        		<textarea name="etc" cols="100" rows="10" placeholder="기타 특이사항을 입력해주세요. " id="etc"></textarea>
	        		<br>
	        		
	        		<p>*보호자 번지 </p>
	        		<input type="text" size="16" name="phone" id="phone"> 
	        		<br>
	        		
	        		<p>*보호자 주소 </p>
	        		<input type="text" size="16" name="address" id="address">
	        		<br>
	        		
	        	</fieldset>
	        	
	        <input type="submit" value="등록" id="dog_add">
	        <input type="submit" value="취소" id="dog_cancel">
	       
	        </form>
        </div>
        
        <footer>
            <a href="https://www.instagram.com/dang_gurrr?igsh=MTl1a2d2YXBpYWNhYQ==">
                <img src="images/instagram.webp" width="20" height="20" >
            </a>
        </footer>
    </body>
</html>