<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
    xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8" />
<title>Edit Candidate</title>
</head>
<body>
    <div align="center">
        <h1>Edit Product</h1>
        <br />
        <form action="#" th:action="${pageContext.request.contextPath}@{/candidate}" th:object="${candidate}"
            method="post">
 
            <table border="0" cellpadding="10">
                <tr>             
                    <td>Client name :</td>
                    <td>
                        <input type="text" th:field="*{client_name}" readonly="readonly" />
                    </td>
                </tr>
                <tr>             
                    <td>Recruiter name :</td>
                    <td>
                        <input type="text" th:field="*{recruiter_name}" readonly="readonly" />
                    </td>
                </tr>        
                <tr>             
                    <td> Name:</td>
                    <td>
                        <input type="text" th:field="*{name}" />
                    </td>
                </tr>
                <tr>
                    <td> Email:</td>
                    <td><input type="text" th:field="*{email}" /></td>
                </tr>
                <tr>
                    <td>mobile:</td>
                    <td><input type="number" th:field="*{mobile}" /></td>
                </tr>
                <tr>
                    <td>current ctc:</td>
                    <td><input type="text" th:field="*{ctc}" /></td>
                </tr>                            
                <tr>
                    <td colspan="2"><button type="submit">Save</button> </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>