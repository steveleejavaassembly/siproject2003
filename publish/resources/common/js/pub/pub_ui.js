/*--------------------------------------------------------------
	Modules Data Options
	data-role   모듈명
	data-func   모듈기능
	data-id     찾을 아이디
--------------------------------------------------------------*/
/*--------------------------------------------------------------
	Variables
--------------------------------------------------------------*/
var winScrollTop = 0;
var concoleAcive = true;
var swiperTab = null;
var swiperMain1 = null;
var swiperMain2 = null;
var swiperMain3 = null;

/*--------------------------------------------------------------
	UI Initialize
--------------------------------------------------------------*/
/* Document Init */
$(function(){
	pub_init();
})

/* Librurys Init */
function pub_init(){
	/* Globals */
	userAgent();
	customEvent();

	/* Layout */
	menuEvent();

	/* Components */
	waveEffectEvent();
	fullHeightInit();
	searchEvent();
	selectEvent()
	handlerEvent();
	tabEvent();
	swiperTabInit();
	swiperMain1Init();
	swiperMain2Init();
	swiperMain3Init();
	stickyInit();
	spyEvent();

	/* Contents */
}

/*--------------------------------------------------------------
	Globals
--------------------------------------------------------------*/
/* 디바이스 */
function userAgent(){
	var $eleBody = $('body');
	$eleBody.addClass('dv-'+ browser.name +' dv-'+ browser.name + browser.version +' dv-'+ browser.os +' dv-'+ browser.os + browser.osVersion);
}

/* 윈도우 이벤트 */
function customEvent(){
	var scrollSetTime;
	$(window).off('scroll.customEvent').on('scroll.customEvent', function(){
		clearTimeout(scrollSetTime);
		scrollSetTime = setTimeout(function(){ $(window).trigger('scrollEnd') }, 100);
	})
}

/*--------------------------------------------------------------
	Layout
--------------------------------------------------------------*/
/* 사이드바 */
function menuEvent(){
	$(document).off('click.menuEvent').on('click.menuEvent', '[data-role=menu]', function(){
		var func = $(this).attr('data-func');
		var id = $(this).attr('data-id');
		var $ele = $('#'+id);
		if (func == 'open'){
			$('body').addClass('is-menu-visible');
			scrollDisable();
		}
		if (func == 'close'){
			$('body').removeClass('is-menu-visible');
			scrollEnable();
		}
	})
}

/*--------------------------------------------------------------
	UI Components
--------------------------------------------------------------*/
/* 버튼효과 */
function waveEffectEvent(){
	var events = null;
	$(document).off('mousedown.waveEffectEvent touchstart.waveEffectEvent').on('mousedown.waveEffectEvent touchstart.waveEffectEvent', '.btn, .tab .tab-nav a', function(e) {
		events = 'mousedown';
		var self = $(this),
			wave = '.effect-wave',
			btnWidth = self.outerWidth();
		if (e.type == 'mousedown'){ var x = e.offsetX, y = e.offsetY }
		if (e.type == 'touchstart'){ var x = e.touches[0].pageX - self.offset().left, y = e.touches[0].pageY - self.offset().top }
		if (self.find(wave).length == 0){
			self.prepend('<span class="effect-wave"></span>');
			$(wave).css({'top': y, 'left': x}).stop().animate({width: btnWidth * 3, height: btnWidth * 3 }, 400, function(){
				$(this).addClass('is-complete');
				if (events == 'mouseup'){
					$(this).stop().animate({opacity: '0'}, 200, function() {
						$(this).remove();
					});
				}
			});
		}
	})
	$(document).off('mouseup.waveEffectEvent touchend.waveEffectEvent').on('mouseup.waveEffectEvent touchend.waveEffectEvent', '.btn, .tab .tab-nav a', function(e) {
		events = 'mouseup';
		var self = $(this),
			wave = '.effect-wave';
		if (self.find(wave).hasClass('is-complete')){
			$(wave).stop().animate({opacity: '0'}, 200, function() {
				$(this).remove();
			})
		}
	})
	$(document).off('click.waveEffectEvent focusin.waveEffectEvent').on('click.waveEffectEvent focusin.waveEffectEvent', function(e) {
		if ($(e.target).is('.btn, .tab .tab-nav a') == false && $('.effect-wave').length){
			$('.effect-wave').stop().animate({opacity: '0'}, 200, function() {
				$(this).remove();
			})
		}
	})
}

/* Full Height*/
function fullHeightInit(){
	checkInit('[data-height=full]', 'swiperMain1', function(){ fullHeightAction() });
}
function fullHeightAction(){
	var $ele = $('[data-height=full]');
	var pos_t = $ele.offset().top;
	var win_h = $(window).height();
	var sum_h = win_h - pos_t;
	$ele.css({height:sum_h});
}

/* Search Toggle */
function searchEvent(){
	$(document).off('click.searchEvent').on('click.searchEvent', '[data-role=search]', function(e) {
		var func = $(this).attr('data-func');
		var id = $(this).attr('data-id');
		var $ele = $('#'+id);
		$ele.toggle();
		if ($ele.is(':visible')){
			$('html, body').stop().animate({'scrollTop':0}, 300);
		}
	});
}

/* Select Toggle */
function selectEvent(){
	$(document).off('click.selectEvent').on('click.selectEvent', '[data-role=select]', function(e) {
		var func = $(this).attr('data-func');
		var id = $(this).attr('data-id');
		var $ele = $('#'+id);
		$ele.toggle();
	});
}

/* Handler Toggle */
function handlerEvent(){
	$(document).off('click.handlerEvent').on('click.handlerEvent', '[data-role=handler]', function(e) {
		$('body').toggleClass('is-handler-active');
	})
}

/* Tab Select */
function tabEvent(){
	$(document).off('click.tabEvent').on('click.tabEvent', '[data-role=tab]', function(e) {
		tabAction($(this));
	})
}
function tabAction($this, callback){
	var $eleBtn = $this;
	var id = null;
	if ($eleBtn.is('[data-id]')){ id = $eleBtn.attr('data-id') };
	$eleBtn.parent().addClass('is-selected').siblings().removeClass('is-selected'); // 탭 설정
	if (id != null){ $('#'+id).show().siblings().hide() } // 탭컨텐츠 설정
	if ($eleBtn.closest('.swiper-slide').length){ swiperTab.slideTo($eleBtn.parent().index()) } // 스와이프 설정
	if ($eleBtn.attr('data-role-sub') == 'spyScroll'){ spyAction($eleBtn.attr('data-id-sub')) }
	if (callback){callback}
}

/* Swiper - Tab */
function swiperTabInit(){
	checkInit('.tab.swiper-container .swiper-slide', 'swiperTab', function(){
		var idx = $('.tab.swiper-container').find('li.is-selected').index();
		swiperTabAction(idx);
	});
}
function swiperTabAction(idx){
	var eleContainer = '.tab.swiper-container';
	swiperTab = new Swiper(eleContainer, {
		slidesPerView: 'auto',
		initialize: idx,
		freeMode: false,
		speed: 400,
		resistanceRatio: 0
	});
	setTimeout(function(){ swiperTab.update() }, 300);
}

/* Swiper - Main1 */
function swiperMain1Init(){
	checkInit('.main1-swiper .swiper-slide', 'swiperMain1', function(){ swiperMain1Action(0) });
}
function swiperMain1Action(idx){
	var eleContainer = '.main1-swiper .swiper-container';
	swiperMain1 = new Swiper(eleContainer, {
		slidesPerView: 1,
		initialize: idx,
		speed: 400,
		pagination: {
			el: eleContainer+' .swiper-pagination',
			type: 'bullets',
		},
	});
}

/* Swiper - Main2 */
function swiperMain2Init(){
	checkInit('.main2-swiper .swiper-slide', 'swiperMain2', function(){ swiperMain2Action(0) });
}
function swiperMain2Action(idx){
	var eleContainer = '.main2-swiper .swiper-container';
	swiperMain2 = new Swiper(eleContainer, {
		slidesPerView: 1,
		initialize: idx,
		speed: 400,
		pagination: {
			el: eleContainer+' .swiper-pagination',
			type: 'bullets',
		},
	});
}

/* Swiper - Main3 */
function swiperMain3Init(){
	checkInit('.main3-swiper .swiper-slide', 'swiperMain3', function(){ swiperMain3Action(0) });
}
function swiperMain3Action(idx){
	var eleContainer = '.main3-swiper .swiper-container';
	swiperMain3 = new Swiper(eleContainer, {
		slidesPerView: 1.1,
		initialize: idx,
		spaceBetween: 20,
		speed: 400,
	});
}

/* StickyScroll */
function stickyInit(){
	checkInit('[data-role=stickyScroll]', 'stickyInit', function(){ stickyEvent('[data-role=stickyScroll]'); stickyAction('[data-role=stickyScroll]') });
}
function stickyEvent(ele){
	$(window).off('scroll.stickyEvent').on('scroll.stickyEvent', function(){ stickyAction(ele) });
}
function stickyAction(ele){
	var $ele = $(ele);
	// Top
	var pos_t = $ele.parent().offset().top;
	var gap_t = $('.header').outerHeight();
	var win_t = $(window).scrollTop();
	var sum_t = 0 + gap_t;

	// Bottom
	var pos_b = $ele.outerHeight() + pos_t;
	var win_b = $(window).outerHeight() + $(window).scrollTop();
	var gap_b = 0;
	var sum_b = 0 + gap_b;

	if (win_t + gap_t > pos_t){ $ele.addClass('is-fixed-top').css({top:sum_t}) }
	else if (win_b < pos_b){ $ele.addClass('is-fixed-bottom').css({bottom:sum_b}) }
	else { $ele.removeClass('is-fixed-bottom is-fixed-top').removeAttr('style') }

}

/* Spyscroll */
function spyEvent(){
	$(document).off('click.spyEvent').on('click.spyEvent', '[data-role=spyScroll]', function(e){
		var id = $(this).attr('data-id');
		spyAction(id);
	})
}
function spyAction(id){
	var $ele = $('#'+id);
	var pos_t = $ele.offset().top;
	var gap_t = $('.header').outerHeight();
	$('[data-id='+id+']').filter('[data-gap]').each(function(){
		gap_t = parseInt($(this).attr('data-gap'));
	})

	var sub_t = pos_t - gap_t;
	$('html, body').stop().animate({'scrollTop':sub_t}, 300);
}

/*--------------------------------------------------------------
	Utilities
--------------------------------------------------------------*/
/* 콘솔로그관리 */
function consoleLog(log){
	// true 일때만 콘솔을 노출합니다.
	if (concoleAcive == true){ console.log(log) }
}

/* 파라미터값 구하기 */
function getParamiter(name){
	var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
	if (results==null){ return null }
	else { return results[1] || 0 }
}

/* 스크롤비활성화 */
function scrollDisable(){
	winScrollTop = $(window).scrollTop();
	$('html, body').addClass('is-bodyFixed');
	$('.wrapper').css({position: 'relative', top: winScrollTop * (-1)});
}

/* 스크롤활성화 */
function scrollEnable(){
	$('html, body').removeClass('is-bodyFixed');
	$('.wrapper').removeAttr('style');
	$(window).scrollTop(winScrollTop);
}

/* 동기, 비동기 실행 */
function checkInit(ele, eName, func){
	console.log(ele);
	var eNameFull = 'DOMNodeInserted.'+eName;
	if ($(ele).length){ func() }
	else { $('body').off(eNameFull).on(eNameFull, ele, func) }
}

