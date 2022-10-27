<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>My home</title>
</head>
<body>
    <h1>My age</h1>
    <h3>Welcome to the page.....</h3>
    <hr>
        <p>
         User: <sec:authorize access="isAuthenticated()">
            authenticated as <sec:authentication property="principal.username" /> 
        </sec:authorize>
        </p><br>
        <p>
            Role(s): <sec:authorize access="isAuthenticated()">
                authenticated as <sec:authentication property="principal.authorities" /> 
            </sec:authorize>
        </p><hr>
    <p>
        <sec:authorize access="hasRole('MANAGER')">
        <a href="${pageContext.request.contextPath}/leaders">Ledership Meeting..</a>
    </sec:authorize>
    </p>
    <hr>
    <p>
        <sec:authorize access="hasRole('ADMIN')">
        <a href="${pageContext.request.contextPath}/systems">page for admin</a>
    </sec:authorize>
    </p>
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
            <input type="submit" value="logout" />
    </form:form>
    
</body>
</html>