<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns:th="https://thymeleaf.org">   
<body>
<%
String name=request.getParameter("n3");
//System.out.println("display page :"+name);
%>



	<div class="col-md-10">
	<div class="row margin-t13">
		<table class="table table-bordered">
	<thead>
	<tr>
		<th>Id</th>
		<th>Name</th><th>Client_name</th>
		<th>Recruiter_name</th>
		<th>Skill</th>
		<th>Mobile</th>
		<th>Email</th>
	<!--  	<th>Edit</th> -->
		<th>Delete</th>
			
	</tr>
	</thead>
		<c:forEach var="candidate" items="${candidate}">
			<tr>
				
				<td>${candidate.id}</td>
				<td>${candidate.name}</td>
				<td>${candidate.client_name}</td>
				<td>${candidate.recruiter_name}</td>
				<td>${candidate.skill}</td>
				<td>${candidate.mobile}</td>
				<td>${candidate.email}</td>
				<!--  <td><a th:href="/@{'/edit/' + ${candidate.id}}">Edit</a></td> -->
				<!--  <td><a th:href="/@{'/delete/' + ${candidate.id}}">Delete</a></td> -->	
				  <td><a href="delete/${candidate.id}"  onclick="return confirm('Are you sure to delete?')">Delete</a></td> 
                </tr>
		</c:forEach>
	</table>
	</div></div>
</body>
</html>