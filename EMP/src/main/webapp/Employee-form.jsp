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
        <a href="#">HOME</a>
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
	<div class="container col-md-5">
	<div class="p-3 mb-2 bg-info text-dark">
		<div class="card">
			<div class="card-body">
				<c:if test="${employee != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${employee == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${employee != null}">
            			Edit Employee
            		</c:if>
						<c:if test="${employee == null}">
            			Add New Employee
            		</c:if>
					</h2>
				</caption>

				<c:if test="${employee != null}">
					<input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
				</c:if>
                
				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${employee.getFname()}' />" class="form-control"
						name="Fname" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${employee.getLname()}' />" class="form-control"
						name="Lname">
				</fieldset>

				<fieldset class="form-group">
					<label>Gender</label> <input type="text"
						value="<c:out value='${employee.getGender()}' />" class="form-control"
						name="gender">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Age</label> <input type="text"
						value="<c:out value='${employee.getAge()}' />" class="form-control"
						name="age">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Employee Type</label> <input type="text"
						value="<c:out value='${employee.getEmployeetype()}' />" class="form-control"
						name="employeetype">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Joined Date</label> <input type="text"
						value="<c:out value='${employee.getJoineddate()}' />" class="form-control"
						name="joineddate">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Department Name</label> <input type="text"
						value="<c:out value='${employee.getDepartmentname()}' />" class="form-control"
						name="departmentname">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Job Title</label> <input type="text"
						value="<c:out value='${employee.getJobtitle()}' />" class="form-control"
						name="jobtitle">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Salary</label> <input type="text"
						value="<c:out value='${employee.getSalary()}' />" class="form-control"
						name="salary">
				</fieldset>
				
				<fieldset class="form-group">
					<label>No Of Leaves</label> <input type="text"
						value="<c:out value='${employee.getNoofleaves()}' />" class="form-control"
						name="noofleaves">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${employee.getEmail()}' />" class="form-control"
						name="email">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Tel No</label> <input type="text"
						value="<c:out value='${employee.getTelno()}' />" class="form-control"
						name="telno">
				</fieldset>
				

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
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