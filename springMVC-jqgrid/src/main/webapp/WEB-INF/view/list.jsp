<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list page</title>
<link rel='stylesheet' type='text/css' href='<%= request.getContextPath() %>/resources/jqgrid/ui.jqgrid.css'>
<script src="<%= request.getContextPath() %>/resources/jqgrid/grid.locale-en.js" type="text/javascript"/>
<script src="<%= request.getContextPath() %>/resources/jqgrid/jquery.jqGrid.min.js" type="text/javascript"/>
<script src="<%= request.getContextPath() %>/resources/jqgrid/jquery-1.4.2.min.js" type="text/javascript"/>
<script src="<%= request.getContextPath() %>/resources/jqgrid/JsonXml.js" type="text/javascript"/>
<script type="text/javascript">
jQuery("#list5").jqGrid({        
   	url:'server.php?q=2',
	datatype: "json",
   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
   	colModel:[
   		{name:'id',index:'id', width:55},
   		{name:'invdate',index:'invdate', width:90},
   		{name:'name',index:'name', width:100},
   		{name:'amount',index:'amount', width:80, align:"right"},
   		{name:'tax',index:'tax', width:80, align:"right"},		
   		{name:'total',index:'total', width:80,align:"right"},		
   		{name:'note',index:'note', width:150, sortable:false}		
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	pager: '#pager5',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"Simple data manipulation",
    editurl:"someurl.php"
}).navGrid("#pager5",{edit:false,add:false,del:false});
jQuery("#a1").click( function(){
	var id = jQuery("#list5").jqGrid('getGridParam','selrow');
	if (id)	{
		var ret = jQuery("#list5").jqGrid('getRowData',id);
		alert("id="+ret.id+" invdate="+ret.invdate+"...");
	} else { alert("Please select row");}
});
jQuery("#a2").click( function(){
	var su=jQuery("#list5").jqGrid('delRowData',12);
	if(su) alert("Succes. Write custom code to delete row from server"); else alert("Allready deleted or not in list");
});
jQuery("#a3").click( function(){
	var su=jQuery("#list5").jqGrid('setRowData',11,{amount:"333.00",tax:"33.00",total:"366.00",note:"<img src='images/user1.gif'/>"});
	if(su) alert("Succes. Write custom code to update row in server"); else alert("Can not update");
});
jQuery("#a4").click( function(){
	var datarow = {id:"99",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"};
	var su=jQuery("#list5").jqGrid('addRowData',99,datarow);
	if(su) alert("Succes. Write custom code to add data in server"); else alert("Can not update");
});
</script>
</head>
<body>
	<center>
	    	사용자${sessionScope.id}
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름&nbsp;&nbsp;름</th>
				<th>역&nbsp;&nbsp;활</th>
			</tr>
			<tr>			
			<c:forEach items="${requestScope.userList}" var="user">
			<tr>
				<td>${user.id}</td>
				<td><a href='view.do?id=${user.id}'>${user.name}</a></td>
				<td>${user.role}</td>
			</tr>			
			</c:forEach>
			</tr>			
		</table>

		<table id="list5"></table>
		<div id="pager5"></div>
		<br /> <a href="#" id="a1">Get data from selected row</a> <br /> <a
			href="#" id="a2">Delete row 2</a> <br /> <a href="#" id="a3">Update
			amounts in row 1</a> <br /> <a href="#" id="a4">Add row with id
			99</a>
		<script src="manipex.js" type="text/javascript">
			
		</script>
		<br /> <a href="input.do">사용자등록</a>
		<a href="logout.do">로그아웃</a>
				
	</center>
</body>
</html>