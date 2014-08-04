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
		<table id="list4"></table>
			<script type="text/javascript">
			jQuery("#list4").jqGrid({
				url:'jqgrid.do',
				datatype: "json",
				height: 250,
			   	colNames:['id','name', 'role'],
			   	colModel:[
			   		{name:'id',index:'id', width:60, sorttype:"int"},
			   		{name:'name',index:'name', width:90},
			   		{name:'role',index:'naroleme', width:100},
			   	],
			   	multiselect: true,
			   	caption: "Manipulating Array Data",
			   	
			   	 jsonReader: {
	                   repeatitems:false
	               }
			});		
			//		jQuery("#list4").jqGrid('addRowData',i+1,mydata[i]);
	
			</script>
		
	</center>
</body>
</html>