 function login() {
        //获取用户输入的用户名
        var username = document.getElementById("input_name").value;
        //获取用户输入的密码
        var password = document.getElementById("input_pwd").value;
        //验证用户输入项
        if (username == "") {
            alert("用户名不允许为空！");
            return false;
        } else if (password == "" ) {
            alert("密码不允许为空！");
            return false;
        } else if (password.length >20 || password.length <=6) {
            alert("密码长度应该在 6 - 20 位");
            return false;
        }
    }
function register(str ) {
        var username=document.getElementById("input_name").value;
        var password = document.getElementById("input_pwd").value;
        var email=document.getElementById("input_em").value;
       //验证用户输入项
        if (username == "") {
            alert("用户名不允许为空！");
            return false;
        } else if (password == "" ) {
            alert("密码不允许为空！");
            return false;
        } else if (password.length >20 || password.length <=6) {
            alert("密码长度应该在 6 - 20 位");
            return false;
        }else if (email == ""){
             alert("邮箱不允许为空！");
            return false;
        }
    }
    