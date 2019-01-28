<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<script type="text/javascript">
		var jsCommonUI = jsCommonUI || {};
	
		jsCommonUI.moduleTest = (function() {
			
			var pageVariable = {
					  sugNo: ''
					, sugStatus: ''	
			}
			
			// ------------------------------------
			// jQuery cached elements
			// ------------------------------------	
			var cacheEl = {
				$containerMask: null,
				$closeButton: null,
				$close: null,
				$titleBar: null,
				$title: null,
				$saveButton: null,
				init: function() {
					console.log('cacheEl init');
					/* 
					this.$containerMask = $('#js-suggest-eval-result-container-mask');
					
					if (this.$containerMask.length) {
						this.$closeButton = this.$containerMask.find('.js-close-button');
						this.$close = this.$containerMask.find('.js-close-icon');
						this.$titleBar = this.$containerMask.find('#js-suggest-eval-reg-title-bar');
						this.$title = this.$containerMask.find('#js-suggest-eval-reg-title');
						this.$saveButton = this.$containerMask.find('.js-suggest-eval-reg-save-btn');
					}
					 */
				}
			};
			
			var options = {}, initialized = false;
			
			
			// ------------------------------------
			// 이벤트 핸들러
			// ------------------------------------
			var eventHandler = {
				clickSave: function(e) {
					
				},
				init: function() {
					console.log('eventHandler init');
					//--- 버튼 클릭 이벤트
					if (cacheEl.$saveButton != null) {			
						cacheEl.$saveButton.on('click', this.clickSave);	
					}
					 
				}
			};
			
			
			// ------------------------------------
			// initialize
			// ------------------------------------
			var init = function() {
				//--- init jQuery cached elements
				cacheEl.init();
					
				//--- init event handlers
				eventHandler.init();
			};
			
			
			// ------------------------------------
			// return public api
			// ------------------------------------
			return {
				init: init
			};
			
		})();
		
		jsCommonUI.moduleTest.init();
	
	</script>


</body>
</html>