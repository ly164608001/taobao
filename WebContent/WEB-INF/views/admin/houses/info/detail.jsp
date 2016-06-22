<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/headDeclare.jsp" %>
<%@include file="/tagDeclare.jsp"%>
<html>
<head>
<script type="text/javascript" src="${basePath}static/js/admin/global.js"></script>
<link rel="stylesheet" type="text/css" href="${basePath}static/css/houses/style.css"/>
</head>
<body>
<div class="contaniner">
		<div class="div-content">
		<table class="table table-hover">
				<tbody>
					<tr>
						<td colspan="4"  style="background-color: #CAFFFF">楼盘基本信息</td>
					</tr>
					<tr>
						<th>ID：</th>
						<td>${model.id}</td>
						<th>名称：</th>
						<td>${model.name}</td>
					</tr>
					<tr>
						<th>楼盘所在地：</th>
						<td>${model.location}</td>
						<th>楼盘详细地址：</th>
						<td>${model.detailaddress}</td>
					</tr>
					<tr>
						<th>价格：</th>
						<td>${model.price}</td>
						<th>状态：</th>
						<td>${model.status}</td>
					</tr>
					<tr>
						<th>折扣类型：</th>
						<td>${model.discounttype}</td>
						<th>折扣值：</th>
						<td>${model.discountvalue}</td>
					</tr>
					<tr>
						<th>楼盘图片：</th>
						<td>${model.housespic}</td>
						<th>证件图片：</th>
						<td>${model.certificatepic}</td>
					</tr>
					<tr>
						<td colspan="4"  style="background-color: #CAFFFF">楼盘详细信息</td>
					</tr>
					<tr>
						<th>楼盘特色：</th>
						<td colspan="3">${detailInfo.featureids}</td>
					</tr>
					<tr>
						<th>环线位置：</th>
						<td>${detailInfo.loopposition}</td>
						<th>物业费：</th>
						<td>${detailInfo.propertycosts}</td>
					</tr>
					<tr>
						<th>装修状况：</th>
						<td>${detailInfo.decoratestateId}</td>
						<th>占地面积：</th>
						<td>${detailInfo.floorspace}</td>
					</tr>
					<tr>
						<th>建筑面积：</th>
						<td>${detailInfo.builespace}</td>
						<th>容积率：</th>
						<td>${detailInfo.plotratio}</td>
					</tr>
					<tr>
						<th>绿化率：</th>
						<td>${detailInfo.greeningrate}</td>
						<th>物业公司：</th>
						<td>${detailInfo.estateenterprise}</td>
					</tr>
					<tr>
						<th>物业地址：</th>
						<td>${detailInfo.estateaddress}</td>
						<th>售楼电话：</th>
						<td>${detailInfo.telephone}</td>
					</tr>
					<tr>
						<th>售楼地址：</th>
						<td>${detailInfo.saleaddress}</td>
						<th>所属商圈：</th>
						<td>${detailInfo.businessarea}</td>
					</tr>
					<tr>
						<td colspan="4"  style="background-color: #CAFFFF">楼盘外部设备信息</td>
					</tr>
					<tr>
						<th>教育：</th>
						<td>${external.education}</td>
						<th>商业：</th>
						<td>${external.business}</td>
					</tr>
					<tr>
						<th>医疗：</th>
						<td>${external.medicine}</td>
						<th>公园：</th>
						<td>${external.park}</td>
					</tr>
					<tr>
						<th>银行：</th>
						<td>${external.bank}</td>
						<th>娱乐：</th>
						<td>${external.recreation}</td>
					</tr>
					<tr>
						<th>酒店：</th>
						<td>${external.hotel}</td>
						<th>车位情况：</th>
						<td>${external.carportcondition}</td>
					</tr>
					<tr>
						<th>运动健身：</th>
						<td>${external.sport}</td>
						<th>美食：</th>
						<td>${external.food}</td>
					</tr>
					<tr>
						<th>其他：</th>
						<td colspan="3">${external.others}</td>
					</tr>
					<tr>
						<td colspan="4"  style="background-color: #CAFFFF">楼盘内部设备信息</td>
					</tr>
					<tr>
						<th>端口情况：</th>
						<td>${internal.portcondition}</td>
						<th>供水：</th>
						<td>${internal.watersupplytype}</td>
					</tr>
					<tr>
						<th>供电：</th>
						<td>${internal.powersupplytype}</td>
						<th>供暖：</th>
						<td>${internal.heatsupplytype}</td>
					</tr>
					<tr>
						<th>燃气：</th>
						<td>${internal.fuelgas}</td>
						<th>网络：</th>
						<td>${internal.networkids}</td>
					</tr>
					<tr>
						<th>电话：</th>
						<td>${internal.telephoneids}</td>
						<th>闭路：</th>
						<td>${internal.closecircuitids}</td>
					</tr>
					<tr>
						<th>电梯：</th>
						<td>${internal.listtypeid}</td>
						<th>学校：</th>
						<td>${internal.school}</td>
					</tr>
					<tr>
						<th>商业：</th>
						<td>${internal.business}</td>
						<th>运动：</th>
						<td>${internal.sportids}</td>
					</tr>
					<tr>
						<th>其他：</th>
						<td colspan="3">${internal.other}</td>
					</tr>
						<td colspan="4" style="background-color: #CAFFFF">销售信息</td>
					</tr>
					<tr>
						<th>总栋数：</th>
						<td>${salesinfo.allbuildingnum}</td>
						<th>总户数：</th>
						<td>${salesinfo.allhouseholds}</td>
					</tr>
					<tr>
						<th>最低首付：</th>
						<td colspan="3">${salesinfo.mindownpayment}</td>
					</tr>
					<tr style="background-color: #CAFFFF">
						<td colspan="4" >交通状况</td>
					</tr>
					<tr>
						<th>公交：</th>
						<td>${traffic.bus}</td>
						<th>地铁：</th>
						<td>${traffic.metro}</td>
					</tr>
					<tr>
						<th>高速/高架：</th>
						<td>${traffic.freeway}</td>
						<th>其他：</th>
						<td>${traffic.other}</td>
					</tr>
					<tr>
						<td colspan="4" style="text-align: center;">
							<a href="javascript:void(0)" class="easyui-linkbutton" onclick="closeDialog();">关闭</a>
						</td>
					</tr>
				</tbody>
			</table>
	<script src="${basePath}static/js/admin/initdata.js"></script>
</body>
</html>