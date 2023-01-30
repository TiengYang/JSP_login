<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
.center {
  margin-left: auto;
  margin-right: auto;
  border-collapse: separate;
  border-spacing: 0 5px;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Hello</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<style>
p{
color: red;
display: none;
}
</style>
</head>
<body>
<div style = "border-style: solid; text-align: center; margin: auto; padding: 50px; width: 50%">

<form action="welcome.jsp">
<table class = "center">
  <tr>
    <td style="text-align: left;">User ID: </td>
    <td><input style = "border: 3px solid black; width: 80%;" type="text" id="username" name="username">
    </td>
  </tr>
  <tr>
  <td></td>
  <td><p id="usernameError">Enter you User ID</p></td>
  </tr>
  <tr>
    <td style="text-align: left;">Password: </td>
    <td><input style = "border: 3px solid black; width: 80%;" type="password" id="password" name="password"></td>
  </tr>
  <tr>
  <td></td>
  <td><p id="passError">Enter you password</p></td>
  </tr>
  <tr>
  <td colspan="2"><p id="mismatchError">Wrong User ID and password</p></td>
  </tr>
  <tr>
    <td></td>
    <td><input style="width: 85%; border-style: double; background-color: #999999; color: white;" type="submit" name="" value="login" onclick="check(event)"></input></td>
  </tr>
</table>
</form>


</div>>

<script type="text/javascript">
function check(event) {
	$("#usernameError").hide();
	$("#passError").hide();
	$("#mismatchError").hide();
	var id = "test123";
	var password = "password";
	var empty = false;
	var name = $("#username").val();
	var pass = $("#password").val();
	
	if(name == ""){
		empty = true;
		$("#usernameError").show();
		event.preventDefault();
	}
	
	if(pass == ""){
		empty = true;
		$("#passError").show();
		event.preventDefault();
	}
	
	if(!empty) {
		if(name != id || pass != password ){
			$("#mismatchError").show();
			event.preventDefault();
		}
	}
	
}
</script>
</body>
</html>