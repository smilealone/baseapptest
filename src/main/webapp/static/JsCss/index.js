<!--/*技术支持，小庄602842076     验证：建站技术支持*/
/*技术支持，小庄602842076    验证：建站技术支持*/
/*技术支持，小庄602842076    验证：建站技术支持*/
/*技术支持，小庄602842076    验证：建站技术支持*/
/*技术支持，小庄602842076    验证：建站技术支持*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/-->
$(function(){
	
	//首页大图左右切换效果
	var oUL=$("#benner_pic ul");
	var iSize=oUL.find("li").size();
	var iWidth=oUL.find("li").width();
	oUL.width(iSize*iWidth);
	var index=0;
	

	$("#in_RightBtn").click(function(){
		index=index+1;
		if(index>len-1){index=0}
		Switching2(index);
		})
	
	$("#in_LeftBtn").click(function(){
		index=index-1;
		if(index<0){index=len-1}
		Switching2(index);
		})


	//自动切换画面
	function zdqh(){
		time=setInterval(function(){
			if(index>len-1){index=0}
			Switching2(index);
			index=index+1;
			},2000)
		}
	
	zdqh();	
	
	
	
	
	//鼠标经过停止自动切换鼠标移开恢复切换
	$("#in_RightBtn").hover(function(){
		clearInterval(time);
		},
		function(){
			zdqh();
			}
		)
	
	//鼠标经过停止自动切换鼠标移开恢复切换
	$("#in_LeftBtn").hover(function(){
		clearInterval(time);
		},
		function(){
			zdqh();
			}
		)	

	function Switching2(index){
		oUL.animate({left:-iWidth*index})
		}








<!--------------------------------------------------------------------------->
<!--------------------------------------------------------------------------->
//首页小图左右切换效果

var len=$(".pro_s ul li").length;
var width=$(".pro_s ul li").width();
var index=0;




//上下一张按钮
$(".left_btn").click(function(){
	index=index-1;
	if(index<0){index=len-1}
	Switching(index);
	})


$(".right_btn").click(function(){
	index=index+1;
	if(index>len-1){index=0}
	Switching(index);
	})
	

 
//画面切换

function Switching(index){
	$(".pro_s ul").animate({left:-width*index},300);
	}

})