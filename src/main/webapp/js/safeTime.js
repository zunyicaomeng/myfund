function safeTime() {
	            var today=new Date()
				var y=today.getFullYear()
				var M=today.getMonth()
				var d=today.getDay()
				var h=today.getHours()
				var m=today.getMinutes()
				var s=today.getSeconds()
// add a zero in front of numbers<10
y=checkTime(y)
M=checkTime(M+1)
d=checkTime(d+15)
m=checkTime(m)
s=checkTime(s)
document.getElementById('txt').innerHTML=y+"年"+M +"月" + d + "日" + h+"时"+m+"分"+s +"秒"
t=setTimeout('startTime()',500)
}

function checkTime(i)
{
	if (i<10) 
		{i="0" + i}
	return i
}
