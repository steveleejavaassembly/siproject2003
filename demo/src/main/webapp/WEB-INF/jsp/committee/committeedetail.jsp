<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<title>국회를 생각하는 사람들 &#124; 민주당</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="keywords" content="민주당">
<meta name="description" content="국회를 생각하는 사람들">
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" href="../resources/common/css/Thethinkers.css">
<script src="../resources/common/js/libs/browser.min.js"></script>
<script src="../resources/common/js/libs/jquery.min.js"></script>
<script src="../resources/common/js/libs/plugins.js"></script>
<script src="../resources/common/js/pub/pub_ui.js"></script>
<script src="../resources/common/js/pub/pub_grid.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script>

window.onload = function() {

	//소속 상임위원회 갯수 출력
	var list2 = new Array();
	<c:forEach items="${detail.mybill}" var="item">
	list2.push("${item}");
	</c:forEach>
	var num = list2.length;
	var ttest2 = document.getElementById("test2");
	ttest2.innerHTML = '<strong>'+num+'</strong>개';


	var evaluationlist = JSON.parse('${evaluationlist}');
	var interestlist = JSON.parse('${interestlist}');
	var ttest = document.getElementById("test");
	var interest = document.getElementById("interest");
	var lawmakername = '${detail.name}';
	
	//평가하기 위한 버튼이미지 상황에 맞게
	//ex) evaluationlist[i].empNm == lawmakername -> 디비에서 가져온 로그인된 평가리스트의 이름들중에 현재페이지 의원과 이름이 같다면 
	//이미지 버튼은 좋아요 버튼으로
	for(var i = 0; i < evaluationlist.length; i++){
		if(evaluationlist[i].empNm == lawmakername){
			if(evaluationlist[i].like_yn == 1){
				ttest.innerHTML = "<button type='button' onclick='likeAjax()'><img src='../resources/images/common/btn_support.png'></button>"
			 		+"<div class='dropdown-content'>"
			 		+"<p><button type='button' onclick='modifyhatelawmaker()'><img src='../resources/images/common/btn_no_support.png'></button></p></div>";
			 	break;
			}else if(evaluationlist[i].like_yn == 2){
				ttest.innerHTML = "<button type='button' onclick='unlikeAjax()'><img src='../resources/images/common/btn_no_support.png'></button>"
			 		+"<div class='dropdown-content'>"
					+"<p><button type='button' onclick='modifylikelawmaker()'><img src='../resources/images/common/btn_support.png'></button></p></div>"; 
				break;
			}
		}
 	}
	
	for(var i = 0; i < interestlist.length; i++){
		if(interestlist[i].name == lawmakername){
			interest.innerHTML = "<img src='../resources/images/common/attract-5.png'id='Group-5'>";
		}
 	}
};


$( document ).ready( function() {
	   $('span:contains("더불어민주당")').css('color','#1970b9');
	   $('span:contains("미래통합당")').css('color','#EF426F');
	   $('span:contains("민생당")').css('color','#0BA95F');
	   $('span:contains("미래한국당")').css('color','#C9151E');
	   $('span:contains("우리공화당")').css('color','#009900');
	   $('span:contains("정의당")').css('color','#ffcc03');
	   $('span:contains("민중당")').css('color','#f47a20');
});


////////////////////////////////////////////////////////////////////////////
////////////////////////////////Ajax////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////


var ajax = new XMLHttpRequest();


//[Ajax_4] - 로그인한 유저가 어떤의원을 좋아요
function likeAjax() {

	var loginFlag = '${loginFlag}';
	if(loginFlag != 'SUCCESS'){
		alert('로그인이 필요합니다.');
		return;
	}
	
	var name = '${detail.name}';
	
	 ajax.onreadystatechange = likecallbackAjax;
	 ajax.open("GET", "/assembly/likeAjax?name="+ encodeURIComponent(name),true);
	 ajax.setRequestHeader("Accept", "application/json");
	 ajax.send();
}
//[Ajax_4(callback)] - 로그인한 유저가 어떤의원을 좋아요
function likecallbackAjax() {
	if (ajax.readyState == 4) {
		alert('좋아요');
		window.location.reload();
	}
}


//[Ajax_5] - 로그인한 유저가 어떤의원을 싫어요
function unlikeAjax(){

	var loginFlag = '${loginFlag}';
	if(loginFlag != 'SUCCESS'){
		alert('로그인이 필요합니다.');
		return;
	}
	
	var name = '${detail.name}';
	
    ajax.onreadystatechange = hatecallbackajaxjson;
    ajax.open("GET", "/assembly/hateAjax?name="+ encodeURIComponent(name),true);
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
}
//[Ajax_5(callback)] - 로그인한 유저가 어떤의원을 싫어요
function hatecallbackajaxjson() {
    if (ajax.readyState == 4) {
        alert("싫어요!!")
        window.location.reload();
    }
}


//[Ajax_6] - 로그인한 유저가 어떤의원이 좋아졌어요
function modifylikelawmaker(){
	
	var name = '${detail.name}';
	ajax.onreadystatechange = modifylikecallbackajaxjson;
    ajax.open("GET", "/assembly/modifyLikeAjax?name="+ encodeURIComponent(name),true);
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
}
//[Ajax_6(callback)] - 로그인한 유저가 어떤의원이 좋아졌어요
function modifylikecallbackajaxjson(){
	if (ajax.readyState == 4) {
      alert("좋아졌어요!!")
      //화면전환 없이 비동기 방식으로 하고 싶었지만 이미지 버튼 변환에 있어서 이슈가있어 reload...
     	window.location.reload();
		//jQuery("#grid").setGridParam(jsonlist).trigger("reloadGrid");
  }
}



//[Ajax_7] - 로그인한 유저가 어떤의원이 싫어졌어요
function modifyhatelawmaker(){
	
	var name = '${detail.name}';
	ajax.onreadystatechange = modifyhatecallbackajaxjson;
    ajax.open("GET", "/assembly/modifyHateAjax?name="+ encodeURIComponent(name),true);
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
}
//[Ajax_7(callback)] - 로그인한 유저가 어떤의원이 싫어졌어요
function modifyhatecallbackajaxjson(){
	if (ajax.readyState == 4) {
        alert("싫어졌어요!!")
        //화면전환 없이 비동기 방식으로 하고 싶었지만 이미지 버튼 변환에 있어서 이슈가있어 reload...
       	window.location.reload();
		//jQuery("#grid").setGridParam(jsonlist).trigger("reloadGrid");
    }
}


//[Ajax_4] - 로그인한 유저가 어떤의원을 좋아요
function clkAttract(){
	
	var loginFlag = '${loginFlag}';
	if(loginFlag != 'SUCCESS'){
		alert('로그인이 필요합니다.');
		return;
	}
	
	var interestlist = JSON.parse('${interestlist}');
	var lawmakername = '${detail.name}';
	var temp = '';
	var tempNum = 0;
	

	for(var i = 0; i < interestlist.length; i++){
		if(interestlist[i].name == lawmakername){
			temp = interestlist[i].name;
			tempNum = interestlist[i].lawnum;
		}
	}
	

	// [Ajax_3] - 로그인한 유저가 관심의원을 취소함
	if(temp==lawmakername){
		ajax.onreadystatechange = deleteinterestcallbackajaxjson;
		ajax.open("GET", "/assembly/deleteInterestAjax?lawnum="+ encodeURIComponent(tempNum),true);
		ajax.setRequestHeader("Accept", "application/json");
		ajax.send();
	}

	// [Ajax_2] - 로그인한 유저가 관심의원을 등록함
	else{
		ajax.onreadystatechange = addinterestcallbackajaxjson;
		ajax.open("GET", "/assembly/addInterestAjax?name="+ encodeURIComponent(lawmakername),true);
		ajax.setRequestHeader("Accept", "application/json");
		ajax.send();
	}
}


// [Ajax_2(callback)] - 로그인한 유저가 관심의원을 등록함
function addinterestcallbackajaxjson(){
	if (ajax.readyState == 4) {
        alert("관심의원 등록!!")
        //화면전환 없이 비동기 방식으로 하고 싶었지만 이미지 버튼 변환에 있어서 이슈가있어 reload...
       	window.location.reload();
		//jQuery("#grid").setGridParam(jsonlist).trigger("reloadGrid");
    }
}


// [Ajax_3(callback)] - 로그인한 유저가 관심의원을 취소함
function deleteinterestcallbackajaxjson(){
	if (ajax.readyState == 4) {
        alert("관심의원 삭제!!")
        //화면전환 없이 비동기 방식으로 하고 싶었지만 이미지 버튼 변환에 있어서 이슈가있어 reload...
       	window.location.reload();
		//jQuery("#grid").setGridParam(jsonlist).trigger("reloadGrid");
    }
}

</script>

<style>
         .dropdown {
             position: relative;
             display: inline-block;
         }
         .dropdown-content {
             display: none;
             position: absolute;

             margin-bottom: auto;
         }
         .dropdown:hover .dropdown-content { display: block; }
         
         .ion-checkmark-round---Ionicons {
  			width: 5.5px;
  			height: 6.5px;
  			object-fit: contain;
  			font-family: Ionicons;
  			font-size: 6.5px;
  			font-weight: normal;
 			font-stretch: normal;
  			font-style: normal;
  			line-height: normal;
  			letter-spacing: normal;
  			text-align: center;
  			color: #ffffff;
  		}
  			
  		.Group-5 {
  			width: 44.5px;
 			height: 16px;
  			object-fit: contain;
		}
		
		.Group-15-Copy {
  			width: 57px;
  			height: 16px;
  			object-fit: contain;
		}
}
</style> 

</head>
<body>
<div class="wrapper">

    <!-- s: header -->
    <header class="header in-sec">
        <div class="left-area">
            <button type="button" class="btn btn-back" onclick="location.href='/assembly/committee'" ><span><i class="ico ico-back">뒤로가기</i></span></button>
        </div>
    </header>
    <!-- e: header -->


    <!-- s: container -->
    <div class="container">
        <!-- s: content -->
        <div id="content" class="content pad-t0">
            <!-- s: section container -->
            <section class="section-container pad-t0">
				<!-- s: party view -->
				<div class="party-fixed">
					<div class="img-area" >
						<img src="${detail.photo}" alt="" style="width:100%;">
					</div>
				</div>
				<div class="party-area">
					<div class="party-header">
						<div class="btn-area">
							<button type="button" class="btn btn-handler" data-role="handler"><span><i class="ico ico-handler">토글버튼</i></span></button>
						</div>
						<div class="title-area" >
							<!--<strong class="tit tmj">${item.name}</strong>-->
							<strong class="tit tmj"><c:out value='${detail.name}'></c:out></strong>
							
							<p class="txt">
							<span>
								<c:out value='${detail.party}'>
							</span>
							
							</c:out>&middot;${detail.electioncnt}</p>
							
							<p></br>
							<a id="interest"><img src="../resources/images/common/group-5.svg" id="Group-5"></a>
							<button type="button" onclick="clkAttract()"><img src="../resources/images/common/group-15-copy.svg" id="Group-15-Copy"></button>
							</p>
							
						
						</div>
						<!-- s: tab -->
						<div class="tab swiper-container">
							<ul class="tab-nav swiper-wrapper">
								<!-- <li ><a href="javascript:;" data-role="tab"  data-id="tabContent1">타임라인</a></li> -->
								<li class="is-selected"><a href="javascript:;" data-role="tab" data-id="tabContent2">기본정보</a></li>
								<li><a href="javascript:;" data-role="tab" data-id="tabContent3">실적</a></li>
							</ul>
						</div>
						<!-- e: tab -->
					</div>
					<div class="party-container">
						<div class="in-sec">
	
							
							<div id="tabContent2" class="tab-content">
								<div class="box-round">
									<div class="basic-info">
										<dl>
											<dt>소속위원회</dt>
											<dd>${detail.committee}</dd>
											
											<dt>학력</dt>
											<dd>
												<ul>
													<li class="bul-circle">${detail.history}</li>
													<li class="bul-circle"></li>
													<li class="bul-circle"></li>
												</ul>
											</dd>
										</dl>
									</div>
								</div>
							</div>
							
							<!-- s: 실적 -->
							<div id="tabContent3" class="tab-content" style="display:none;">
								<div class="box-round">
									<div class="perform-info">
										<p class="txt" >의원평가</p>
											<div class="dropdown" id="test">
                                            	<button type='button'><img src='../resources/images/common/btn_evaluation.png'></button>
			 									<div class='dropdown-content'><p><button type='button' onclick='likeAjax()'><img src='../resources/images/common/btn_support.png'></button></p>
			 									<p><button type='button' onclick='unlikeAjax()'><img src='../resources/images/common/btn_no_support.png'></button></p></div>
                                        	</div>
										<p class="count"><strong>${detail.evaluation}</strong>%</p>
										<p class="explan">전체 원내 정당 9개 중 <em>1</em>위 (평균 25235P)</p>
									</div>
										
								</div>
								<div class="box-round">
									<div class="perform-info">
										<p class="txt">소속 상임위원회 수</p>
										<p class="count" id="test2"></p>
										<p class="explan">전체 원내 정당 9개 중 <em>1</em>위 (평균 1.9개)</p>
									</div>
								</div>
							</div>
							<!-- e: 실적 -->
							
						</div>
					</div>
				</div>
				<!-- e: party view -->
            </section>
            <!-- e: section container -->
        </div>
        <!-- e: content -->
    </div>
    <!-- e: container -->


</div>
</body>
</html>