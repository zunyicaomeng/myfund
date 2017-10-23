$(document).ready(function(){
	$("#part_a_1").click(function(){
			$("#part_a_1").css("border","1px gray solid")
			$("#part_a_2").css("border","none")
			$("#part_a_3").css("border","none")
			$("#part_a_4").css("border","none")
			$("#part_a_5").css("border","none")
	})
	$("#part_a_2").click(function(){
			$("#part_a_2").css("border","1px gray solid")
			$("#part_a_1").css("border","none")
			$("#part_a_3").css("border","none")
			$("#part_a_4").css("border","none")
			$("#part_a_5").css("border","none")	
	})
	$("#part_a_3").click(function(){
			$("#part_a_3").css("border","1px gray solid")
			$("#part_a_2").css("border","none")
			$("#part_a_1").css("border","none")
			$("#part_a_4").css("border","none")
			$("#part_a_5").css("border","none")
	})
	$("#part_a_4").click(function(){
			$("#part_a_4").css("border","1px gray solid")
			$("#part_a_2").css("border","none")
			$("#part_a_3").css("border","none")
			$("#part_a_1").css("border","none")
			$("#part_a_5").css("border","none")
	})
	$("#part_a_5").click(function(){
			$("#part_a_5").css("border","1px gray solid")
			$("#part_a_2").css("border","none")
			$("#part_a_3").css("border","none")
			$("#part_a_4").css("border","none")
			$("#part_a_1").css("border","none")
	})
	$("#return").click(function(){
		window.location.href="/My-Fund/account/account.jsp";
	})
})
function pay() {
        var payMoney = document.getElementById("pay_money").value;
		var payPassword = document.getElementById("pay_password").value;
		if (payMoney == "") {
            alert("充值金额不允许为空！");
            return false;
        } else if (payPassword == "" ) {
            alert("交易密码不允许为空！");
            return false;
        }else if(payMoney%100!=0){
        	alert("充值金额必须为100的整数倍！");
        }else if(payPassword.length>6 || payPassword.length<6){
        	alert("交易密码必须为6位！");
        }
		
}