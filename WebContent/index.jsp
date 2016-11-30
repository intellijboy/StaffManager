<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="js/jquery.form.js" type="text/javascript"></script>
<title>员工档案卡管理</title>
<style>
#employeeList{
	top:-10px;
	border:0px solid green;
}

.employeeCard{
	float:left;
	border:1px solid blue;
	padding:2px;
	margin:2px;
}
.employeeCard input {
	width: 60px;
}

.employeeCard select{
	width: 65px;
}

.employeeCard button {
	color:red;
	width: 185px;
}

.controller input{
	float:right;
	width: 60px;
}

</style>
<script>

 
</script>
</head>
<body>

<div width="100%" height="100px" style="border:0px solid red;">
	<form id="employeeForm">
	<div id="employeeEmpty"  class="employeeCard" >
		<img id="employeePhotoImg" src="images/employeeEmpty.jpg" height="130px" style="float:left">
		<div style="float:left">
			<input id = "employeeID"  type="hidden">
			编号：<input id = "employeeCode"  type="text" value="000" >
			姓名：<input id = "employeeName" type="text" ><br/>
			性别：<select id = "employeeSex" ><option>男</option><option>女</option></select>
			工资：<input id = "employeeSalary" type="text" value="100" ><br/>
			照片：<button id="employeePhoto" onclick="return savePhoto($(this));">上传照片</button><br/>
			部门：<select id = "employeeDepartment" ></select>
			<input id="btCreateDepartment" type="button" value="+"  onclick="createDepartment()">
			<input id="btDeleteDepartment" type="button" value="-"  onclick="deleteDepartment($('#employeeEmpty').find('#employeeDepartment').val())">
		</div>		
		<div class="controller">
			<input id="btCreate" type="button" value="添加" onclick="createEmployee()">
			<input id="btModify" type="button" value="修改"  onclick="modifyEmployee($(this).attr('employeeID'))">
			<input id="btDelete" type="button" value="删除" onclick="deleteEmployee($(this).attr('employeeID'))">
		</div>
	</div>	
	</form>
	<div id="employeeList"></div>
</div>
</body>
</html>