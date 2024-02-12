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
        <button type="button" class="btn btn-info mb-3" data-bs-toggle="modal" data-bs-target="#tasks">
            + Add tasks
        </button>
        <div class="modal fade" id="tasks" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <form action="/addTask" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">New task </h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <label class="form-label">Name: </label>
                                <input type="text" name="name" class="form-control">
                                <label class="form-label">Description: </label>
                                <input type="text" name="description" class="form-control">
                                <label class="form-label">Deadline: </label>
                                <input type="date" name="deadline" class="form-control">
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">NAME</th>
                <th scope="col">DEADLINE</th>
                <th scope="col">DONE</th>
                <th scope="col">DETAILS</th>
            </tr>
            </thead>
            <tbody>
            <%
                ArrayList<Tasks> tasks = (ArrayList<Tasks>) request.getAttribute("zadachi");
                if(tasks!=null){
                    for(Tasks task : tasks){
            %>
            <tr>
                <td><%=task.getId()%></td>
                <td><%=task.getName()%></td>
                <td><%=task.getDeadlineDate()%></td>
                <td><%=task.getStatus()%></td>
                <td><a class="btn btn-small btn-info" href="/details?id=<%=task.getId()%>">Details</a></td>
            </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>
    </div>
</body>
</html>
