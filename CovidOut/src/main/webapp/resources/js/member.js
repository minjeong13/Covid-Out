
$(function () {
	
    $("#signupform").submit(function (e) {
        e.preventDefault();
        console.log("signupForm submit event");
		
        var mid = $(this).find("input[name='mid']").val();
		var mnick = $(this).find("input[name='mnick']").val();
		var mpw = $(this).find("input[name='mpw']").val();
		var mpw2= $(this).find("input[name='mpw2']").val();
		var mph = $(this).find("input[name='mph']").val();
		
        console.log(mid, mnick, mpw, mpw2, mph);

		submitsignupForm(mid, mnick, mpw, mpw2, mph);
        
    });
});

function submitsignupForm(mid, mnick, mpw, mpw2, mph) {
    $.ajax({
        type: "post",
        url: "member/signup",
        dataType: "html",
        data: {
            "mid": mid,
			"mnick":mnick,
			"mpw":mpw,
			"mph":mph
        },
        success: function (result) {
            console.log(result);
/*
            if (pass == pwrepeat) {
                if (result == "no") {
                    swal({
                        title: "중복된 아이디가 있습니다!",
                        icon: "warning",
                        button: true,
                        closeOnClickOutside: false
                    })
                } else {
                    swal({
                        title: "회원가입이 되었습니다.",
                        icon: "success",
                        button: true,
                        closeOnClickOutside: false
                    })
                        .then(function () {
                            location.href = "index.jsp";
                        });

                }
            } else {
                swal({
                    title: "패스워드를 확인해주십시오.",
                    icon: "warning",
                    button: true,
                    closeOnClickOutside: false
                })
            }
*/
		}
	});
}