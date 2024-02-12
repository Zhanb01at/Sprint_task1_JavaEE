<%@ page import="java.util.ArrayList" %>
<%@ page import="classes.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/vendor/head.jsp"%>
</head>
<body>
<%@include file="/vendor/navbar.jsp"%>
<div class="container mt-3">
    <div class="row">
        <div class="col">
            <%
                Tasks tasks = (Tasks) request.getAttribute("zadacha");
                if(tasks!=null){
            %>
            <label class="form-label">Name: </label>
            <input type="text" name="name" class="form-control" value="<%=tasks.getName()%>" readonly>
            <label class="form-label mt-3">Description: </label>
            <input type="text" name="description" class="form-control" value="<%=tasks.getDescription()%>" readonly>
            <label class="form-label mt-3">Deadline: </label>
            <input type="date" name="deadline" class="form-control" value="<%=tasks.getDeadlineDate()%>" readonly>
            <%
                } else{
                    System.out.println("NO");
                }
            %>

        </div>
    </div>
    <div class="row mt-3">
        <div class="col">
            <button type="submit" class="btn btn-success">Save</button>
            <button type="button" class="btn btn-danger">Remove</button>
        </div>
    </div>
</div>
</body>
</html>
