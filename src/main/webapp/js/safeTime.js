function getTime(){
        setInterval("safeSec.innerHTML=getTheSecend();", 1000);
        setInterval("safeMin.innerHTML=getTheMinute();", 1000);
        setInterval("safeHour.innerHTML=getTheHour();", 1000);
        setInterval("safeDay.innerHTML=getTheDay();", 1000);
        setInterval("safeYear.innerHTML=getTheYear();", 1000);
        
        $(window).ready(function () {
            $.ajax({
                type:"post",
                url:"loadUser",
                contentType:"application/json",
                success:function (data) {
//                	alert(data);
                	 $('#loadUser').html(data.loadUsers)
                }
            })
        })
    }
     //获取Year
    function getTheYear() {
        var t = new Date() - new Date(2017, 10, 16);
        var y = Math.floor(t / 1000 / 60 / 60 / 24 / 30 / 12)+1;
        if (y<10) {
            y="0" + y;
        }
        return y ;
     }
    //获取Day
    function getTheDay() {
        var t = new Date() - new Date(2017, 10, 16);
        var d = Math.floor(t / 1000 / 60 / 60 / 24 )+31;
        if (d<10) {
            d="0" +d;
        }
        return d ;
    }
    //获取Hour
    function getTheHour() {
        var t = new Date() - new Date(2017, 10, 16);
        var d = Math.floor(t / 1000 / 60 / 60 / 24);
        t -= d * 1000 * 60 * 60 * 24;
        var h = Math.floor(t / 1000 / 60 / 60);
        if (h<10) {
            h="0" +h;
        }
        return h ;
    }
    //获取Minute
    function getTheMinute() {
        var t = new Date() - new Date(2017, 10, 16);
        var d = Math.floor(t / 1000 / 60 / 60 / 24);
        t -= d * 1000 * 60 * 60 * 24;
        var h = Math.floor(t / 1000 / 60 / 60);
        t -= h * 1000 * 60 * 60;
        var m = Math.floor(t / 1000 / 60);
        if (m<10) {
            m="0" +m;
        }
        return m ;
    }
    //获取Secend
    function getTheSecend() {
        var t = new Date() - new Date(2017, 10, 16);
        var d = Math.floor(t / 1000 / 60 / 60 / 24);
        t -= d * 1000 * 60 * 60 * 24;
        var h = Math.floor(t / 1000 / 60 / 60);
        t -= h * 1000 * 60 * 60;
        var m = Math.floor(t / 1000 / 60);
        t -= m * 1000 * 60;
        var s = Math.floor(t / 1000);
        if (s<10) {
            s="0" +s;
        }
        return s;
    }
    
    
    function loadNumUser() {
        $(window).ready(function () {
            $.ajax({
                type:"post",
                url:"loadUser",
                contentType:"text",
                success:function (data) {
                	 $('loadUser').innerHTML(data.loadUsers)
                }
            })
        })
    }
    
    