const onClickGoogleLogin = (e) => {
    	//구글 인증 서버로 인증코드 발급 요청
 		window.location.replace(`https://accounts.google.com/o/oauth2/v2/auth?client_id=1015360793167-fqmk3t53dmgua0nqudokpud83e7heeh5.apps.googleusercontent.com&redirect_uri=http://localhost:9090/ac/google/callback&response_type=code&scope=email%20profile%20openid&access_type=offline`);
}

$(function(){
	$('#googleLoginBtn').click(onClickGoogleLogin);
});