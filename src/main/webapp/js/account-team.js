/**
 * Created by yuan on 2017/10/18.
 */
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
        window.location.href="/My-Fund/survey.html";
    })
    $("#about").click(function(){
        window.location.href="/My-Fund/about.html";
    })
    $("#partner").click(function(){
        window.location.href="/My-Fund/partner.html";
    })
    $("#contactUs").click(function(){
        window.location.href="/My-Fund/contactUs.html";
    })
})
