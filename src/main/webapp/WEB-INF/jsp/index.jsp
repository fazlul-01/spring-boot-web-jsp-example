<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<body>
    <h1>${message}</h1>
    <form action="hello.jsp" method="POST">
        <label for="name"> Name: </label>
        <input type="text" id="name" name="Name"><br>
        <input type="submit" value="Submit">
    </form>

    <spring:url value="/test.txt" htmlEscape="true" var="springUrl" />
    <c:url value="/test.txt" var="cUrl"/>


    <p><a href="${springUrl}">URL generated by Spring</a></p>
    <p><a href="${cUrl}">URL generated by JSTL</a></p>

    <p><a href="<c:url value="/fail"/>">This url always fail</a></p>

</body>

</html>
