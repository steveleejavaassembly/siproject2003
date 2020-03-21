<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<title>국회를 생각하는 사람들 &#124; 민주당</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="keywords" content="민주당">
<meta name="description" content="국회를 생각하는 사람들">

<link rel="stylesheet" href="resources/common/css/Thethinkers.css">
<script src="resources/common/js/libs/browser.min.js"></script>
<script src="resources/common/js/libs/jquery.min.js"></script>
<script src="resources/common/js/libs/plugins.js"></script>
<script src="resources/common/js/pub/pub_ui.js"></script>
<script src="resources/common/js/pub/pub_grid.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<!--  See http://de.cdnjs.com/libraries/jqgrid -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/css/ui.jqgrid.css" type="text/css" rel="stylesheet" media="screen"/>
<script src ="http://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script type="text/javascript">


////////////////////////////////////////////////////////////////////////////
///////////////////////////////Jqgrid///////////////////////////////////////
////////////////////////////////////////////////////////////////////////////


	var jsonlist =[{"evaluation":50.0,"election":"울산 울주군","committee":"산업통상자원중소벤처기업위원회","name":"강길부","electioncnt":"4선","party":"무소속"},{"evaluation":66.7,"election":"서울 은평구을","committee":"기획재정위원회","name":"강병원","electioncnt":"초선","party":"더불어민주당"},{"evaluation":47.1,"election":"경남 산청군함양군거창군합천군","committee":"농림축산식품해양수산위원회","name":"강석진","electioncnt":"초선","party":"미래통합당"},{"evaluation":43.8,"election":"경북 영양군영덕군봉화군울진군","committee":"농림축산식품해양수산위원회","name":"강석호","electioncnt":"3선","party":"미래통합당"},{"evaluation":53.3,"election":"제주 제주시갑","committee":"행정안전위원회","name":"강창일","electioncnt":"4선","party":"더불어민주당"},{"evaluation":60.0,"election":"비례대표","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,국회운영위원회,환경노동위원회","name":"강효상","electioncnt":"초선","party":"미래통합당"},{"evaluation":63.6,"election":"충남 아산시을","committee":"국토교통위원회,예산결산특별위원회","name":"강훈식","electioncnt":"초선","party":"더불어민주당"},{"evaluation":44.4,"election":"충북 증평군진천군음성군","committee":"농림축산식품해양수산위원회","name":"경대수","electioncnt":"재선","party":"미래통합당"},{"evaluation":57.1,"election":"서울 노원구갑","committee":"국회운영위원회,정무위원회","name":"고용진","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"대구 달서구갑","committee":"산업통상자원중소벤처기업위원회","name":"곽대훈","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"대구 중구남구","committee":"교육위원회","name":"곽상도","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"예산결산특별위원회,행정안전위원회","name":"권미혁","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"강원 강릉시","committee":"기획재정위원회","name":"권성동","electioncnt":"3선","party":"미래통합당"},{"evaluation":50.0,"election":"광주 광산구을","committee":"행정안전위원회","name":"권은희","electioncnt":"재선","party":"무소속"},{"evaluation":50.0,"election":"경기 화성시병","committee":"산업통상자원중소벤처기업위원회","name":"권칠승","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 강서구갑","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,법제사법위원회","name":"금태섭","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 성북구을","committee":"국회 코로나19 대책 특별위원회,보건복지위원회,예산결산특별위원회","name":"기동민","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"광주 북구갑","committee":"과학기술정보방송통신위원회","name":"김경진","electioncnt":"초선","party":"무소속"},{"evaluation":40.0,"election":"경기 부천시원미구갑","committee":"기획재정위원회","name":"김경협","electioncnt":"재선","party":"더불어민주당"},{"evaluation":50.0,"election":"전북 군산시","committee":"산업통상자원중소벤처기업위원회","name":"김관영","electioncnt":"재선","party":"무소속"},{"evaluation":33.3,"election":"경북 안동시","committee":"기획재정위원회","name":"김광림","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"전북 전주시갑","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,국회 코로나19 대책 특별위원회,보건복지위원회,예산결산특별위원회","name":"김광수","electioncnt":"초선","party":"민생당"},{"evaluation":44.4,"election":"비례대표","committee":"산업통상자원중소벤처기업위원회","name":"김규환","electioncnt":"초선","party":"미래통합당"},{"evaluation":40.0,"election":"강원 원주시갑","committee":"산업통상자원중소벤처기업위원회","name":"김기선","electioncnt":"재선","party":"미래통합당"},{"evaluation":40.0,"election":"부산 북구강서구을","committee":"법제사법위원회","name":"김도읍","electioncnt":"재선","party":"미래통합당"},{"evaluation":33.3,"election":"광주 광산구갑","committee":"환경노동위원회","name":"김동철","electioncnt":"4선","party":"민생당"},{"evaluation":40.0,"election":"경기 김포시갑","committee":"기획재정위원회","name":"김두관","electioncnt":"초선","party":"더불어민주당"},{"evaluation":45.5,"election":"경기 안산시단원구갑","committee":"보건복지위원회","name":"김명연","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"부산 중구영도구","committee":"외교통일위원회","name":"김무성","electioncnt":"6선","party":"미래통합당"},{"evaluation":40.0,"election":"경기 용인시을","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,정보위원회,행정안전위원회","name":"김민기","electioncnt":"재선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 성남시분당구갑","committee":"행정안전위원회","name":"김병관","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 동작구갑","committee":"국방위원회,정보위원회","name":"김병기","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 성남시분당구을","committee":"정무위원회","name":"김병욱","electioncnt":"초선","party":"더불어민주당"},{"evaluation":55.6,"election":"대구 수성구갑","committee":"외교통일위원회","name":"김부겸","electioncnt":"4선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"국회운영위원회,산업통상자원중소벤처기업위원회","name":"김삼화","electioncnt":"초선","party":"무소속"},{"evaluation":50.0,"election":"대구 서구","committee":"국토교통위원회","name":"김상훈","electioncnt":"재선","party":"미래통합당"},{"evaluation":40.0,"election":"경기 부천시소사구","committee":"국회 코로나19 대책 특별위원회,보건복지위원회,예산결산특별위원회","name":"김상희","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"경북 경주시","committee":"국토교통위원회,예산결산특별위원회","name":"김석기","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 도봉구을","committee":"정무위원회","name":"김선동","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 관악구갑","committee":"기획재정위원회","name":"김성식","electioncnt":"재선","party":"무소속"},{"evaluation":50.0,"election":"경기 동두천시연천군","committee":"여성가족위원회,예산결산특별위원회,정무위원회","name":"김성원","electioncnt":"초선","party":"미래통합당"},{"evaluation":40.0,"election":"경남 창원시진해구","committee":"농림축산식품해양수산위원회","name":"김성찬","electioncnt":"재선","party":"미래한국당"},{"evaluation":66.7,"election":"서울 강서구을","committee":"행정안전위원회","name":"김성태","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 노원구병","committee":"산업통상자원중소벤처기업위원회","name":"김성환","electioncnt":"초선","party":"더불어민주당"},{"evaluation":44.4,"election":"부산 금정구","committee":"보건복지위원회","name":"김세연","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"문화체육관��위원회,여성가족위원회,예산결산특별위원회","name":"김수민","electioncnt":"초선","party":"무소속"},{"evaluation":66.7,"election":"비례대표","committee":"국회 코로나19 대책 특별위원회,보건복지위원회","name":"김순례","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"국회 코로나19 대책 특별위원회,보건복지위원회","name":"김승희","electioncnt":"초선","party":"미래통합당"},{"evaluation":40.0,"election":"경기 포천시가평군","committee":"행정안전위원회","name":"김영우","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 영등포구갑","committee":"문화체육관광위원회","name":"김영주","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 수원시병","committee":"기획재정위원회","name":"김영진","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"부산 부산진구갑","committee":"문화체육관광위원회","name":"김영춘","electioncnt":"3선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 서대문구을","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,국회 코로나19 대책 특별위원회,국회운영위원회,행정안전위원회","name":"김영호","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 양천구을","committee":"정무위원회","name":"김용태","electioncnt":"3선","party":"미래통합당"},{"evaluation":40.0,"election":"경남 진주시을","committee":"외교통일위원회","name":"김재경","electioncnt":"4선","party":"미래통합당"},{"evaluation":50.0,"election":"경북 상주시군위군의성군청송군","committee":"문화체육관광위원회,예산결산특별위원회","name":"김재원","electioncnt":"3선","party":"미래통합당"},{"evaluation":40.0,"election":"경기 군포시갑","committee":"기획재정위원회","name":"김정우","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"경북 포항시북구","committee":"국회운영위원회,산업통상자원중소벤처기업위원회","name":"김정재","electioncnt":"초선","party":"미래통합당"},{"evaluation":50.0,"election":"경남 김해시을","committee":"국회운영위원회,기획재정위원회,예산결산특별위원회","name":"김정호","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"부산 남구갑","committee":"정무위원회","name":"김정훈","electioncnt":"4선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"국방위원회","name":"김종대","electioncnt":"초선","party":"정의당"},{"evaluation":66.7,"election":"충남 논산시계룡시금산군","committee":"법제사법위원회","name":"김종민","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"정무위원회","name":"김종석","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"전북 김제시부안군","committee":"농림축산식품해양수산위원회","name":"김종회","electioncnt":"초선","party":"민생당"},{"evaluation":66.7,"election":"울산 동구","committee":"과학기술정보방송통신위원회","name":"김종훈","electioncnt":"초선","party":"민중당"},{"evaluation":66.7,"election":"비례대표","committee":"국방위원회","name":"김중로","electioncnt":"초선","party":"미래통합당"},{"evaluation":40.0,"election":"강원 춘천시","committee":"행정안전위원회","name":"김진태","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 수원시무","committee":"국방위원회,국회 코로나19 대책 특별위원회","name":"김진표","electioncnt":"4선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 안산시상록구을","committee":"국토교통위원회","name":"김철민","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 성남시수정구","committee":"환경노동위원회","name":"김태년","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"충남 보령시서천군","committee":"농림축산식품해양수산위원회","name":"김태흠","electioncnt":"재선","party":"미래통합당"},{"evaluation":33.3,"election":"경기 안성시","committee":"환경노동위원회","name":"김학용","electioncnt":"3선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 남양주시을","committee":"행정안전위원회","name":"김한정","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"경남 거제시","committee":"교육위원회,국회운영위원회","name":"김한표","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"부산 연제구","committee":"교육위원회","name":"김해영","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"농림축산식품해양수산위원회,예산결산특별위원회","name":"김현권","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 고양시정","committee":"보건복지위원회","name":"김현미","electioncnt":"3선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"교육위원회,국회운영위원회,여성가족위원회","name":"김현아","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 동작구을","committee":"국회 코로나19 대책 특별위원회,기획재정위원회","name":"나경원","electioncnt":"4선","party":"미래통합당"},{"evaluation":50.0,"election":"서울 송파구병","committee":"보건복지위원회","name":"남인순","electioncnt":"재선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 마포구갑","committee":"과학기술정보방송통신위원회","name":"노웅래","electioncnt":"3선","party":"더불어민주당"},{"evaluation":40.0,"election":"충북 청주시흥덕구","committee":"국방위원회","name":"도종환","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"인천 남동구갑","committee":"보건복지위원회,예산결산특별위원회","name":"맹성규","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"환경노동위원회","name":"문진국","electioncnt":"초선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 의정부시갑","name":"문희상","electioncnt":"6선","party":"무소속"},{"evaluation":66.7,"election":"인천 연수구을","committee":"국토교통위원회,국회운영위원회","name":"민경욱","electioncnt":"초선","party":"미래통합당"},{"evaluation":50.0,"election":"서울 동대문구을","committee":"정무위원회","name":"민병두","electioncnt":"3선","party":"더불어민주당"},{"evaluation":40.0,"election":"경남 김해시갑","committee":"국방위원회","name":"민홍철","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"교육위원회,국회운영위원회","name":"박경미","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 수원시정","committee":"과학기술정보방송통신위원회","name":"박광온","electioncnt":"재선","party":"더불어민주당"},{"evaluation":40.0,"election":"경남 진주시갑","committee":"과학기술정보방송통신위원회,국회 코로나19 대책 특별위원회","name":"박대출","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"충북 보은군옥천군영동군괴산군","committee":"국토교통위원회,예산결산특별위원회","name":"박덕흠","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"울산 남구을","committee":"국방위원회","name":"박맹우","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"경북 포항시남구울릉군","committee":"기획재정위원회","name":"박명재","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"대전 서구을","committee":"산업통상자원중소벤처기업위원회","name":"박범계","electioncnt":"재선","party":"더불어민주당"},{"evaluation":50.0,"election":"대전 서구갑","committee":"외교통일위원회","name":"박병석","electioncnt":"5선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"과학기술정보방송통신위원회","name":"박선숙","electioncnt":"재선","party":"민생당"},{"evaluation":66.7,"election":"서울 서초구을","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,과학기술정보방송통신위원회","name":"박성중","electioncnt":"초선","party":"미래통합당"},{"evaluation":100.0,"election":"경기 안산시단원구을","committee":"국토교통위원회","name":"박순자","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 구로구을","committee":"기획재정위원회","name":"박영선","electioncnt":"4선","party":"더불어민주당"},{"evaluation":66.7,"election":"경남 창원시의창구","committee":"예산결산특별위원회,행정안전위원회","name":"박완수","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"충남 천안시을","committee":"농림축산식품해양수산위원회","name":"박완주","electioncnt":"재선","party":"더불어민주당"},{"evaluation":100.0,"election":"서울 강북구을","committee":"교육위원회","name":"박용진","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 송파구갑","committee":"문화체육관광위원회","name":"박인숙","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"부산 남구을","committee":"국토교통위원회","name":"박재호","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"경기 파주시을","committee":"국회 코로나19 대책 특별위원회,외교통일위원회","name":"박정","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"서울 은평구갑","committee":"법제사법위원회","name":"박주민","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"광주 동구남구을","committee":"외교통일위원회","name":"박주선","electioncnt":"4선","party":"민생당"},{"evaluation":100.0,"election":"비례대표","committee":"농림축산식품해양수산위원회","name":"박주현","electioncnt":"초선","party":"민생당"},{"evaluation":66.7,"election":"전남 목포시","committee":"법제사법위원회","name":"박지원","electioncnt":"4선","party":"민생당"},{"evaluation":100.0,"election":"인천 연수구갑","committee":"교육위원회,국회운영위원회","name":"박찬대","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 중랑구을","committee":"국토교통위원회,국회 코로나19 대책 특별위원회","name":"박홍근","electioncnt":"재선","party":"더불어민주당"},{"evaluation":50.0,"election":"경북 구미시갑","committee":"국방위원회,국회 코로나19 대책 특별위원회","name":"백승주","electioncnt":"초선","party":"미래통합당"},{"evaluation":40.0,"election":"경기 광명시갑","committee":"산업통상자원중소벤처기업위원회","name":"백재현","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 수원시을","committee":"법제사법위원회","name":"백혜련","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"충북 청주시청원구","committee":"과학기술정보방송통신위원회","name":"변재일","electioncnt":"4선","party":"더불어민주당"},{"evaluation":100.0,"election":"전남 영암군무안군신안군","committee":"국회운영위원회,농림축산식품해양수산위원회,예산결산특별위원회","name":"서삼석","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 중랑구갑","committee":"교육위원회","name":"서영교","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"경기 화성시갑","committee":"국방위원회","name":"서청원","electioncnt":"8선","party":"무소속"},{"evaluation":66.7,"election":"경남 양산시을","committee":"국토교통위원회","name":"서형수","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 부천시원미구을","committee":"환경노동위원회","name":"설훈","electioncnt":"4선","party":"더불어민주당"},{"evaluation":100.0,"election":"충남 서산시태안군","committee":"국회운영위원회,예산결산특별위원회,정무위원회","name":"성일종","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"경기 광주시갑","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,행정안전위원회","name":"소병훈","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"전남 나주시화순군","committee":"농림축산식품해양수산위원회,예산결산특별위원회","name":"손금주","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"서울 마포구을","committee":"농림축산식품해양수산위원회","name":"손혜원","electioncnt":"초선","party":"무소속"},{"evaluation":66.7,"election":"광주 서구갑","committee":"산업통상자원중소벤처기업위원회,예산결산특별위원회","name":"송갑석","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"강원 원주시을","committee":"법제사법위원회","name":"송기헌","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"경기 이천시","committee":"국토교통위원회","name":"송석준","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"경북 김천시","committee":"국토교통위원회,예산결산특별위원회","name":"송언석","electioncnt":"초선","party":"미래통합당"},{"evaluation":100.0,"election":"인천 계양구을","committee":"외교통일위원회","name":"송영길","electioncnt":"4선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"여성가족위원회,환경노동위원회","name":"송옥주","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"과학기술정보방송통신위원회,여성가족위원회","name":"송희경","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 영등포구을","committee":"교육위원회,여성가족위원회","name":"신경민","electioncnt":"재선","party":"더불어민주당"},{"evaluation":100.0,"election":"인천 서구을","committee":"문화체육관광위원회","name":"신동근","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"여성가족위원회,환경노동위원회","name":"신보라","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"경기 성남시중원구","committee":"국회 코로나19 대책 특별위원회,보건복지위원회,정보위원회","name":"신상진","electioncnt":"4선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"과학기술정보방송통신위원회,여성가족위원회,예산결산특별위원회","name":"신용현","electioncnt":"초선","party":"무소속"},{"evaluation":66.7,"election":"경기 의왕시과천시","committee":"환경노동위원회","name":"신창현","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"기획재정위원회,예산결산특별위원���","name":"심기준","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"경기 고양시갑","committee":"기획재정위원회","name":"심상정","electioncnt":"3선","party":"정의당"},{"evaluation":66.7,"election":"서울 강동구을","committee":"예산결산특별위원회,외교통일위원회","name":"심재권","electioncnt":"3선","party":"더불어민주당"},{"evaluation":60.0,"election":"경기 안양시동안구을","committee":"국회운영위원회,기획재정위원회,정보위원회","name":"심재철","electioncnt":"5선","party":"미래통합당"},{"evaluation":50.0,"election":"서울 동대문구갑","committee":"국방위원회","name":"안규백","electioncnt":"3선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 오산시","committee":"문화체육관광위원회","name":"안민석","electioncnt":"4선","party":"더불어민주당"},{"evaluation":66.7,"election":"인천 중구동구강화군옹진군","committee":"행정안전위원회","name":"안상수","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"전북 완주군진안군무주군장수군","committee":"국토교통위원회,예산결산특별위원회","name":"안호영","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"충남 당진시","committee":"산업통상자원중소벤처기업위원회","name":"어기구","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"경남 사천시남해군하동군","committee":"법제사법위원회","name":"여상규","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"경남 창원시성산구","committee":"교육위원회,여성가족위원회","name":"여영국","electioncnt":"초선","party":"정의당"},{"evaluation":50.0,"election":"강원 태백시횡성군영월군평창군정선군","committee":"문화체육관광위원회,예산결산특별위원회","name":"염동열","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"서울 관악구을","committee":"법제사법위원회","name":"오신환","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"제주 제주시을","committee":"농림축산식품해양수산위원회","name":"오영훈","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"충북 청주시서원구","committee":"보건복지위원회","name":"오제세","electioncnt":"4선","party":"더불어민주당"},{"evaluation":100.0,"election":"서울 서대문구갑","committee":"문화체육관광위원회","name":"우상호","electioncnt":"3선","party":"더불어민주당"},{"evaluation":100.0,"election":"서울 노원구을","committee":"산업통상자원중소벤처기업위원회","name":"우원식","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 평택시갑","committee":"외교통일위원회","name":"원유철","electioncnt":"5선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 부천시오정구","committee":"외교통일위원회","name":"원혜영","electioncnt":"5선","party":"더불어민주당"},{"evaluation":100.0,"election":"제주 서귀포시","committee":"산업통상자원중소벤처기업위원회,예산결산특별위원회","name":"위성곤","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"부산 서구동구","committee":"외교통일위원회","name":"유기준","electioncnt":"4선","party":"미래통합당"},{"evaluation":100.0,"election":"인천 계양구갑","committee":"정무위원회","name":"유동수","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,외교통일위원회","name":"유민봉","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"전북 정읍시고창군","committee":"국회운영위원회,기획재정위원회,정보위원회","name":"유성엽","electioncnt":"3선","party":"민생당"},{"evaluation":66.7,"election":"대구 동구을","committee":"기획재정위원회","name":"유승민","electioncnt":"4선","party":"미래통합당"},{"evaluation":100.0,"election":"서울 성북구갑","committee":"기획재정위원회","name":"유승희","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 고양시병","committee":"과학기술정보방송통신위원회","name":"유은혜","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"경기 평택시을","committee":"국회운영위원회,정무위원회","name":"유의동","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"부산 수영구","committee":"보건복지위원회","name":"유재중","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"인천 남동구을","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,국토교통위원회","name":"윤관석","electioncnt":"재선","party":"더불어민주당"},{"evaluation":100.0,"election":"부산 기장군","committee":"과학기술정보방송통신위원회,예산결산특별위원회","name":"윤상직","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"인천 미추홀구을","committee":"외교통일위원회","name":"윤상현","electioncnt":"3선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"국회운영위원회,보건복지위원회","name":"윤소하","electioncnt":"초선","party":"정의당"},{"evaluation":50.0,"election":"경남 양산시갑","committee":"기획재정위원회","name":"윤영석","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"전남 해남군완도군진도군","committee":"국토교통위원회","name":"윤영일","electioncnt":"초선","party":"민생당"},{"evaluation":100.0,"election":"충남 천안시병","committee":"보건복지위원회","name":"윤일규","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"대구 달서구을","committee":"예산결산특별위원회,행정안전위원회","name":"윤재옥","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"보건복지위원회,여성가족위원회","name":"윤종필","electioncnt":"초선","party":"미래통합당"},{"evaluation":100.0,"election":"부산 해운대구을","committee":"농림축산식품해양수산위원회","name":"윤준호","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"경남 창원시마산회원구","committee":"산업통상자원중소벤처기업위원회","name":"윤한홍","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"경기 구리시","committee":"국토교통위원회","name":"윤호중","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 파주시갑","committee":"국회운영위원회,기획재정위원회","name":"윤후덕","electioncnt":"재선","party":"더불어민주당"},{"evaluation":100.0,"election":"전남 담양군함평군영광군장성군","committee":"과학기술정보방송통신위원회","name":"이개호","electioncnt":"재선","party":"더불어민주당"},{"evaluation":100.0,"election":"충남 천안시갑","committee":"국토교통위원회,국회운영위원회","name":"이규희","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"국회운영위원회,문화체육관광위원회","name":"이동섭","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"경북 영천시청도군","committee":"국회운영위원회,농림축산식품해양수산위원회","name":"이만희","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"충남 아산시갑","committee":"보건복지위원회","name":"이명수","electioncnt":"3선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"환경노동위원회","name":"이상돈","electioncnt":"초선","party":"무소속"},{"evaluation":66.7,"election":"대전 유성구을","committee":"과학기술정보방송통신위원회","name":"이상민","electioncnt":"4선","party":"더불어민주당"},{"evaluation":100.0,"election":"울산 북구","committee":"문화체육관광위원회,예산결산특별위원회","name":"이상헌","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 안양시동안구갑","committee":"외교통일위원회","name":"이석현","electioncnt":"6선","party":"더불어민주당"},{"evaluation":66.7,"election":"강원 속초시고성군양양군","committee":"농림축산식품해양수산위원회","name":"이양수","electioncnt":"초선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 광명시을","committee":"행정안전위원회","name":"이언주","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"환경노동위원회","name":"이용득","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"전남 여수시갑","committee":"산업통상자원중소벤처기업위원회,예산결산특별위원회","name":"이용주","electioncnt":"초선","party":"무소속"},{"evaluation":100.0,"election":"전북 남원시임실군순창군","committee":"국토교통위원회,예산결산특별위원회","name":"이용호","electioncnt":"초선","party":"무소속"},{"evaluation":50.0,"election":"경기 화성시을","committee":"과학기술정보방송통신위원회,국회운영위원회","name":"이원욱","electioncnt":"재선","party":"더불어민주당"},{"evaluation":100.0,"election":"대전 중구","committee":"국토교통위원회","name":"이은권","electioncnt":"초선","party":"미래통합당"},{"evaluation":100.0,"election":"서울 강남구병","committee":"법제사법위원회,정보위원회","name":"이은재","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"서울 구로구갑","committee":"국회운영위원회,외교통일위원회,정보위원회","name":"이인영","electioncnt":"3선","party":"더불어민주당"},{"evaluation":66.7,"election":"대전 동구","committee":"환경노동위원회","name":"이장우","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,법제사법위원회","name":"이재정","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"예산결산특별위원회,환경노동위원회","name":"이정미","electioncnt":"초선","party":"정의당"},{"evaluation":100.0,"election":"전남 순천시","committee":"외교통일위원회","name":"이정현","electioncnt":"3선","party":"무소속"},{"evaluation":50.0,"election":"경기 안양시만안구","committee":"과학기술정보방송통신위원회","name":"이종걸","electioncnt":"5선","party":"더불어민주당"},{"evaluation":100.0,"election":"서울 강남구갑","committee":"산업통상자원중소벤처기업위원회","name":"이종구","electioncnt":"3선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"국방위원회,여성가족위원회","name":"이종명","electioncnt":"초선","party":"미래한국당"},{"evaluation":100.0,"election":"충북 충주시","committee":"산업통상자원중소벤처기업위원회,예산결산특별위원회","name":"이종배","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"경남 창원시마산합포구","committee":"국방위원회","name":"이주영","electioncnt":"5선","party":"미래통합당"},{"evaluation":66.7,"election":"부산 동래구","committee":"정무위원회","name":"이진복","electioncnt":"3선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 수원시갑","committee":"행정안전위원회","name":"이찬열","electioncnt":"3선","party":"미래통합당"},{"evaluation":66.7,"election":"울산 남구갑","committee":"국회 코로나19 대책 특별위원회,행정안전위원회","name":"이채익","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"강원 동해시삼척시","committee":"산업통상자원중소벤처기업위원회","name":"이철규","electioncnt":"초선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"법제사법위원회","name":"이철희","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"전북 익산시갑","committee":"기획재정위원회","name":"이춘석","electioncnt":"3선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,예산결산특별위원회,정무위원회","name":"이태규","electioncnt":"초선","party":"무소속"},{"evaluation":50.0,"election":"경기 군포시을","committee":"정무위원회","name":"이학영","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"인천 서구갑","committee":"교육위원회,예산결산특별위원회","name":"이학재","electioncnt":"3선","party":"미래통합당"},{"evaluation":100.0,"election":"세종특별자치시","committee":"외교통일위원회","name":"이해찬","electioncnt":"7선","party":"더불어민주당"},{"evaluation":66.7,"election":"부산 부산진구을","committee":"국토교통위원회","name":"이헌승","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 하남시","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,국토교통위원회,예산결산특별위원회","name":"이현재","electioncnt":"재선","party":"미래통합당"},{"evaluation":100.0,"election":"서울 서초구갑","committee":"국토교통위원회","name":"이혜훈","electioncnt":"3선","party":"미래통합당"},{"evaluation":100.0,"election":"충북 제천시단양군","committee":"국토교통위원회,예산결산특별위원회","name":"이후삼","electioncnt":"초선","party":"더불어민주당"},{"evaluation":100.0,"election":"서울 금천구","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,산업통상자원중소벤처기업위원회,예산결산특별위원회","name":"이훈","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 도봉구갑","committee":"보건복지위원회,여성가족위원회","name":"인재근","electioncnt":"재선","party":"더불어민주당"},{"evaluation":100.0,"election":"비례대표","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,환경노동위원회","name":"임이자","electioncnt":"초선","party":"미래통합당"},{"evaluation":100.0,"election":"비례대표","committee":"교육위원회","name":"임재훈","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"경기 광주시을","committee":"국토교통위원회,여성가족위원회,예산결산특별위원회","name":"임종성","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"광주 동구남구갑","committee":"정무위원회","name":"장병완","electioncnt":"3선","party":"민생당"},{"evaluation":50.0,"election":"경북 구미시을","committee":"산업통상자원중소벤처기업위원회","name":"장석춘","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"행정안전위원회","name":"장정숙","electioncnt":"초선","party":"민생당"},{"evaluation":66.7,"election":"부산 사상구","committee":"법제사법위원회,예산결산특별위원회","name":"장제원","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"부산 북구강서구갑","committee":"��무위원회","name":"전재수","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 안산시상록구갑","committee":"예산결산특별위원회,정무위원회,정보위원회","name":"전해철","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 강남구을","committee":"환경노동위원회","name":"전현희","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 광진구갑","committee":"행정안전위원회","name":"전혜숙","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,교육위원회,여성가족위원회","name":"전희경","electioncnt":"초선","party":"미래통합당"},{"evaluation":50.0,"election":"울산 중구","committee":"법제사법위원회,예산결산특별위원회","name":"정갑윤","electioncnt":"5선","party":"미래통합당"},{"evaluation":66.7,"election":"전북 전주시병","committee":"국토교통위원회","name":"정동영","electioncnt":"4선","party":"민생당"},{"evaluation":40.0,"election":"경기 여주시양평군","committee":"외교통일위원회","name":"정병국","electioncnt":"5선","party":"미래통합당"},{"evaluation":50.0,"election":"경기 양주시","committee":"법제사법위원회","name":"정성호","electioncnt":"3선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 종로구","committee":"문화체육관광위원회","name":"정세균","electioncnt":"6선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 강북구갑","committee":"외교통일위원회,정보위원회","name":"정양석","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"대전 대덕구","committee":"과학기술정보방송통신위원회,예산결산특별위원회","name":"정용기","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"충북 청주시상당구","committee":"산업통상자원중소벤처기업위원회","name":"정우택","electioncnt":"4선","party":"미래통합당"},{"evaluation":66.7,"election":"전북 전주시을","committee":"농림축산식품해양수산위원회,예산결산특별위원회","name":"정운천","electioncnt":"초선","party":"미래한국당"},{"evaluation":66.7,"election":"인천 부평구갑","committee":"국회운영위원회,산업통상자원중소벤처기업위원회","name":"정유섭","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"산업통상자원중소벤처기업위원회,여성가족위원회","name":"정은혜","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"전남 광양시곡성군구례군","committee":"보건복지위원회","name":"정인화","electioncnt":"초선","party":"무소속"},{"evaluation":50.0,"election":"경기 고양시을","committee":"정무위원회","name":"정재호","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"경남 통영시고성군","committee":"국회운영위원회,법제사법위원회,예산결산특별위원회","name":"정점식","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"대구 동구갑","committee":"국방위원회","name":"정종섭","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"충남 공주시부여군청양군","committee":"외교통일위원회","name":"정진석","electioncnt":"4선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"국회운영위원회,보건복지위원회,여성가족위원회","name":"정춘숙","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"대구 북구갑","committee":"국회 코로나19 대책 특별위원회,예산결산특별위원회,정무위원회","name":"정태옥","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"국회운영위원회,정무위원회","name":"제윤경","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"부산 사하구을","committee":"문화체육관광위원회","name":"조경태","electioncnt":"4선","party":"미래통합당"},{"evaluation":66.7,"election":"전북 익산시을 ","committee":"국회운영위원회,산업통상자원중소벤처기업위원회","name":"조배숙","electioncnt":"4선","party":"민생당"},{"evaluation":66.7,"election":"대전 유성구갑","committee":"교육위원회,국회 코로나19 대책 특별위원회,예산결산특별위원회","name":"조승래","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"대구 달서구병","committee":"행정안전위원회","name":"조원진","electioncnt":"3선","party":"우리공화당"},{"evaluation":50.0,"election":"경기 남양주시갑","committee":"국토교통위원회","name":"조응천","electioncnt":"초선","party":"더불어민주당"},{"evaluation":40.0,"election":"경기 시흥시을","committee":"기획재정위원회","name":"조정식","electioncnt":"4선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"문화체육관광위원회","name":"조훈현","electioncnt":"초선","party":"미래한국당"},{"evaluation":50.0,"election":"경기 남양주시병","committee":"법제사법위원회,예산결산특별위원회","name":"주광덕","electioncnt":"재선","party":"미래통합당"},{"evaluation":50.0,"election":"전남 여수시을","committee":"국토교통위원회","name":"주승용","electioncnt":"4선","party":"민생당"},{"evaluation":66.7,"election":"대구 수성구을","committee":"정무위원회","name":"주호영","electioncnt":"4선","party":"미래통합당"},{"evaluation":66.7,"election":"서울 중구성동구을","committee":"예산결산특별위원회,정무위원회","name":"지상욱","electioncnt":"초선","party":"미래통합당"},{"evaluation":50.0,"election":"서울 강동구갑","committee":"보건복지위원회,정보위원회","name":"진선미","electioncnt":"재선","party":"더불어민주당"},{"evaluation":50.0,"election":"서울 용산구","committee":"농림축산식품해양수산위원회","name":"진영","electioncnt":"4선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"법제사법위원회","name":"채이배","electioncnt":"초선","party":"민생당"},{"evaluation":50.0,"election":"광주 서구을","committee":"외교통일위원회","name":"천정배","electioncnt":"6선","party":"민생당"},{"evaluation":50.0,"election":"광주 북구을","committee":"문화체육관광위원회","name":"최경환","electioncnt":"초선","party":"민생당"},{"evaluation":50.0,"election":"경북 영주시문경시예천군","committee":"문화체육관광위원회","name":"최교일","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"보건복지위원회","name":"최도자","electioncnt":"초선","party":"민생당"},{"evaluation":66.7,"election":"비례대표","committee":"과학기술정보방송통신위원회","name":"최연혜","electioncnt":"초선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"정무위원회","name":"최운열","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"부산 사하구갑","committee":"산업통상자원중소벤처기업위원회,예산결산특별위원회","name":"최인호","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 송파구을","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,국방위원회","name":"최재성","electioncnt":"4선","party":"더불어민주당"},{"evaluation":66.7,"election":"대구 달성군","committee":"기획재정위원회","name":"추경호","electioncnt":"초선","party":"미래통합당"},{"evaluation":50.0,"election":"서울 광진구을","committee":"외교통일위원회","name":"추미애","electioncnt":"5선","party":"더불어민주당"},{"evaluation":66.7,"election":"비례대표","committee":"정무위원회","name":"추혜선","electioncnt":"초선","party":"정의당"},{"evaluation":66.7,"election":"경기 용인시정","committee":"여성가족위원회,행정안전위원회","name":"표창원","electioncnt":"초선","party":"더불어민주당"},{"evaluation":66.7,"election":"부산 해운대구갑","committee":"공공부문 채용비리 의혹과 관련된 국정조사특별위원회,국방위원회","name":"하태경","electioncnt":"재선","party":"미래통합당"},{"evaluation":40.0,"election":"경기 용인시병","committee":"문화체육관광위원회","name":"한선교","electioncnt":"4선","party":"미래한국당"},{"evaluation":66.7,"election":"서울 강서구병","committee":"환경노동위원회","name":"한정애","electioncnt":"재선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 시흥시갑","committee":"국토교통위원회","name":"함진규","electioncnt":"재선","party":"미래통합당"},{"evaluation":66.7,"election":"비례대표","committee":"과학기술정보방송통신위원회,국회 코로나19 대책 특별위원회","name":"허윤정","electioncnt":"초선","party":"더불어민주당"},{"evaluation":50.0,"election":"경기 의정부시을","committee":"교육위원회","name":"홍문종","electioncnt":"4선","party":"무소속"},{"evaluation":66.7,"election":"충남 홍성군예산군","committee":"교육위원회","name":"홍문표","electioncnt":"3선","party":"미래통합당"},{"evaluation":50.0,"election":"인천 부평구을","committee":"국방위원회,정보위원회","name":"홍영표","electioncnt":"3선","party":"더불어민주당"},{"evaluation":66.7,"election":"대구 북구을","committee":"국회 코로나19 대책 특별위원회,산업통상자원중소벤처기업위원회,예산결산특별위원회","name":"홍의락","electioncnt":"재선","party":"더불어민주당"},{"evaluation":66.7,"election":"서울 중구성동구갑","name":"홍익표","electioncnt":"재선"},{"evaluation":50.0,"election":"인천 미추홀구갑","name":"홍일표","electioncnt":"3선"},{"evaluation":50.0,"election":"경기 김포시을","name":"홍철호","electioncnt":"재선"},{"evaluation":57.1,"election":"전남 고흥군보성군장흥군강진군","name":"황주홍","electioncnt":"재선"},{"evaluation":66.7,"election":"서울 양천구갑","name":"황희","electioncnt":"초선"}];

	
$(function (){
	$("#grid").jqGrid({
		datatype: "local",
		data: jsonlist,
		mtype: 'POST',
		colNames: ["이름", "평가", "정당", "선거구",  "당선횟수" , "위원회"],
		colModel: [
			{ name:"name" , index:"name", width:90, align : "center", frozen : true},
			{ name:"evaluation" , width:100, align : "left"},
			{ name:"party" , width:150, align : "left" },
			{ name:"election" , width:200, align : "left" },
			{ name:"electioncnt" , width:100, align : "center" },
			{ name:"committee" , width:700, align : "left" },
		],
		autowidth: true,
		height: 550,
		rowNum: jsonlist.length,
		rowList: [10,20,30],
		viewrecords: true,
		sortorder: "desc",
		shrinkToFit: false,
		
	
		//특정 하나의 cell을 눌르면 동작하는 function
		onCellSelect: function(rowid,icol,cellcontent,e){	
				
			//한국어만 가져오게
        	var law_name = cellcontent.replace(/[^\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F]/gi,"");
				
        	if(icol==0){ // 0번째 열 == 의원이름
        		//committeedetail Controller로 이동
				return window.location.href = "/assembly/committeedetail/" + law_name;
        	}
		}
	});
	jQuery("#grid").jqGrid('setFrozenColumns');	
});

////////////////////////////////////////////////////////////////////////////
////////////////////////////////Ajax////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

var ajax = new XMLHttpRequest();


// [Ajax_1] - 정당(party), 지역구(district),
// 			  소속의원회(committee), 의원이름(keyword) 검색

// onkeyup()과 onchange()를 사용하여 키보드가 눌리거나 체크박스가 선택할 때마다 동작하도록 설정
//
function searchFunction() {
	var keyword = document.getElementById('keyword');
	var district = document.getElementById('district');
	var committee = document.getElementById('committee');
	var party = document.getElementById('party');
	
    ajax.onreadystatechange = callbackajaxjson;
    ajax.open("GET", "/assembly/searchLawmaker?keyword="+ encodeURIComponent(keyword.value)
    		+"&district="+encodeURIComponent(district.value) 
    		+"&committee="+encodeURIComponent(committee.value)
    		+"&party="+encodeURIComponent(party.value));
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
}

//[Ajax_1(callback)] - 정당(party), 지역구(district),
//					   소속의원회(committee), 의원이름(keyword) 검색
function callbackajaxjson() {
    if (ajax.readyState == 4) {

        arr = JSON.parse(ajax.responseText);
        
        jQuery("#grid").setGridParam(arr).trigger("reloadGrid");
        
    	jQuery("#grid").jqGrid("clearGridData", true);	

    	//검색호출 완료 후 리로드
    	$("#grid").jqGrid('setGridParam', {
    		datatype: "local",
    		data: arr,
    		mtype: 'POST',
    	}).trigger('reloadGrid');
        
    }
}




// [Ajax_4] - 로그인한 유저가 어떤의원을 좋아요
function likelawmaker(lawmakername){
	
	var name = lawmakername;
	
    ajax.onreadystatechange = likecallbackajaxjson;
    ajax.open("GET", "/assembly/likeAjax?name="+ encodeURIComponent(name),true);
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
    
}
// [Ajax_4(callback)] - 로그인한 유저가 어떤의원을 좋아요
function likecallbackajaxjson() {
    if (ajax.readyState == 4) {
        alert("좋아요!!")
       	window.location.reload();
    }
}


// [Ajax_5] - 로그인한 유저가 어떤의원을 싫어요
function hatelawmaker(lawmakername){
	var name = lawmakername;
	
    ajax.onreadystatechange = hatecallbackajaxjson;
    ajax.open("GET", "/assembly/hateAjax?name="+ encodeURIComponent(name),true);
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
}
// [Ajax_5(callback)] - 로그인한 유저가 어떤의원을 싫어요
function hatecallbackajaxjson() {
    if (ajax.readyState == 4) {
        alert("싫어요!!")
        window.location.reload();
    }
}




// [Ajax_6] - 로그인한 유저가 어떤의원이 좋아졌어요
function modifylikelawmaker(lawmakername){
	var name = lawmakername;
	ajax.onreadystatechange = modifylikecallbackajaxjson;
    ajax.open("GET", "/assembly/modifyLikeAjax?name="+ encodeURIComponent(name),true);
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
}
// [Ajax_6(callback)] - 로그인한 유저가 어떤의원이 좋아졌어요
function modifylikecallbackajaxjson(){
	if (ajax.readyState == 4) {
        alert("좋아졌어요!!")
        window.location.reload();
    }
}


// [Ajax_7] - 로그인한 유저가 어떤의원이 싫어졌어요
function modifyhatelawmaker(lawmakername){
	var name = lawmakername;
	ajax.onreadystatechange = modifyhatecallbackajaxjson;
    ajax.open("GET", "/assembly/modifyHateAjax?name="+ encodeURIComponent(name),true);
    ajax.setRequestHeader("Accept", "application/json");
    ajax.send();
}
// [Ajax_7(callback)] - 로그인한 유저가 어떤의원이 싫어졌어요
function modifyhatecallbackajaxjson(){
	if (ajax.readyState == 4) {
        alert("싫어졌어요!!")
       	window.location.reload();
    }
}
</script>


<!-- dropdown css style -->
<style>
         .dropdown {
             position: relative;
             display: inline-block;
         }
         .dropdown-content {
             display: none;
             position: static;

             margin-bottom: auto;
         }
         .dropdown:hover .dropdown-content { display: block; }
</style>

</head>
<body>
<div class="wrapper">

    <!-- s: header -->
    <header class="header in-sec">
        <div class="header-group">
            <div class="left-area">
                
            </div>
            <h1 class="header-tit">의원현황</h1>
            <div class="right-area">
               
            </div>
        </div>
        <!-- s: tab -->
        <div class="tab swiper-container">
			<ul class="tab-nav swiper-wrapper">
                <li class="swiper-slide is-selected"><a href="javascript:;" data-role="tab">기초정보</a></li>
                <li class="swiper-slide"><a href="javascript:;" class="badge" data-role="tab">평가</a></li>
                <li class="swiper-slide"><a href="javascript:;" data-role="tab">의정활동</a></li>
                <li class="swiper-slide"><a href="javascript:;" data-role="tab">재산변동</a></li>
                <li class="swiper-slide"><a href="javascript:;" data-role="tab">후원</a></li>
            </ul>
        </div>
        <!-- e: tab -->
    </header>
	<!-- e: header -->


	<!-- s: container -->
	<div class="container">
		<!-- s: content -->
		<div id="content" class="content header-expand bg-gray"> <!-- 헤더에 탭 있는 경우 header-expand, 배경 있는경우 bg-gray -->
			<div class="in-sec">
				<!-- s: search control -->
                <div class="search-control" id="search" style="display:none">
					<div class="grid">
						<div class="col col-3">
							<div class="select-area">
								<select name="" id="party" onchange="searchFunction()" class="form-select">
									<option value="">정당</option>
									<option value="더불어민주당">더불어민주당</option>
									<option value="미래통합당">미래통합당</option>
									<option value="미래한국당">미래한국당</option>
									<option value="민생당">민생당</option>
									<option value="민중당">민중당</option>
									<option value="우리공화당">우리공화당</option>
									<option value="정의당">정의당</option>
								</select>
							</div>
						</div>
						<div class="col col-9">
							<div class="select-area">
                       			 	<input type="text" name="district" id="district" onkeyup="searchFunction()" placeholder="지역구">
							</div>
						</div>
					</div>
					<div class="select-area">
                        <input type="text" name="committee" id="committee" onkeyup="searchFunction()" placeholder="소속위원회">
					</div>
                    <div class="form-area">
                        <input type="text" name="keyword" id="keyword" onkeyup="searchFunction()" placeholder="의원 이름">
                    </div>
                </div>
				<!-- e: search control -->

				<!-- s: section container -->
                <section class="section-container">
					<!-- s: grid -->
					<div class="grid-area">
						<p class="cate">전체 의원</p>
	
						<table id="grid"></table>
					</div>

				</section>
				<!-- e: section container -->
			</div>
		</div>
		<!-- s: content -->
	</div>
	<!-- s: container -->
</div>

</body>
</html>