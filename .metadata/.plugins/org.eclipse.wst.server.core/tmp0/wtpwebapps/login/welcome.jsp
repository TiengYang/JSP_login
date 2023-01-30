<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, tr, th, td {
padding: 5px;
border: 1px solid black;
}

table {
border-collapse: collapse;
}

th {
padding: 5px 20px 5px 20px;
color: white;
background-color: #6495ED;
}

</style>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
</head>
<body>
<p><span>Welcome </span>
   <%= request.getParameter("username")%>
</p>
<%
int[][] score = {
		{
			35,70,60,90
		},
		{
			30
		},
		{
			32,70,20
		}
};

double[] depPass = new double[3];
int count = 0;

for(int i = 0; i < score.length; i++){
	for(int j = 0; j < score[i].length; j++){
		if(score[i][j] >= 40) {
			count++;
		}
	}
	System.out.println(count + " " + score[i].length);
	depPass[i] = (count*100/score[i].length);
	count = 0;
}

%>
<table>
  <tr>
    <th>Department</th>
    <th>Student ID</th>
    <th>Marks</th>
    <th>Pass %</th>
  </tr>
  <tr>
    <td rowspan="4" style="text-align: center;">Dep 1</td>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S1')">S1</a></td>
    <td style="text-align:right">35</td>
    <td rowspan="4" style="text-align: center;"><%= depPass[0]%></td>
  </tr>
  <tr>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S2')">S2</a></td>
    <td style="text-align:right">70</td>
  </tr>
  <tr>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S3')">S3</a></td>
    <td style="text-align:right">60</td>
  </tr>
  <tr>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S4')">S4</a></td>
    <td style="text-align:right">90</td>
  </tr>
  <tr>
    <td style="text-align: center;">Dep 2</td>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S5')">S5</a></td>
    <td style="text-align:right">30</td>
    <td style="text-align: center;"><%= depPass[1]%></td>
  </tr>
  <tr>
    <td rowspan="3" style="text-align: center;">Dep 3</td>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S6')">S6</a></td>
    <td style="text-align:right">32</td>
    <td rowspan="3" style="text-align: center;"><%= depPass[2]%></td>
  </tr>
  <tr>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S7')">S7</a></td>
    <td style="text-align:right">70</td>
  </tr>
  <tr>
    <td><a style="cursor: pointer; text-decoration: underline; text-decoration-color: blue; color: blue;" onclick="popup('S8')">S8</a></td>
    <td style="text-align:right">20</td>
  </tr>
</table>

<div id="popup" style = "top: 150px; left: 150px; position: absolute; z-index: 10; background-color:white; border-style: solid; text-align: center; padding: 10px; width: 50px; display:none;">
<div><p id="name"></p></div>
<div>
<button class="close">Close</button>
</div>
</div>
<script type="text/javascript">
function popup(take){
	var hidden = $("#popup").is(":hidden");
	if(hidden){
		$("#popup").show();
		$("#name").html(take);
	}
}

$(document).ready(function(){
	  $(".close").click(function(){
	    $("#popup").hide();
	  });
	});
</script>
</body>
</html>