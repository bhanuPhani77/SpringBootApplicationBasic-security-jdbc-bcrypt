<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <html>
    <head>
        <title>
            Register form
        </title>
        <style>
            #formbody{
                text-align: center;
                border: 5px dotted dashed solid double;
            }
        </style>
        <!-- Reference Bootstrap files -->
	<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
    <div class="container">
    <div class="card text-center" id="formbody" style="width: 18rem;">
        
        <h2 class="card-title">Register</h2>
        <form:form action="/reg" method="post" modelAttribute="user">
            
                       <label for="name" class="form-label"> Full Name:</label>
                        <form:input class="form-control" id="name" path="name" value=""/>
                        <form:errors path="name" />
                    
                    <label for="phno" class="form-label"> Mobile Number:</label>
                    <form:input class="form-control" id="phno" path="mobilenumber" value=""/>
                        <form:errors path="mobilenumber" />
                    
                        <label for="username" class="form-label"> User Name:</label>
                        <form:input class="form-control" id="username" path="username" value="" />
                        <form:errors path="username" />
                 
                        <label for="password" class="form-label"> Password:</label> 
                        <form:password class="form-control" path="password" id="password" value=""  aria-required="true" />
                        <form:errors path="password" />
                    <div>
                        <label for="role" class="form-label"> Roles:</label> 
                        <form:errors path="roles" /> <br>
                        <form:checkbox class="form-check-input" id="exampleCheck1" path="roles" value="EMPLOYEE"/>
                        <label class="form-check-label" for="exampleCheck1">EMPLOYEE</label> <br>
                        <form:checkbox class="form-check-input" id="exampleCheck2" path="roles" value="MANAGER"/>
                        <label class="form-check-label" for="exampleCheck2">MANAGER</label> <br>
                        <form:checkbox class="form-check-input" id="exampleCheck3" path="roles" value="  ADMIN" /> 
                        <label class="form-check-label" for="exampleCheck3">ADMIN</label>
                    </div>                    
                        <button type="submit" class="btn btn-primary">Register</button>
                    
        </form:form>
    </div>
</div>
    </body>
</html>