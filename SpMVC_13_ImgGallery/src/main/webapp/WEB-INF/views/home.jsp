<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="rootPath" value="${pageContext.request.contextPath}"/>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 갤러리</title>


<script src="http://code.jquery.com/jquery-latest.min.js"></script> 





<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>



<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.contextMenu.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.contextMenu.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.ui.position.min.js"></script>




<style>

	*{
	
		box-sizing: border-box;
		margin: 0px;
		padding: 0px;
	
	}
	
	body{
	
		width:100%;
		
	
	}


	header{
	
		background-color: #41D3BD;
		margin: 0;
		padding: 1rem;
		color: white;
	
	}
	
	
	section{
		
		width:90%;
		margin:10px auto;
		
	}
	
	#img_box{
		border:1px solid green;
		display: flex;
		flex-wrap: wrap;
		margin: 10px auto;
	}
	
	
	.img_panel{
		padding: 0.01rem 16px;
		margin-top: 16px;
		margin-bottom: 16px;
	}
	

	
	.img_card{
		width:200px;
		height: 200px;
		
		margin: 10px;
		overflow: hidden;		/* 이미지가 card_box보다 클 때 이미지 자르기 */
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.16), 0 4px 20px 0 rgba(0,0,0,0.19);
		
		display: flex;
		justify-content: center;
		flex-flow:column;
	}
	
	.img_card .img_title{
		padding:0.5rem;
		text-align: center;
		
	}
	
	.bz-button{
	 border: none;
	 display:inline-block;
	 padding: 8px 16px;
	 vertical-align: middle;
	 text-decoration: none;
	 color:white;
	 background-color: blue;
	 text-align: center;
	 cursor: pointer;
	 white-space: nowrap;
	}
	
	
	.bz-button:hover {
	
		box-shadow: 0 8px 16px rgba(0,0,0, 0.2), 0 6px 20px 0 rgba(0,0,0 0.2)
	
	
	}
	
	
	a{
		text-decoration: none;
		color:inherit;
	
	}
	
	div.input_box{
		width: 90%;
		margin: 5px auto;
	}
	
	input[type="text"]{
		padding: 8px;
		display: block;
		border:none;
		border-bottom: 1px solid #ccc;
		border-radius: 5px;
		width: 100%;
		margin: 8px auto;
		
	}
	
	
	#d_d_box{
		width:100%;
		height: 300px;
		color: #aaa;
		border: 1px solid green;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.img_title{
		margin: 10px auto;
	}
	
	
	
	
	#img_view{
		display:none;
		
	}
	
	
}

</style>
<Script>
	// js파일에서 사용할 public 변수 선언
	var rootPath = "${rootPath}"
</Script>
<script src="${rootPath }/javascript/image_upload.js"></script>
<script src="${rootPath }/javascript/images_upload.js"></script>

<script>
$(function(){
	
	
	var toolbar = [
		
		['style', ['bold', 'italic', 'underline'] ], ['fontsize', ['fontsize']], ['font Style', ['fontname']], ['color', ['color']], ['para', ['ul', 'ol', 'paragraph']],
		['height', ['height']], ['table', ['table']], ['insert', ['link', 'hr']], ['view', ['fullscreen', 'picture' , 'codeview']]
		
	]

	$("#img_text").summernote({
		lang:'ko-KR',
		placeholder: '본문을 입력하세요', width:'100%', toolbar:toolbar, height:'200px', disableDragAndDrop: true
	})
	
	$("#btn_img_up").click(function(){
		document.location.href="${rootPath}/image/upload"
	})
	
	$("#d_d_box").on('dragover', function(e){
		
		$("#d_d_box h3").text("파일을 내려 놓으세요")
		return false;
		
	})
	
	
	/*
	
	
		file 1개를 Drag and Drop으로 수행하기
	
	*/
	
	
	$("#d_d_box").on('drop', function(e){
		
		$("#d_d_box h3").text("파일 업로드 중")
		
		let files = e.originalEvent.dataTransfer.files	/* drop한 파일 리스트 추출 */
		
		
		
		let fileLen = files.length
		
		if(fileLen > 1){
			
			
			//파일 업로드를 위한 객체 만들기
			let formData = new FormData()
			
			//Drop한 파일들을 모두 추가
			for(let i = 0; i <fileLen; i++){
				formData.append('files',files[i])
			}
			//alert('파일개수'+ fileLen)
			
			files_up(formData)
			return false;
			
		}else{
		
		
		let file = files[0]		/* 리스트에서 첫 번째 파일만 추출 */
		
		// 추출된 파일정보를 서버에 먼저 업로드
		
		// js FormData 클래스를 사용하여 서버에 파일 업로드 준비
		
		let formData = new FormData()
		formData.append('file', file)
		
		
		
		file_up(formData)
		
	}
		return false;
		
	})
	
	
	
	
	
	
var contextCallBack = function(key, options){
		
		if(key == 'edit'){
			let img_seq = $(this).attr("data-seq");
			document.location.href="${rootPath}/image/update/"+ img_seq
		}
		
		if(key == 'delete'){
			
			if(confirm('이미지를 삭제할까요?')){
				
				let img_seq = $(this).attr("data-seq");
				
				$.ajax({
					
					
					url : "${rootPath}/image/delete", data:{img_seq : img_seq}, type:'POST',
					success : function(result){
						
						if(result < 1){
							alert('삭제도중 문제발생')
						}
						
							
					},
					error: function(){
						alert('서버 통신 오류')
					}
					
				})
				
				
				document.location.replace("${rootPath}/")	
				
				return false;		// 이벤트 버블링 금지
				
				//
				//document.location.href="${rootPath}/image/delete/" + img_seq
				
				
			}
		}
	}
	
	
	
	/*
	
		jquery 응용
		마우스 제어해서 context menu(오른쪽 마우스 클릭 메뉴)
		만들어주는 tool
	
	*/
	
	
	$.contextMenu({
		selector: '.img_card', items: {
			
			'edit': {name:'수정', icon: 'edit'},
			'delete': {name:'삭제', icon: 'delete'}
			
		},
		callback: contextCallBack
	})
	
	
	
})
</script>


</head>
<body>
<header>
	<h3>이미지 갤러리</h3>
</header>

<section>

	<c:if test="${BODY == 'UPLOAD'}">
		<%@ include file="/WEB-INF/views/body/img_upload.jsp"%>
	</c:if>

</section>


<section id="img_box">
	
	<c:forEach items="${IMGLIST}" var="img">
		<%@ include file="/WEB-INF/views/include/img_card.jsp" %>
	</c:forEach>

</section>

<section>
	<button id="btn_img_up" class="bz-button">이미지 올리기</button>
</section>
</body>
</html>