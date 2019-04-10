<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

        
        <form method="post" action="/message"  >
            <h3>Send a new message</h3>
            <input type="text" name="name" placeholder="name here">
			<br>
            <textarea  name="message" placeholder="message here"></textarea><br>
            <input type="submit" name="Submit">
        </form>
        <form method="post" action="/user">
            <h3>Add new user</h3>
            <input type="text" name="name" placeholder="name here"><br>
            <input type="number" name="age" placeholder="Mobile Number here "><br>
             <input type="text" name="location" placeholder="name here"><br>
            <input type="submit" name="Submit">
        </form>


</body>
</html> -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Registration Form</title>

<style>

	.error {
		color: #ff0000;
	}
</style>

</head>

<body>

	<h2>Registration Form</h2>
 
	<form:form method="POST" modelAttribute="mdata">
		<form:input type="hidden" path="id" id="id"/>
		<table>
			<tr>
				<td><label for="number">Number: </label> </td>
				<td><form:input path="number" id="number"/></td>
				<td><form:errors path="number" cssClass="error"/></td>
		    </tr>
	    
			<tr>
				<td><label for="state">state: </label> </td>
				<td><form:input path="state" id="state"/></td>
				<td><form:errors path="state" cssClass="error"/></td>
		    </tr>
	
			<tr>
				<td colspan="3">
					<!-- <c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update"/>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register"/>
						</c:otherwise>
					</c:choose> -->
					<input type="submit" value="Register"/>
				</td>
			</tr>
		</table>
	</form:form>
	<br/>
	<br/>
	Go back to <a href="<c:url value='/list' />">List of All Users</a>
</body>
</html>




