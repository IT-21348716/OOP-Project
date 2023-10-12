<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>EMPLOYEES MANAGEMENT SYSTEM</title>
<link rel=" stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> 
</head>
<body>

<html lang="en">
<head>
<style>.Edit-btn{
background-color:green;
color:black;
font-size:10px;
padding:5px 18px;
border-radius:8px;

}
.Delete-btn{
background-color:red;
border-radius:8px; 
color:black;
font-size:10px;
padding:5px 11px;

}

</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bookstore</title>

    

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="https://drive.google.com/uc?id=15V3f_ByyHo11h5MKr18eIXEo9xk3h6a1">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

     <a href="#" ><img src="https://i.ibb.co/WyjpySF/ZoGo.png" width="200" height="200"  alt="ZoGo" border="0"></a>

    <nav class="navbar">
        <a href="Home.jsp">HOME</a>
        <a href="#">EMPLOYEE</a>
        <a href="#">FEEDBACK</a>
        <a href="#">REGISTER</a>
        
        
    </nav>

    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-user" id="login-btn"></div>
    </div>

    

    <div class="shopping-cart">
        
    </div>

    <form action="" class="login-form">
        
    </form>

</header>

<!-- header section ends -->

<!--start cording your part-->


<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #add8e6">
			<div>
				<a class="navbar-brand"> EMPLOYEES MANAGEMENT SYSTEM </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Employees</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Employees</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success btn-hover">Add
					New Employee</a>
			</div>
		
			<br>
			<table class="table table-striped table-bordered table-hover table-light">
				<thead class="thead-dark">
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Gender</th>
						<th>Age</th>
						<th>Employee Type</th>
						<th>Joined Date</th>
						<th>Department Name</th>
						<th>Job Title</th>
						<th>Salary</th>
						<th>No Of Leaves</th>
						<th>Email</th>
						<th>Tel No</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="employee" items="${listEmployee}">

						<tr>
							<td><c:out value="${employee.id}" /></td>
							<td><c:out value="${employee.getFname()}" /></td>
							<td><c:out value="${employee.getLname()}" /></td>
							<td><c:out value="${employee.getGender()}" /></td>
							<td><c:out value="${employee.getAge()}" /></td>
							<td><c:out value="${employee.getEmployeetype()}" /></td>
							<td><c:out value="${employee.getJoineddate()}" /></td>
							<td><c:out value="${employee.getDepartmentname()}" /></td>
							<td><c:out value="${employee.getJobtitle()}" /></td>
							<td><c:out value="${employee.getSalary()}" /></td>
							<td><c:out value="${employee.getNoofleaves()}" /></td>
							<td><c:out value="${employee.getEmail()}" /></td>
							<td><c:out value="${employee.getTelno()}" /></td>
							<td><a href="edit?id=<c:out value='${employee.id}' />"><button type="submit" class="Edit-btn">Edit</button></a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
								<a href="delete?id=<c:out value='${employee.id}' />"><button type="submit" class="Delete-btn">Delete</button></a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>

<!--Do not change below parts-->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>ZoGo EMP</h3>
            <p>From roadmaps to workflows, power team collaboration and move work forward with the #1 project management tool used by agile teams.</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>Contact Info</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> 0118654321 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> 0117654321 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> ZoGoemployeemng@gmail.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> no 3 , colombo, Sri Lanka </a>
        </div>

        <div class="box">
            <h3>newsletter</h3>
        
              <img src="https://i.ibb.co/74N3rst/payment.jpg" style="width:300px; height:100px;">
        </div>

    </div>

    <div class="credit"> created by <span> SLIIT FOC </span> | all rights reserved </div>

</section>

<!-- footer section ends --->