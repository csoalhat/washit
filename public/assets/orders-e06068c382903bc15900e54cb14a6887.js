(function(){$(function(){var t;return t=function(t){return $(".order[data-status!='"+t+"']").hide(),$(".order[data-status='"+t+"']").show()},$("#order-status-selection input[type='radio']").on("change",function(){var n;return n=$(this).data("status"),console.log("you clicked on "+n),t(n)}),t("pending")})}).call(this);