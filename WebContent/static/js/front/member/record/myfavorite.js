// JavaScript Document
$(document).ready(function(e) {
	var check=0;
	$("#tab li").click(function(){
		$(this).addClass("li-h3").siblings().removeClass("li-h3");
		var id=$(this).attr("id");
		var type=id.substring(0,3);
		var lv=id.substring(4,id.length);
		var houseid=$("#houseid_"+lv).val();
		$(".btn-expand").val("展示所有");
		if(type=="fav"){//收藏户型
			check=0;
			$("#selectDelet_"+lv).show();
			$("#alltype_"+lv).hide();
			$("#rush_"+lv).hide();
			$("#favorite_"+lv).show();
		}else if(type=="all"){//所有户型
			check=0;
			$("#selectDelet_"+lv).hide();
			$.ajax({
				type:"POST",
				url:'myFavoritesSerch.htm?type=1', 
				dataType:"json",
				data:{"houseid":$("#houseid_"+lv).val()},
				cache:false,
				success:function(data){ 
					if(data.success){
						$("#rush_"+lv).hide();
						$("#favorite_"+lv).hide();
						$("#alltype_"+lv).show();
						$("#alltype_"+lv+" ul").empty();
						var list=data.list;
						$(list).each(function(i){ 
							$("#alltype_"+lv+" ul").append(
							'<li id="li'+i+'">'
								+'<div class="HouseType-list-pic"><img src="'+this.typepic+'" width="153" height="153" /><span class="HouseType-cover" ></span></div>'
								+'<div class="HouseType-title">'+this.name+'户型</div>'
								+'<div class="HouseType-name">'+this.roomnum+'室'+this.hallnum+'厅'+this.toiletnum+'卫'+this.balconynum+'阳  '+this.buildarea+'㎡</div>'
				            +'</li>');
							if(i>3){$("#typecont_"+lv+" #li"+i).hide()}
							}); 
						
					}
				}  
			});
		}else{	//限时抢购
			check=1;
			$("#selectDelet_"+lv).hide();
			$.ajax({
				type:"POST",
				url:'myFavoritesSerch.htm?type=2', 
				dataType:"json",
				data:{"houseid":$("#houseid_"+lv).val()},
				cache:false,
				success:function(data){ 
					if(data.success){
						$("#favorite_"+lv).hide();
						$("#alltype_"+lv).hide();
						$("#rush_"+lv).show();
						$("#rush_"+lv+" ul").empty();
						var rushlist=data.list;
						$(rushlist).each(function(i){ 
							$("#rush_"+lv+" ul").append(
									'<li class="clearfix" id="li'+i+'">'
				                	+'<div class="limiteTime-l">'
				                		+'<div class="HouseType-list-pic HouseType-pic-fl"><img src="'+this.houseType.typepic+'" width="153" height="153" /></div>'
				                		+'<div class="limiteTime-l-content">'
				                        	+'<p class="p1">'+this.houseType.name+'</p>'
				                            +'<p>'+this.houseType.roomnum+'室'+this.houseType.hallnum+'厅'+this.houseType.toiletnum+'卫'+this.houseType.balconynum+'阳 '+this.houseType.buildarea+'㎡</p>'
				                            +'<p>楼栋： '+this.building.name+'十二层'+this.source.unit+'单元</p>'
				                            +'<p>朝向： '+this.source.towards+'</p>'
				                            +'<p>装修： 精装修</p>'
				                            +'<p>层高：'+this.houseType.floorheight+'米</p>'
				                        +'</div>'
				                    +'</div>'
				                   +'<div class="limiteTime-r">'
				                    	+'<div class="limiteTime-r-list">'
				                        	+'<p>原单价 ： '+this.source.unitprice+'元/m²</p>'
				                            +'<p>原总价 ： '+this.source.totalprice+'</p>'
				                            +'<p>现单价 ： <span>'+this.rush.price+'</span> 元/m²</p>'
				                            +'<p>现总价 ： <span>'+this.rushtotalprice+'</span> 元</p>'                                                
				                        +'</div>'
				                       +' <input class="btn-buy" type="button" value="立即抢购" />'
				                    +'</div>'
				            +'</li>');
							if(i>0){$("#typecont_"+lv+" #li"+i).hide()}
						});
					}
				}  
			});
		}
	});
	//----------------展示所有start-----------------
	$(".btn-expand").click(function(){
		var text=$(this).val();
		var id=$(this).attr("id");
		var lv=id.substring(4,id.length);
		if(text=="展示所有"){
			$(this).attr("value","收起所有");
			$("#typecont_"+lv+" .clearfix").show();
		}else{
			$(this).val("展示所有");
			if(check==1){
				$("#typecont_"+lv+" li:gt(0)").hide();
			}else{
				$("#typecont_"+lv+" li:gt(3)").hide();
			}
		}
	});
	//---------------展示说有end-----


	//删除收藏户型

	$(document).on("mouseover",".HouseType-cover",function(){
		$(this).addClass('HouseType-cover-select01');
	});
	$(document).on("mouseout",".HouseType-cover",function(){
		if($(this).hasClass('click-on')){
 				return;
 			}
		$(this).removeClass('HouseType-cover-select01');
	});

	$(document).on("click",".HouseType-cover",function(){
		if($(this).hasClass('click-on')){
				$(this).removeClass('HouseType-cover-select01');
 				$(this).removeClass('click-on');
 			}else{
 				$(this).addClass('click-on');
 				$(this).addClass('HouseType-cover-select01');
 			}
	})
	
	$('.select-delect').click(function(){
		if($(this).text()=="批量删除"){
			var ids=new Array();
			var id=$(this).attr("id");
			var lv=id.substring(12,id.length);	
			$("#favorite_"+lv+" ul li").each(function(){
				if($(this).find(".HouseType-cover").hasClass("click-on")){
					ids.push($(this).find(".click-on").attr("id"));
				}
			});
			var id="";
			if(ids.length>0){
				for(var i=0;i<ids.length;i++){
					if(i==ids.length-1){
						id=id+ids[i]
					}else{
						id=id+ids[i]+",";
					}
				}
				window.location.href="favoritetypedelete.htm?id="+id;
			}else{
				alert("请选择要删除的数据!");
			}
			
		}
		$(this).text('批量删除');
		$(this).parents('.type-nav').siblings().find('.HouseType-cover').css('display','block');
	});
//-------------------
	

});