function setting() {
	var input2 = document.getElementById("input2").value;
	var input3 = document.getElementById("input3").value;
	var bankCard = document.getElementById("bankCard").value;
	if (input2.length != 6) {
		alert("交易密碼必須為6位！");
		return false;
	} else if (input2 != input3) {
		alert("重複密碼必須和交易密碼一致！");
		return false;
	}
	if (bankCard.length < 18 || bankCard.length > 21) {
		alert("銀行卡号必须为18--21位之间！");
		return false;
	}
}


	
