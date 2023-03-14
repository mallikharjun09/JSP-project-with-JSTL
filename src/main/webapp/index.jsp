<%@page import="com.tmf.SMS.course.model.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.tmf.SMS.course.services.CourseServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="container">
   <h3 class="bg-danger text-white text-center">Available Courses....</h3>
   <%! CourseServiceImpl service = new CourseServiceImpl(); %>
   <%! List<Course> courses = service.displayCourse(); %>
   <a href="addCourse.jsp" class="btn btn-danger mb-2">Add New Course</a>
   <a href="displayAll.jsp" class="btn btn-danger mb-2">Display Courses using EL</a>
   <table class="table table-bordered table-hover">
       <thead class="bg-danger text-white text-center">
           <tr>
           	   <th>Course Id</th>
           	   <th>Course Name</th>
           	   <th>Course Duration in Months</th>
           	   <th>Course Fee</th>
           	   <th></th>
           </tr>
       </thead>
       <tbody class="table-danger">
            <%for(Course c : courses){ %>
                 <tr>
                     <td><%= c.getCourseId() %></td>
                     <td><%=c.getCourseName() %></td>
                     <td><%=c.getDuration() %></td>
                     <td><%=c.getFee() %></td>
                     <td>
                     	<a href="#"><i class="m-1 p-1 text-dark border border-danger fa-sharp fa-solid fa-eye"></i></a>
                     	<a href="#"><i class="m-1 p-1 text-dark border border-danger fa-sharp fa-solid fa-pencil"></i></a>
                     	<a href="#"><i class="m-1 p-1 text-dark border border-danger fa-sharp fa-solid fa-trash"></i></a>
                     </td>
                 </tr>
            <%} %>
       </tbody>
   </table>
   </div>
</body>
</html>