function getTime(){
        setInterval("safeSec.innerHTML=getTheSecend();", 1000);
        setInterval("safeMin.innerHTML=getTheMinute();", 1000);
        setInterval("safeHour.innerHTML=getTheHour();", 1000);
        setInterval("safeDay.innerHTML=getTheDay();", 1000);
        setInterval("safeYear.innerHTML=getTheYear();", 1000);
    }
     //获取Year
    function getTheYear() {
        var t = new Date() - new Date(2017, 7, 31);
        var y = Math.floor(t / 1000 / 60 / 60 / 24 / 30 / 12);
        return y ;
     }
    //获取Day
    function getTheDay() {
        var t = new Date() - new Date(2017, 7, 31);
        var d = Math.floor(t / 1000 / 60 / 60 / 24 );
        return d ;
    }
    //获取Hour
    function getTheHour() {
        var t = new Date() - new Date(2017, 7, 31);
        var d = Math.floor(t / 1000 / 60 / 60 / 24);
        t -= d * 1000 * 60 * 60 * 24;
        var h = Math.floor(t / 1000 / 60 / 60);
        return h ;
    }
    //获取Minute
    function getTheMinute() {
        var t = new Date() - new Date(2017, 7, 31);
        var d = Math.floor(t / 1000 / 60 / 60 / 24);
        t -= d * 1000 * 60 * 60 * 24;
        var h = Math.floor(t / 1000 / 60 / 60);
        t -= h * 1000 * 60 * 60;
        var m = Math.floor(t / 1000 / 60);
        return m ;
    }
    //获取Secend
    function getTheSecend() {
        var t = new Date() - new Date(2017, 7, 31);
        var d = Math.floor(t / 1000 / 60 / 60 / 24);
        t -= d * 1000 * 60 * 60 * 24;
        var h = Math.floor(t / 1000 / 60 / 60);
        t -= h * 1000 * 60 * 60;
        var m = Math.floor(t / 1000 / 60);
        t -= m * 1000 * 60;
        var s = Math.floor(t / 1000);
        return s;
    }