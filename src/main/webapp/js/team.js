$(document).ready(function () {
	var navli=document.querySelectorAll('.nav>li')
	var menu=document.querySelectorAll('.nav .dropdown_menu')
	navli.forEach(function(item,index){
		item.onmouseenter=function(){
			menu[index].style.display='block'
		}
		item.onmouseleave=function(){
			setTimeout(function(){
				menu[index].style.display='none'
			},500)
		}
	})
})

$(document).ready(function(){
	$("#survey").click(function(){
		window.location.href="survey.jsp";
	})
	$("#about").click(function(){
		window.location.href="about.jsp";
	})
	$("#partner").click(function(){
		window.location.href="partner.jsp";
	})
	$("#contactUs").click(function(){
		window.location.href="contactUs.jsp";
	})
	$("#login").click(function(){
		window.location.href="login.jsp";
	})
	$("#register").click(function(){
		window.location.href="register.jsp";
	})
})
