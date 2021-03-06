<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset='utf-8'>
<style>
body {
	width: 410px;
	position: absolute;
	left: 40%;
	top: -10%;
	transform: translate(-50%, -50%);
	background-color: rgb(245, 246, 247);
}

.textarea1 {
	position: absolute;
	left: 65px;
	top: 172px;
	width: 534px;
	height: 98px;
	background-color: #ffffff;
	border: 1px solid rgb(169, 169, 169);
	overflow-y: scroll;
}

.box1 {
	position: absolute;
	top: 146px;
	left: 65px;
	width: 532px;
	height: 22px;
	line-height: 22px;
	font-weight: 700;
}

.container {
	display: block;
	margin-bottom: 14px;
	cursor: pointer;
	font-size: 11pt;
	user-select: none;
}

.box2 {
	position: absolute;
	top: 288px;
	left: 65px;
	width: 532px;
	height: 22px;
	line-height: 22px;
	font-weight: 700;
	padding: 0;
}

.textarea2 {
	position: absolute;
	left: 65px;
	top: 314px;
	width: 534px;
	height: 98px;
	background-color: #ffffff;
	border: 1px solid rgb(169, 169, 169);
	overflow-y: scroll;
	line-height: 1.15;
}

.box3 {
	position: absolute;
	top: 430px;
	left: 65px;
	width: 290px;
	height: 22px;
	line-height: 22px;
	font-weight: 700;
}

.limitinfo {
	position: absolute;
	top: 460px;
	left: 68px;
	font-weight: 400;
	font-size: 12px;
	color: red;
}

#next_button {
	position: absolute;
	left: 65px;
	top: 520px;
	width: 537px;
	height: 50px;
	background-color: rgb(47, 79, 79);
	color: white;
	font-size: 15pt;
	text-align: center;
	line-height: 52px;
	cursor: pointer;
}

#next_button:hover {
	font-weight: bold;
}

.all {
	position: absolute;
	top: 110px;
	left: 65px;
	font-size: 18px;
	font-weight: 700;
	cursor: pointer;
	font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto,
		Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}
</style>
<script>
	$(function() {
			$("#next_button").click(function() {
				if ($("#check2").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.")
					return;
				} else if ($("#check3").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..")
					return;
				} else if ($("#check4").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다...")
					return;
				}
				window.location.href = "${rootPath}/user/join"
			})
	})
	function ch() { // 체크박스 한번에 모두 선택가능하게 만드는 소스
			//console.log('test')
			var f = document.forms[0];
			//console.log(f)
			if (f.checkall.checked) { // chkAll에 체크가 되면 chk배열의 총길이만큼 모두 체크하여준다.(모두 체크)
				for (var n = 0; n < f.agree.length; n++)
					f.agree[n].checked = true;
			} else { // chkAll에 체크가 해제되면 chk배열의 총길이만큼 모두 해제하여준다.(모두 체크 해제)
				for (var n = 0; n < f.agree.length; n++)
					f.agree[n].checked = false;
			}
	}
</script>
</head>
<body>
	<form>
		<label class="all">모두 동의<input type="checkbox" name="checkall"
			onclick="ch()" id="checkall"></label> <label class="container box1">서비스
			이용약관에 동의합니다.(필수) <input type="checkbox" name="agree" id="check2">
		</label>
		<div class="textarea1">
			<div class="contents_body">
				<br>

				<div class="title2">목차</div>
				<br>
				<div class="title3">제1장 총칙</div>
				<div class="title4">&nbsp;&nbsp;제1조 목적</div>
				<div class="title4">&nbsp;&nbsp;제2조 약관의 명시, 효력 및 변경</div>
				<div class="title4">&nbsp;&nbsp;제3조 약관 외 준칙</div>
				<div class="title3">제2장 이용계약의 체결</div>
				<div class="title4">&nbsp;&nbsp;제4조 서비스의 구분</div>
				<div class="title4">&nbsp;&nbsp;제5조 이용계약의 성립</div>
				<div class="title4">&nbsp;&nbsp;제6조 이용 신청</div>
				<div class="title4">&nbsp;&nbsp;제7조 회원정보 사용에 대한 동의 및 이용신청의 승낙</div>
				<div class="title4">&nbsp;&nbsp;제8조 아이디 부여,닉네임 부여등</div>
				<div class="title4">&nbsp;&nbsp;제9조 이용계약의 중지 및 해지</div>
				<div class="title3">제3장 회원의 의무와 권리</div>
				<div class="title4">&nbsp;&nbsp;제10조 모든회원의 의무와 권리</div>
				<div class="title4">&nbsp;&nbsp;제11조 정보의제공</div>
				<div class="title4">&nbsp;&nbsp;제12조 회원 아이디와 비밀번호 관리에 대한 회원의
					의무</div>
				<div class="title3">제4장 판매회원의 의무와 권리</div>
				<div class="title4">&nbsp;&nbsp;제13조 판매회원의 의무와 권리</div>
				<div class="title3">제5장 저작권분쟁</div>
				<div class="title4">&nbsp;&nbsp;제14조 저작권분쟁</div>
				<div class="title3">제6장 개인정보보호</div>
				<div class="title4">&nbsp;&nbsp;제15조 개인정보보호</div>
				<div class="title3">제7장 환불</div>
				<div class="title4">&nbsp;&nbsp;제16조 인터넷강의의 구매에 대한환불</div>
				<div class="title3">제8장 청약철회</div>
				<div class="title4">&nbsp;&nbsp;제17조 청약철회</div>
				<div class="title4">&nbsp;&nbsp;제18조 청약철회의 효과</div>
				<div class="title3">제9장 손해배상 및 면책조항</div>
				<div class="title4">&nbsp;&nbsp;제19조 손해배상</div>
				<div class="title4">&nbsp;&nbsp;제20조 면책조항</div>
				<div class="title4">&nbsp;&nbsp;제21조 관할법원 및 준거법</div>
				<div class="title4">&nbsp;&nbsp;제22조 고객센터운영</div>
				<div class="title3">부칙</div>
				<br> <br> <br> <br>
				<div class="title3">제1장 총칙</div>
				<div class="title4">제1조 목적</div>
				<div>
					<br>
					<div class="title4">제2조 (약관의 명시, 효력 및 변경)</div>
					<div>
						1.회사는 이 약관의 내용, 상호, 대표자 성명, 전화번호, 사업자등록번호, 통신판매업 신고번호 등을 서비스를
						이용하고자 하는 자와<br> 회원이 쉽게 알 수 있도록 프로인강 사이트의 초기화면에 게시합니다.<br>
						2.회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 변경 후 약관을 회사 사이트의
						팝업화면 또는 공지사항란을 통해<br> 그 적용일자 7일 일전에 공지 또는 통지합니다.다만 회원에게 불리한
						내용으로 변경하는 경우에는 30일 이전에 공지 또는 통지합니다.<br> 3.회사가 2항,1항에 따라 개졍약관을
						공지 또는 통지하고 30일 기간 내에 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 또는 <br>
						계속적인 서비스 이용시 개정약관에 동의한 것으로 봅니다.<br> 4.개정약관에 대해 동의하지 않는 경우에는
						회원은 탈퇴함(이용계약해지)으로써 약관의 내용을 거부할 수 있습니다.<br> <br>
					</div>
					<div class="title4">제 3 조 (약관 외 준칙)</div>
					<div>
						이 약관에 명시되지 아니한 사항에 대하여는 별도의 세부 약관, 상관행, 관계법령에서 정한 바에 따릅니다.<br>
						<br> <br>
					</div>
					<div class="title3">제2장 이용계약의 체결</div>
					<div class="title4">제4조 서비스의 구분</div>
					<div>
						회사는 중개업체로서 통신판매의 당사자가 아닙니다.<br> 인터넷 강의를 판매하는자와 인터넷 강의를 구매하는
						구매자를 회사의 서비스를 이용하여 서로 판매,구매할 수 있도록<br> 중개서비스를 제공합니다. 판매자와
						구매자간에 발생하는 문제,세금계산서의 발행,거래에 관한 책임 및 의무는 거래당사자에게<br> 있습니다.<br>
						회사의 중개서비스를 이용하면서 판매(유료,무료)와 구매(유료,무료)를 할 수 있습니다.<br> <br>
					</div>
					<div class="title4">제5조 이용계약의 성립</div>
					<div>
						1.서비스 가입 신청(회원가입)시 본 약관을 읽고 "동의" 버튼을 누르면 이 약관에 동의하는 것으로 간주됩니다.<br>
						2.이용 계약은 회원ID 및 실명 단위로 체결합니다. 이용계약이 성립되면, 이용신청자는 회원으로 등록됩니다.<br>
						<br>
					</div>
					<div class="title4">제6조 이용 신청</div>
					<div>
						1.회원으로 가입하여 서비스를 이용하기를 희망하는 자는 본인인증을 진행해야합니다.<br> 2.회사가 요청하는
						가입신청 양식에서 요구하는 사항을 기록하여 신청합니다.<br> 3.만 14세 미만인경우 당사의 서비스이용이
						불가능합니다.<br> 4.부정한방법으로 본인명의로 등록하지 않는 사용자는 일체의 권리를 주장할 수 없습니다.<br>
						5.이용약관의 고지하단의 체크박스에 체크하는경우 이용약관에 동의하는 것으로 간주됩니다.<br> 6.개인회원과
						판매회원으로 구분되며 개인회원으로 가입 후 이용자의 의사로 판매회원으로 전환할 수 있습니다.<br>
						7.개인회원으로 가입시 ID,패스워드,닉네임,실명,본인명의의 휴대폰번호를 이용자에게 입력받습니다.<br>
						8.판매회원으로 전환시 추가적으로 원활한 거래와,정산,세금계산서 발행을 전산적으로 돕기위한 입력양식을 제공함으로써<br>
						이용자에게 입력받습니다.<br> <br>
					</div>
					<div class="title4">제7조 회원정보 사용에 대한 동의 및 이용신청의 승낙</div>
					<div>
						1.제6조에 따른 이용신청에 대하여 특별한 문제가 없는 한 접수 순서대로 신청을 승낙합니다.<br> 2.회사는
						다음 각 호에 해당하는 경우 이용신청에 대한 승낙을 아니 할 수 있습니다.<br> -본인 명의가아닌 타인의
						명의를 사용한경우.<br> -판매회원의전환을 위해 수집하는항목 ("사업가 판매자"성명,사업자번호,업종,업체등
						"개인판매자"성명,주민등록번호등)<br> 을 허위로 기재하여 신청한 경우.<br> -만 14세
						미만의인경우.<br> -기존에 사용되고 있는 아이디 또는 닉네임을 사용하는겨우.<br>
						-이용신청고객의 귀책사유로 이용승낙이 곤란한 경우.<br> -회사의 설비에 여유가 없는 경우<br>
						-기술상 지장이 있는 경우<br> -사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청한 경우<br>
						<br>
					</div>
					<div class="title4">제8조 아이디 부여,닉네임 부여등</div>
					<div>
						1.이용신청시 신청한 닉네임,아이디를 부여합니다.<br> 2.아이디는 변경할 수 없는 것을 원칙으 로합니다.<br>
						<br>
					</div>
					<div class="title4">제9조 이용계약의 중지 및 해지</div>
					<div>
						1.이용계약은 회원본인 또는 회사의 해지에 의해 해지할 수 있습니다.<br> 2.구매 또는 판매가없는 회원은
						1년동안 장기 미접속시 개인정보법에의거 강제해지됩니다.<br> 3.회원의 경우 각 호에 해당하는 경우 사전
						통보 없이 강제해지 또는 중지됩니다.<br> [회원 공통]<br> -타인의 ID와 비밀번호를 도용한
						경우.<br> -만14세 미만의 이용자가 회원가입시 안내 및 약관을 무시하고 가입한경우.<br> -본
						약관에서 정한 회원의 의무를 위반하여 회원,회사,서비스의 권리,이익,신용,명예등에 피해를 주거나 시도한 경우.<br>
						-회원가입 또는 판매회원 등록시 허위 내용으로 등록 한 경우.<br> -인강을 판매하는 강사또는
						회원,일반인,유명인,정치인등 에게 모욕적인 언행과,인권을 침해하는 게시물을 게시하거나 악의적인 행동으로 피해를 준경우.<br>
						-서비스를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우.<br> -같은
						사용자가 다른 ID로 이중 등록을 한 경우.<br> -정부직원 또는 운영자 등을 포함한 타인을 사칭하기 위해
						ID 및 별명을 사용할 경우.<br> -구입한 상품 또는 인터넷강의가 특별한 하자가 없는데도 불구하고 상습적인
						환불요청으로 회사의 업무를 방해하는 경우.<br> -판매하는 상품이 거짓이거나 타인의 저작권을 허락없이
						도용하거나 부정적으로 사용하기위해 등록 또는 변경하는 경우,또는 이를 알고 구매한것으로 판단되는 근거가있는 경우.<br>
						-기타 관계 법령에 위배되는 행위 또는 본 약관을 포함하여 기타 회사가 정한 제반 규정을 위배하는 경우.<br>
						[판매회원]<br> -인강을 판매하면서 발생하는 수익발생시 해당 수익금을 모두 수령한 후에 해지가 가능합니다.<br>
						-1000원미만일 시 고객센터문의 또는 해지시 안내에 따라 진행해주시면됩니다.<br> 4.회원이 법령에
						위배되는 행위로 법적분쟁시 해결시까지 회원탈퇴가 제한됩니다.<br> 5.회원이 본약관을 위배되는 행위시 회사는
						서비스 이용을 중지시킬 수 있습니다.<br> 6.회원이 본 서비스를 이용하면서 한 행동이 이용해지후에 발생하는
						법적인 문제 발생시 그책임을 회피할 수 없습니다.<br> 7.회사의 정책으로 이용중지시 회원은 이의신청을
						회사의 전화또는 카카오톡으로 연락 및 접수하실 수 있습니다.<br> 8.정당하다고 판단될 시 이용중지 회원에서
						다시 본 서비스를 이용하실 수 있습니다.<br> 9.회사는 중개서비스를 제공합니다. 해지시 세금계산서에대해
						확인,미발행으로 발생하는 책임은 거래당사자에게 있습니다.단, 개인정보법,소비자보호법에의거 5년이내의 거래에대해<br>
						회사는 해당거래에대해 거래당사자에한해서 거래정보를 제공할 수 있습니다.<br> <br> <br>
					</div>
					<div class="title3">제3장 회원의 의무와 권리</div>
					<div class="title4">제10조 모든회원의 의무와 권리</div>
					<div>
						1.회원이 아래호에 해당하는경우 회사는 회원을 이용해지,이용중지,로그인차단 및 수사기관 고발,민,형사고발,행동을 취할
						수 있습니다.<br> -회사의 서비스를 어집럽히는 모든 해킹.<br> -회사의 서비스를 이용하여
						바이러스 프로그램,해킹을 유발하는 경우.<br> -공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는
						경우.<br> -회사의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우.<br>
						-타회원의 정보(SESSION포함)를 탈취,위조,변조,도용하는 행위.<br> -아이디와 비밀번호의 판매행위.<br>
						-구매목록또는 시청목록중 판매자의 허락없는 재판매,도용,복사행위.<br> -회사또는 타인의
						이권,인권,명예,권리를 침해하는 행위.<br> -회사의 사전동의없는 영업행위.<br> -회사의
						직원,운영진을 사칭하는 행위.<br> -서비스의 버그를 악용하여 회사의 이권을 침해하고 금전적이득을 취하거나
						정상적인 서비스를 방해한경우.<br> -기타 관계법령에 위배된다고 판단되는 경우.<br> 2.자신의
						ID와 비밀번호,개인정보와 관련하여 모든 관리책임은 회원에게 잇습니다.<br> 아이디와 비밀번호의
						대여,공동소유,공공장소에서의 관리소홀로 문제발생시 모든결과에 대한 책임은 회원에게 있습니다.<br> 3.회사는
						중개서비스를 제공합니다. 세금계산서에대해 확인, 미발행으로 발생하는 책임은 거래당사자에게 있습니다.단,
						개인정보법,소비자보호법에의거 5년이내의 거래에대해<br> 회사는 해당거래에대해 거래당사자에한해서 거래정보를
						제공할 수 있습니다.<br> 4.세금계산서발행,발급시 허위사실,부정기재시 발생하는 법적책임은 해당행위의
						당사자에게 있습니다.<br> 5.세금계산서의 발행요청,발급시
						정보(회사명,사업자등록번호,업종,업태,사엄장주소,이메일주소,대표자명,사업자유형등)을 거래당사자간에 한해 공유해야합니다.<br>
						6.제10조 5항의 공유되는 정보를 세금계산서 발급,확인,거래의증명 목적외에 타목적으로 사용해서는 안됩니다.<br>
						7.강의내용 토대로 상업적이용, 기타등등에 적용하면서 발생한 구매회원의 금전적인 손해, 또는 제3자(예:기업)에 대한
						손해는 강의내용 토대로 사용한 구매회원에게 있습니다.<br> 라이센스 적용범위, 강의내용이 시대에 뒤처짐,
						구매회원의 컴퓨터 환경등으로 항상 정확한 답을 강사분도 제공을 할 수 없다고 판단하였습니다.<br> 8.회원
						탈퇴시<br> 모든 게시판 및 댓글,리뷰 작성글의 내용은 남지만 회원님을 알아볼 수 없도록 닉네임은
						'회원탈퇴'로 변경됩니다.<br> 게시판 및 댓글,리뷰 작성글의 삭제는 고객센터로 문의해 주시기 바랍니다.<br>
						프로인강에서 구매하신 인강들을 더 이상 이용하실 수 없습니다.<br> 9.개인정보 최신정보 관리 의무<br>
						휴대폰 번호는 항상 최신 상태로 유지하실 필요가 있습니다.<br> 보안상, 휴대폰 번호가 일치하지 않으면
						고객센터로 문의를 해주셔도<br> 알려드릴 수 없으며, 또한 초기화도 진행을 못 해 드립니다.<br>
						새로 회원가입을 통해 서비스를 이용해주세요.<br> 10.구매 또는 판매 시 잘못된 정보기입(사업자등록번호,
						대표자이름 등)으로 생긴 세금계산서 문제발생시 입력한 본인책임입니다.<br> 구매 또는 판매 시 꼼꼼하게
						입력할 의무가 있습니다. 세금계산서로 문제발생 시 프로인강은 이를 해결하기 위해 적극적으로 협력할 수 있는 범위 내에서
						협력합니다.<br> 11.풍기문란에 해당하는 닉네임은 고지 없이 관리자에 의해 강제로 닉네임 변경 조치될 수
						있습니다.<br> 12.enrolltax.pr페이지의 구매자,판매자정보는 세금계산서발급 이외의 용도로 사용하실
						수 없습니다.<br> 13.프로인강은 통신판매 중개자입니다. 카드 영수증은 '프로인강'이름으로 발행되어
						매입세액공제를 받을 수 없습니다. 매입세액공제가 필요한 경우 반드시 판매자가 유형-사업가인지 확인 후 결제 전
						세금계산서를 발급 신청을 하시기 바랍니다. 세금계산서는 통신판매 당사자인 판매자에게 요청합니다.(결제 전에 양식
						작성으로 요청) 세금계산서 발급은 판매자가[유형-개인판매자] 즉 '개인'일 경우는 불가능합니다. 구매 시 유의해주세요.
						위 사항은 '결제 직전'에도 안내해드리고 있습니다. 온라인상에서 신용카드로 결제를 완료하시면, 결제시에 입력하신
						이메일로 전자결제 회사를 통해 카드 영수증을 자동으로 발송해 드리고 있습니다. 마이페이지-구매목록에서 재확인가능합니다.
						14.해외IP 차단<br> 회원정보를 보호하고자 해외IP를 차단합니다.<br> 해외에서 접속을
						희망하고자 하시면<br> 자신의 IP를 기재 후 카톡 @프로인강(친구찾기 @프로인강)으로 1:1문의를 주시기
						바랍니다.<br> <br>
					</div>
					<div class="title4">제11조 정보의제공.</div>
					<div>
						1.회사는 판매회원의 동의하에 추가적인 개인정보를 수집할 수 있습니다.<br> 2.회사는 물품의판매 또는
						구매(구매회원 중 사업자에한함)등 거래에 관련된 내용을<br> 전자우편등의 방법으로 거래당사자인 회원에게
						제공할 수 있으며, 회원은 원치 않을 경우 구매시 거절 또는 판매회원등록시 거절,회원정보수정 메뉴에서 정보수신거부를 할
						수 있습니다. <br> <br>
					</div>
					<div class="title4">제12조 회원 아이디와 비밀번호 관리에 대한 회원의 의무</div>
					<div>
						1.아이디와 비밀번호에 관한 모든 관리책임은 회원에게 있으며 회사는 회원의 비밀번호에대해 일체 요구하지 않습니다.<br>
						2.회원은 자신의 아이디가 부정하게 사용된 사실을 알게 될 경우 반드시 회사에 그사실을 통지하여하며 회사의 안내에
						따라야합니다.만약 회원이 회사에게 그사실을 알리지 않는다면<br> 회사는 어떠한 도움도 줄 수 없으며 추후
						발생한 불이익에 대하여 회사는 책임지지 않습니다.<br> <br> <br>
					</div>
					<div class="title3">제4장 판매회원의 의무와 권리</div>
					<div class="title4">제13조 판매회원의 의무와 권리</div>
					<div>
						들어가기 앞서 제3장의의무도 판매회원으로서 지켜야합니다.<br> 고객의 환불요청시 자신의
						정산대금(상단메뉴-마이 페이지 -내지갑)에서 환불금액이 차감됩니다.<br> 1.회원이 아래호에 해당하는경우
						회사는 회원을 이용해지,이용중지,정산중지,로그인차단 및 수사기관 고발,민,형사고발,행동을 취할 수 있습니다.<br>
						-자신이 판매하는 동영상에 정치신념, 사상, 노동조합ㆍ정당의 가입ㆍ탈퇴, 정치적 견해, 건강, 성생활 등에 관한 정보등
						민감정보를 포함하지 아니하여합니다.<br> -타인이 허용하지아니한 타인의 저작권을 침해하는 행위 또는 동영상을
						업로드해서는 안됩니다.<br> -제5장의 저작권침해로 법적문제 발생시 해당 동영상을 업로드한 판매자의
						법적책임이 있습니다.<br> -운영자의 허용하지아니한 동영상을 업로드할 수 없습니다.<br> -기타
						법령에 어긋난 동영상을 업로드시 해당 동영상을 업로드한 판매자의 법적책임이 있습니다.<br> -교육목적이 아닌
						동영상을 업로드하지 아니하여야 합니다.<br> -동영상의 사진,내용,제목,기타 판매소개내용이 회사의 서비스와
						부합하지아니하거나 일반인에게 위화감을 주는경우.<br> -대리판매를 하는경우.<br> 2.동영상
						판매자는 자신이 판매하는 품목에대해 사후관리하기위해 노력해야됩니다.<br> 3.구매자의 질문에 성실히 답변할
						의무가있습니다.<br> 4.동영상 판매를 촉진시키기위한 회사의 서비스활동에 협조해야 합니다.<br>
						5.판매자는 회사의 정산등에 이의가있을시 6개월이내에 회사측으로 이의를 제기해야하며 6개월 경과후 이의를 제기할 수
						없습니다.<br> 6.3년이내의 정산기록을 보유하며 이후에는 자동으로 삭제됩니다.<br> 7.회사에서
						수수료에대한 세금계산서를 판매자에게 발급시 부정,허위,관리소홀로 발급이 불가능할 시 발급 가능시까지 판매를 중지 및
						정산중지조치를 취할 수 있습니다.<br> 8.회사는 결제서비스 제공사 및 발행사의 요청이 있는 경우,또는
						불법결제,허위결제,안전한결제,그 밖의 정당한 사유가있는경우 거래를 취소하거나 환불 할 수 있습니다.<br>
						9.세금계산서발행,발급시 허위사실,부정기재시 발생하는 법적책임은 해당행위의 당사자에게 있습니다.<br>
						10.세금계산서를 미발행하는 판매자에대해 이용제한, 수익금 정산중지 등의 강제 조치를 행할 수 있습니다.<br>
						11.회사측으로 전달하는 파일에 악성코드와 바이러스를 검사할 책이이 있습니다.이와같은 파일로 발생한 피해에 대해
						회사측은 어떠한 보상이나 책임이 없습니다.<br> 12.회사측은 국세청의 요청시 세금 및 매출에대한 월별자료를
						제공할 수 있습니다.<br> 13.세금계산서 발행의무가있는 사업가인경우 구매자의 요청이 있을 시 세금계산서를
						발행해야하며 이를 위해 회사는 "메뉴-세금계산서"를 통해 전산적으로 지원하고있습니다.<br> 14.세금계산서
						미발행으로 생기는 법적책임은 판매자에게 있습니다.<br> 15.세금계산서 미발행 , 회원의 질문에 불성실응대
						, 고객센터의 고객응대하기위한 판매자에게 카카오톡 메시지전송(수신받기위해 제공한 판매자에 한함,향후 거절도 가능.)시
						장기간 미응대,<br> 제13조 판매회원의 의무에 위반시 소비자보호법에의거 전액환불이 회사측으로 이행될 수
						있습니다.<br> 16.판매하고자하는 품목이 회사측이 제시한 파일의 사이즈,확장자의 제한에 제한되는 경우 또는
						심사기준이하인 경우(성의없는 동영상 EX.강의 1분짜리 1개등록 등) 판매를 거절 할 수 있습니다.<br>
						17.강사가 판매물품에 기재하는 내용이 허위사실일 경우 회사는 수정할 수 있습니다.<br> 18.회사의
						운영정책상 결제 이용을 제한해야 하는 경우 홈페이지 공지 등의 방법을 통해 알립니다.<br> 19.판매자는
						전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령에서 명시한 자료를 보관하여야 합니다.<br>
						20.환불조치로 출금금액 미달시 출금이 취소되며 개인공지로 알려드립니다.<br> 21.회원 탈퇴시(중요)<br>
						이미 구매한 구매자에게는 숨김 처리상태에서도 강의가 제공이 됩니다.<br> 세금계산서의 미발급으로 생기는 법적
						책임은 인강 판매자에게 있습니다.<br> 미 인출한 인강판매 수익금 존재시 회원탈퇴가 불가능합니다.<br>
						평생제공 판매물품관련 탈퇴시 적용사안은 아래 가,나,다와 같습니다. 가.회원 탈퇴 즉 계약이 해지되더라도 인터넷강의를
						구매한 구매자에한해 판매물품을 평생 제공됩니다.<br> 나.평생제공되는 사항에대해 취소하고자하시면 모든
						고객에게 환불을 해야하며 이와관련해서 발생하는 프로인강의 수수료도 포함하여 판매금액(부가세포함)을 모두 납부하셔야
						됩니다.<br> 다.소비자를 보호하고자 강의심사에 앞서 안내해드렸습니다.<br> 22.인강판매
						수익금을 처음으로 출금신청 시 또는 회원탈퇴 시 처음으로 인강수익금을 출금해야 하는 경우 안전을 위해 최소5일
						최장14일간 입금 또는 탈퇴가 지연될 수 있습니다.<br> 최소5일이 경과 후 빠른 시일 내에 입금, 탈퇴가
						될 수 있도록 노력하겠습니다.<br> 23.제7장의 환불사유,8장의 청약철회에 대해 이해했으며 이에 이의가
						있을시 판매회원의 전환이 불가능합니다.<br> <br> <br>
					</div>
					<div class="title3">제5장 저작권분쟁</div>
					<div class="title4">제14조 저작권분쟁</div>
					<div>
						1.판매를 위해 업로드한 판매물품의 내용(동영상,설명,파일)의 권리는 판매자에게 귀속됩니다.<br>
						2.업로드한 판매물품의 지식재산권 관련 분쟁이 발생한 경우 이에대한 책임은 판매자에게 있습니다.<br>
						3.업로드한 게시판의 사진,내용의 권리는 게시자에게 귀속됩니다.<br> 4.업로드한 게시판의 지식재산권 관련
						분쟁이 발생한 경우 이에대한 책임은 게시자에게 있습니다.<br> 5.회사는 동시송출을 허용하지만,유튜X등 기타
						사이트의 동시송출은 해당 사이트의 지침에 따릅니다.<br> <br> <br>
					</div>
					<div class="title3">제6장 개인정보보호</div>
					<div class="title4">제15조 개인정보보호</div>
					<div>
						1.회사는 이용자들의 개인정보를 중요하시며, 보호하기위해 최선을 다하고있습니다.<br> 아울러 정보통신망
						이용촉진 및 정보보호 등에 관한 법률,개인정보보호법,전기통신사업법 등 관련 법규를 준수하고 있습니다.<br>
						회사의 개인정보보호정책에대한 자세한 내용을 메인페이지의 하단에 링크로서 제공하고있습니다.<br>
						2.세금계산서의 발행요청,발급시 정보(회사명,사업자등록번호,업종,업태,사엄장주소,이메일주소,대표자명,사업자유형등)을
						거래당사자간에 한해 공유해야합니다.<br> 공유되는 정보를 세금계산서 발급,확인 목적,거래의증명 목적외에
						타목적으로 사용해서는 안됩니다.<br> 3.정부와 국세청,수사기관등의 법적인 절차에 따라 제공하는 경우.<br>
						<br> <br>
					</div>
					<div class="title3">제7장 환불</div>
					<div class="title4">제16조 인터넷강의의 구매에 대한환불</div>
					<div>
						1.회사는 환불에 관련된 내용을 물품또는 서비스 구매시 안내해드립니다.<br> 2.회원은 판매되는 지적재산권을
						구매시 해당 결제일로부터 7일이내에 회사의 고객센터로 환불요청을 할 수 있습니다.(「전자상거래 등에서의 소비자보호에
						관한 법률」 제17조제1항).<br> 인터넷강의 판매내용과 현저히 다를경우 공급받은 날부터 3개월 이내, 그
						사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.(「전자상거래 등에서의
						소비자보호에 관한 법률」 제17조제3항).<br> -현저히 다른경우 예:자바강의를 판매한다고 하였으나
						안드로이드개발강의를 판매하는 경우.<br> 3.회원은 서비스 내에 제공되는 고객센터의 1:1문의를 통해 그
						의사를 표시하여야 하며,회사는 환불요청을 접수하고 회원의 요청과 환불규정 확인 후 지체 없이 환불과정을 진행합니다.<br>
						4.회사는 해당 서비스를 반환한 날로부터 3영업일 이내에 지급받은 서비스대금을 환급합니다.<br> 5.회사는
						결제대행사,카드사 등에서 결제를 취소하는데 걸리는 시간에 대하여 책임지지 않습니다.<br> 6.회사의 환불
						원칙및 불가 원칙은 아래와 같습니다.<br> 환불요칭시 1:1문의로 접수방법: 환불받으려는
						"강의명","연락처","환불 결과알림 E-mail","결제방법","환불사유" <br> <br>
						가.1강으로 구성된 강의를 구매 후 1강을 수강했을 시 환불이 불가능합니다.<br> 나.모든강의 기준
						절반이상,즉 50%이상 수강시 환불불가.(상단메뉴의 마이 페이지-구매 목록보기 기준)<br> 다.구매기준
						판매자가 세금계산서를 2개월이상 미발급시 구매자는 전액환불이 가능합니다.<br> 라.판매자의 환불요청이
						통상범위에서 정당하다고 판단되는경우.<br> 마.회원이 관계법령을 위반 및 본 약관을 위반하여 강제탈퇴,강제
						이용정지 당한경우 환불이 불가능합니다.<br> 바.환불 시 수강의 기준은 동영상 시청 및 학습창 접속 이력으로
						처리됩니다. 실제 동영상을 끝까지 재생하지 않더라도 수강 이력에 포함되오니 이 점 유의하여 주시기 바랍니다.<br>
						사.제7장환불 제16조 6,7항약관에의해 정당한근거가 있을시 환불이 불가능합니다.<br> <br>
						7.환불규정을 악용하여 회사의 정당한 이익을 침해한경우 관련규정에의해 처벌받을 수 있으며 항시 체크하고있습니다.<br>
						<br> <br>
					</div>
					<div class="title3">제8장 청약철회</div>
					<div class="title4">제17조 청약철회</div>
					<div>
						1.제7장의 환불 이용약관을 모두 포함하며 제8장에서는 특수한 문제 발생상황(6항참조)을 다룹니다. 중복되는 내용은
						제8장의 청약철회 이용약관을 우선시 합니다. 2.회사는 청약철회에 관련된 내용을 물품 또는 서비스 구매 시
						안내해드립니다.<br> 3.회원은 청약철회에 관련하여 본 이용약관을 충족 시 고객센터 1:1문의로 접수하시면
						됩니다.<br> 4.회원은 판매되는 지적재산권을 구매 시 해당 결제일로부터 7일이내에 회사의 고객센터로
						환불요청을 할 수 있습니다.(「전자상거래 등에서의 소비자보호에 관한 법률」 제17조제1항).<br> 인터넷강의
						판매 내용과 현저히 다를 경우 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에
						청약철회 등을 할 수 있습니다.(「전자상거래 등에서의 소비자보호에 관한 법률」 제17조제3항).<br>
						-현저히 다른 경우 예:자바강의를 판매한다고 하였으나 안드로이드개발강의를 판매하는 경우.<br> 5.제3항의
						청약철회 의사표시를 회사가 수신한 후 지체 없이 해당 결과사실을 이용자에게 회신합니다.<br> 6.구매회원은
						다음 각 호의 사유가 있을 때에 청약철회가 가능합니다.<br> -구매한 물품 및 서비스가 구매 시
						네트워크오류,네트워크점검등 당사가 해결할 수 없는 범위 외에 회사의 사이트 내 프로그램 버그,결함으로 <br>
						해당 상품이 공급되지 아니한경우, 또는 구매후 프로그램버그,결함으로 영구적으로 접근이 불가능한경우.(프로그램
						버그:서비스구매 후 코딩에의해 해당 페이지의 일절 접근불가 등.)<br> 또는 위와같은사유로 정상적인 이용이
						영구적으로 현저히 불가능한 경우.<br> <br>
					</div>
					<div class="title4">제18조 청약철회의 효과</div>
					<div>
						1.구매한 서비스가 청약철회가 완료되면 공급받은 서비스를 반환하여야하며,다운로드받은 서비스의 경우에는 이를
						삭제해야합니다.<br> 2.회사는 해당 서비스를 반환한 날로부터 3영업일 이내에 지급받은 서비스대금을
						환급합니다.<br> 3.회사는 이용자에게 청약철회를 이유로 위약금 또는 손해배상을 청구하지 않습니다.<br>
						<br> <br>
					</div>
					<div class="title3">제9장 손해배상 및 면책조항</div>
					<div class="title4">제19조 손해배상</div>
					<div>
						회사는 본 약관을 위반한 거래에 대해서 발생한 일체의 사고에 대해서 책임을 지지 않습니다.<br> 또한 판매자
						및 구매자,게시자에게 지적재산권에 관한 분쟁처리를 본약관,회원가입시,판매자등록에서 안내해드렸으며 관련 분쟁에 대해서
						책임을 지지 않습니다.<br> <br>
					</div>
					<div class="title4">제20조 면책조항</div>
					<div>
						1.회사는 다음 각 호에 해당하는 경우에는 책임을 지지 않습니다.<br> -천재지변 또는 국가 비상
						사태,전시등 불가항력적인 경우.<br> -회사의 고의성이 입증되지 않는경우 무료서비스의 장애,보관된 자료 멸실
						또는 삭제,변조등으로 인한 손해에 대해서는 배상하지 않습니다.<br> 2.회사는 회원의
						귀책사유(브라우저환경,OS환경등)로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다.<br>
						3.회사가 자금난에 못 이겨 폐업으로 서비스 공급이 불가능한 경우. 4.회사는 회원이 서비스를 이용하며 기대하는
						손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 아니합니다.<br> 5.회사는 이용자가
						서비스를 통해 게재 또는 전송한 정보,자료,사실의 정확성, 신뢰성 등 내용에 관하여 어떠한 보증도 하지 아니합니다.<br>
						6.회사는 회원간 또는 회원과 제3자 상호간에 서비스를 매개로 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한
						손해를 배상할 책임도 없습니다.<br> <br>
					</div>
					<div class="title4">제21조 관할법원 및 준거법</div>
					<div>
						1.서비스 이용에 관하여 회사와 이용자 간에 분쟁이 발생한 경우 협의로 원만히 해결합니다.<br> 2.전항으로
						해결되지 아니할 경우 회사의 본사 소재지를 관할하는 법원을 관할 법원으로 하여 이를 해결합니다.<br> <br>
					</div>
					<div class="title4">제22조 고객센터운영</div>
					<div>
						회사는 회원이 서비스이용함에 정당한 의견,질문,불만을 반영하고 해결하기위해 고객센터와 FAQ를 운영하고있습니다.<br>
						<br>
					</div>
					<div class="title3">부칙</div>
					<div>
						이 약관은 2019년 09월 01일부터 시행합니다.<br>
					</div>
				</div>
				<div>
					<br> <br> <br>
				</div>
			</div>
		</div>

		<label class="container box2">개인정보처리 방침에 동의합니다.(필수) <input
			type="checkbox" name="agree" id="check3">
		</label>
		<div class="textarea2">
			<div class="contents_body">
				<br>
				<div>

					정보통신서비스제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보취급방침을
					정하여 이용자 권익 보호에 최선을 다하고 있습니다. <br> 회사는 개인정보 처리방침을 통하여 이용자들이
					제공하는 개인정보가 어떠한 용도와 방식으로 이용,보관되고 또한 어떤 개인정보보호 조치가 이루어지는지 알려 드립니다. <br>
					이용자의 개인정보 처리방침은 아래와 같습니다.
				</div>
				<br> <br>
				<div class="title2">목차</div>
				<br>
				<div>1.수집하는 개인정보 항목 및 수집∙이용목적</div>
				<div>2.개인정보의 처리위탁</div>
				<div>3.수집한 개인정보의 공유 및 제공</div>
				<div>4.개인정보 파기절차 및 방법</div>
				<div>5.만14세 시만의 미성년자인경우</div>
				<div>6.정보주체와 법정대리인의 권리·의무</div>
				<div>7.개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항</div>
				<div>8.개인정보 보호책임자 작성</div>
				<div>9.기타</div>
				<div>10.고지의 의무</div>
				<div>11.개인정보의 안전성 확보 조치</div>
				<br> <br>
				<div class="title3">1.수집하는 개인정보 항목 및 수집∙이용목적</div>
				<div>
					원활한 서비스 제공, 비정상적인 이용행위 방지, 회사에 피해를 주는행위 방지를 위해 수집합니다.<br> 회사는
					회원에게 최적화된 컨텐츠의 제공을 위해 최소한의 필요한 정보만을 수집하고있습니다.<br> 프로인강은 회원을
					구매회원, 구매+판매회원으로 구분합니다.<br> 만 14세미만은 회원가입이 불가합니다.<br> <br>
					<br> [회원공통]<br> -필수항목<br> 아이디,비밀번호,닉네임: 회원활동을 하기위한
					수집.<br> 성명,휴대폰번호,생년월일: 회원제 서비스 이용에 따른 본인 확인절차, 연령 제한 서비스, 결제시
					소비자보호법 준수.<br> IP Address,SESSION
					ID,브라우저정보,접속기기정보,OS정보,이전접속경로: 불량회원 부정 이용 방지와 보안.<br> 고객센터에서 응대
					불가능한 강의구매자(소비자)의 문의처리, 프로인강 또는 강의구매자의 세금계산서 발행,발행요청 시 발생하는 문제해결.<br>
					<br> -선택항목 공통<br> 프로필 사진.<br> <br> <br>
					[구매회원]<br> -필수항목<br> 신용카드 결제(카드사명,카드번호 등): 서비스 및 부가 서비스
					이용에 대한 요금 결제.<br> 이메일: 결제시 소비자보호법 준수<br> 구매자의 구매품목. 구매품목의
					결제금액. 결제일.<br> <br> -선택항목(사업가로부터 구매하는 기업구매자)<br> 결제시
					세금계산서 발행: 사업자등록번호,회사명(상호명),대표자명,사업자유형,업태,업종,사업장주소,연락용 이메일(이메일 수신여부는
					사용자의 선택)<br> 수집근거: 부가가치세법 제32조에 따른 세금계산서의 발행 및 사업가의 세금계산서
					발행의무.<br> <br> <br> [판매회원-개인]<br> -필수항목<br>
					주민등록번호: 부가가치세법 제32조에 따른 세금계산서의 발행.<br>
					은행계좌정보(예금주,은행명,계좌번호),이메일주소: 판매대금 정산 등.<br> 판매하고자하는 자신의 개성이
					나타나는 동영상.<br> <br> -선택항목<br> 경력: 상품가치를 돋보이게하기위해 판매자가
					직접기입.<br> 카톡ID: 빠른 고객지원과 강좌수익의 출금요청을 판매자에게 1:1지원.<br> <br>
					<br> [판매회원-사업가]<br> -필수항목<br> 상호명,사업자 등록번호,대표자명,사업자
					유형,업태,업종,사업장 주소,사업자 등록증 사본:<br> 부가가치세법 제32조에 따른 세금계산서의 발행 및
					구매자의 세금계산서 발급 지원.<br> 은행계좌정보(예금주,은행명,계좌번호),이메일주소: 판매대금 정산 등.<br>
					<br> -선택항목<br> 경력: 상품가치를 돋보이게하기위해 판매자가 직접기입.<br>
					카톡ID: 빠른 고객지원과 강좌수익의 출금요청을 판매자에게 1:1지원.<br> 판매하고자하는 자신의 개성이
					나타나는 동영상.<br> <br> <br> [개인정보보호법에의거 수집하지 아니하는 항목]<br>
					제23조(민감정보의 처리 제한) 사상ㆍ신념, 노동조합ㆍ정당의 가입ㆍ탈퇴, 정치적 견해, 건강, 성생활 등에 관한 정보로<br>
					개인 사생활을 현저히 침해할 우려가 있는 개인정보로서 대통령령으로 정하는 정보(이하 “민감정보”라 한다)를 수집하지
					않습니다. <br> <br> <br> [개인정보의 위조,도용,허위 사실일 경우]<br>
					이용자가 제출한 인증정보가 허위사실 또는 위조,도용으로 이익을 취한경우 이용자자격 상실과 함께 주민등록법에 의거하여
					처벌될 수 있습니다. <br> <br> <br>
				</div>
				<div class="title3">2.개인정보의 처리위탁</div>
				<div>
					회사는 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며,<br> 관계 법령에 따라 위탁계약 시
					개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.<br> 회사의 개인정보 위탁처리 기관 및
					위탁업무 내용은 아래와 같습니다.<br> <br> <br>
					================================================================<br>
					[(주)다날]<br> 수탁업체 : (주)다날<br> 위탁업무내용 : 신용카드 결제 대행<br>
					개인정보의 보유 및 이용기간 : <br> 결제일을 포함하여 5년간 보유.<br>
					================================================================<br>
					<br> <br>
					================================================================<br>
					[(주)한국모바일인증]<br> 수탁업체 : (주)한국모바일인증<br> 위탁업무내용 :
					휴대폰본인인증서비스<br> 개인정보의 보유 및 이용기간 : <br> 해당업체에서 이미 보유하고 있는
					정보이기 때문에 별도 저장하지 않음.<br>
					================================================================<br>
					<br> <br>
				</div>
				<div class="title3">3.수집한 개인정보의 공유 및 제공</div>
				<div>
					회사는 이용자들의 개인정보를 제1항의 '수집하는 개인정보 항목 및 수집∙이용목적'에서 안내드린 범위 내에서 사용하며,<br>
					이용자의 사전 동의 없이는 동의 범위를 초과하여 이용하거나 제3자에게 제공하지 않습니다. 다만, 아래의 경우에는 예외로
					합니다.<br> <br> -법령에 특별한 규정이 있는 경우.<br> -이용자들이 사전에 공개에
					동의한 경우: 정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 개인정보취급방침에 따라 회원에게 사전에 고지하거나
					동의를 받은경우.<br> -관련법에 의거 적법한 절차와 방법으로 수사기관과 정부의 요구가 있는 경우.<br>
					-회사의 이용약관에 어긋난 행위(해킹,악의적 행위)로 회사와 고객들의 금전적,정신적으로 피해가 발생되어 관련 정부기관의
					요청과 회사의권익을 보호하기위해 법적절차를 밟는경우.<br> -조치를 취하기 위하여 개인정보를 공개해야 한다고
					판단되는 충분한 근거가 있는 경우.<br>
				</div>
				<br>
				<div class="title3">4.개인정보 파기절차 및 방법</div>
				<div>
					회사가 이용자의 개인정보를 수집하는 경우 그 보유기간은 회원가입 하신후 해지(탈퇴신청,직권탈퇴)시까지 입니다.<br>
					또한 해지 시 회사는 이용자의 개인정보를 파기하며 개인정보가 제3자에게 제공된 경우에는 제3자에게도 파기하도록
					지시합니다.<br> 회사는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다.<br>
					파기의 절차, 기한 및 방법은 다음과 같습니다.<br> <br> [파기절차]<br> 이용자가
					입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및<br> 기타 관련
					법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다.<br> 이 때, DB로 옮겨진 개인정보는 법률에 의한
					경우가 아니고서는 다른 목적으로 이용되지 않습니다.<br> <br> [파기방법]<br> 종이에
					출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br> 전자적 파일 형태로 저장된 개인정보는
					기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br> <br> [관련법률에의거 보유 및
					이용기간]<br>
					================================================================<br>
					계약 또는 청약철회 등에 관한 기록<br> 관련법률 : 전자상거래등에서의 소비자보호에 관한 법률(제6조 및
					시행령 제6조).<br> 보존 기간 : 5년<br>
					================================================================<br>
					대금결제 및 재화등의 공급에 관한 기록<br> 관련법률 : 전자상거래등에서의 소비자보호에 관한 법률(제6조 및
					시행령 제6조).<br> 보존 기간 : 5년<br>
					================================================================<br>
					소비자의 불만 또는 분쟁처리에 관한 기록<br> 관련법률 : 전자상거래등에서의 소비자보호에 관한 법률(제6조 및
					시행령 제6조).<br> 보존 기간 : 3년<br>
					================================================================<br>
					접속에 관한 기록<br> 관련법률 : 통신비밀보호법<br> 보존 기간 : 3개월<br>
					================================================================<br>
					부정거래기록<br> 회사 및 회원 또는 타인의 권리나 이익을 침해하는 행위,전자상거래시.<br> 보존
					기간 : 6개월<br>
					================================================================<br>
					<br> [장기간 이용하지 아니하는 회원]<br> 장기간(1년초과)이용하지 아니하는 회원의 개인정보를
					보호하기 위하여 구매이력 또는 판매이력이 없을 경우 회원탈퇴처리 되며,<br> 그외에 구매이력이 존재하거나
					판매회원일경우 소비자보호법에의거 법령에서 정한 기간 경과 후 다른 회원의 개인정보와 분리하여 별도·저장 관리하고<br>
					해당 회원의 서비스 이용을 제한 할 수 있습니다. 단, 회원이 서비스 이용의사를 표시한 경우 즉시 서비스 이용이
					가능합니다.<br> <br> <br>
				</div>
				<div class="title3">5.만14세 시만의 미성년자인경우</div>
				<div>
					미성년자의 경우 회사와 계약이 불가능하며 서비스 이용이 불가능합니다.<br> <br> <br>
				</div>
				<div class="title3">6.정보주체와 법정대리인의 권리·의무</div>
				<div>
					정보주체 및 법정대리인은 로그인 후 개인정보변경(회원정보수정), 가입해지(동의철회), 회원탈퇴를 <br> 본인
					확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.<br> 정보주체 및 법정대리인은 본인임을 증명
					또는 대리인을 증명함으로써 서면또는 전화,이메일로 연락하면<br>
					프로인강(‘https://www.proingang.com’이하 프로인강) 에 대해 언제든지 다음 각 호의 개인정보 보호
					관련 권리를 행사할 수 있습니다.<br> <br> -개인정보 열람요구<br> -오류 등이 있을
					경우 정정 요구<br> -삭제요구<br> -탈퇴요구<br> <br> 예외의 경우<br>
					-ID,성명,주민등록번호의 경우 수정이 불가능합니다. 단, 국가의 행정상 또는 개명으로 성명 변경 및 주민등록번호,
					사업자번호 변경은 예외적으로 허용하며<br> 국가의 적법한 개명또는 사업자번호 변경이 이루어졌는지에대해 필요한
					최소한의 관련서류를 요청할 수 있습니다.<br> <br> 이용자가 개인정보의 오류에 대한 정정을
					요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다.<br> 또한 잘못된
					개인정보를 제3 자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록
					하겠습니다.<br> 회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는<br>
					제 4항에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br> <br>
					<br>
				</div>
				<div class="title3">7.개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항</div>
				<div>
					프로인강은 더 나은 서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠기(cookie)’를 사용합니다.<br>
					쿠키는 프로인강을 이용하는 이용자의 브라우저에게 보내는 소량의 정보이며 이용자의 PC 컴퓨터 내의 하드디스크에 저장되기도
					합니다.<br> 쿠키의 사용 목적: 이용자의 원활한 서비스 제공, 인기 검색어, 보안접속 여부, 등을 파악하여
					이용자에게 최적화된 정보 제공을 위해 사용됩니다.<br> 도구&gt; 인터넷 옵션&gt; 보안&gt; 개인정보
					메뉴의 옵션 설정을 통해 쿠키 저장을 거부할 수 있습니다.<br> 모든쿠키를 허용, 쿠키가 저장될 때마다 확인,
					모든쿠키의 저장을 거부 중 선택할 수 있습니다.<br> 단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에
					어려움이 있을 수 있습니다.<br> <br> <br>
				</div>
				<div class="title3">8.개인정보 보호책임자 작성</div>
				<div>
					회사는 이용자의 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.<br> 회사는 비밀번호에 대해 어떠한
					방법으로도 이용자에게 직접적으로 질문하는 경우는 없으므로 타인에게 비밀번호가 유출되지 않도록 각별히 주의하시기 바랍니다.<br>
					회사가 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로
					인한 정보의 훼손 및 방문자가 작성한 게시물에<br> 의한 각종 분쟁에 관해서는 책임이 없습니다.<br>
					이용자는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수
					있습니다.<br> 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.<br> <br>
					▶ 개인정보 보호책임자<br> 성명 :김형주<br> 직책 :대표이사<br> 직급 :대표이사<br>
					연락처 :070-7715-8080, kimkhj812@gmail.com<br> <br> 기타
					개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br> <br>
					개인정보 분쟁조정위원회 (www.kopico.go.kr / 국번없이 1833-6972)<br>
					개인정보침해신고센터 (privacy.kisa.or.kr / 국번없이 118)<br> 대검찰청 사이버범죄수사단
					(www.spo.go.kr / 02-3480-3571)<br> 경찰청 사이버안전국
					(cyberbureau.police.go.kr / 국번없이 182)<br> <br> <br>
				</div>
				<div class="title3">9.기타</div>
				<div>
					회사는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다.<br> 이 경우 회사는
					외부웹사이트 및 자료에 대한 아무런 통제권이 없으므로 해당 사이트의 자료 및 서비스에 대해 책임질 수 없으며 보증할 수
					없습니다.<br> 회사가 포함하고 있는 링크를 클릭하여 타 사이트로 옮겨갈 경우 해당 사이트의 개인정보취급방침은
					회사와 무관하므로 새로 방문한 사이트의 정책을 확인바랍니다.<br> <br> <br>
				</div>
				<div class="title3">10.고지의 의무</div>
				<div>
					현 개인정보 처리방침은 정부의 정책 또는 회사의 필요에 따라 내용의 추가, 삭제 및 수정이 있을 시에는<br>
					변경이 되는 개인정보 처리방침을 시행하기 최소 7일전에 홈페이지의 공지사항에 고지합니다.<br> <br>
					<br>
				</div>
				<div class="title3">11.개인정보의 안전성 확보 조치 프로인강은 개인정보보호법 제29조에 따라
					다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.</div>
				<div>
					가. 정기적인 자체 감사 실시<br> 개인정보 취급 관련 안정성 확보를 위해 정기적으로 자체 감사및 보안을
					실시하고 있습니다.<br> <br> 나. 개인정보 취급 직원의 최소화 및 교육<br> 모든
					개인정보는 대표이사가 관리하며 최소화하여 개인정보를 관리및 보호하는대책을 시행하고 있습니다.<br> <br>
					다. 내부관리계획의 수립 및 시행<br> 개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고
					있습니다.<br> <br> 라. 해킹 등에 대비한 기술적 대책<br> 프로인강은 해킹이나
					컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며
					외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.<br> <br>
					마. 개인정보의 암호화<br> 이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 비밀번호는
					게인정보 보호법에의거 운영자도 알아볼 수 없는 단반향암호화를 실시하고있습니다.<br> 또한 데이터는 파일 및
					전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.(SSL 및 기타
					보완적조치)<br> <br> 바. 개인정보에 대한 접근 제한<br> 개인정보를 처리하는
					데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며<br>
					침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br> <br> 사. 문서보안을
					위한 잠금장치 사용<br> 개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고
					있습니다.<br> <br> 아. 비인가자에 대한 출입 통제<br> 개인정보를 보관하고 있는
					물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.<br> <br>
					<br>
				</div>
				<div>개인정보 처리방침 시행일자: 2019년 09월 01일</div>
				<div>
					<br> <br> <br>
				</div>
			</div>
		</div>

		<label class="container box3">만14세 미만이 아닙니다.(필수) <input
			type="checkbox" name="agree" id="check4">
		</label>

		<div class="limitinfo">※14세 미만은 회원가입이 제한됩니다.</div>
		<input type="button" id="next_button" value="다음">
</form>
	
</body>
</html>