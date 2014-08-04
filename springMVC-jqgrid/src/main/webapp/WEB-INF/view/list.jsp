<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list page</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%= request.getContextPath() %>/resources/jqgrid/jquery-ui.css" />
<link rel='stylesheet' type='text/css' href='<%= request.getContextPath() %>/resources/jqgrid/ui.jqgrid.css'>

<script src="<%= request.getContextPath() %>/resources/jqgrid/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="<%= request.getContextPath() %>/resources/jqgrid/grid.locale-en.js" type="text/javascript"></script>
<script src="<%= request.getContextPath() %>/resources/jqgrid/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<%= request.getContextPath() %>/resources/jqgrid/JsonXml.js" type="text/javascript"></script>

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

	<table id="list4"></table>
		<script type="text/javascript">
		jQuery("#list4").jqGrid({
			datatype: "local",
			height: 250,
		   	colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
		   	colModel:[
		   		{name:'id',index:'id', width:60, sorttype:"int"},
		   		{name:'invdate',index:'invdate', width:90, sorttype:"date"},
		   		{name:'name',index:'name', width:100},
		   		{name:'amount',index:'amount', width:80, align:"right",sorttype:"float"},
		   		{name:'tax',index:'tax', width:80, align:"right",sorttype:"float"},		
		   		{name:'total',index:'total', width:80,align:"right",sorttype:"float"},		
		   		{name:'note',index:'note', width:150, sortable:false}		
		   	],
		   	multiselect: true,
		   	caption: "Manipulating Array Data"
		});
		var mydata = [
				{id:"1",invdate:"2007-10-01",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				{id:"2",invdate:"2007-10-02",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				{id:"3",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				{id:"4",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				{id:"5",invdate:"2007-10-05",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				{id:"6",invdate:"2007-09-06",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				{id:"7",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				{id:"8",invdate:"2007-10-03",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				{id:"9",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"}
				];
		for(var i=0;i<=mydata.length;i++)
			jQuery("#list4").jqGrid('addRowData',i+1,mydata[i]);

	</script>
	
	</center>
</body>
</html>