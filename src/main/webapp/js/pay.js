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
		window.location.href="account.html";
	})
})