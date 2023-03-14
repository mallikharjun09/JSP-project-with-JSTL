<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<%@page import="com.tmf.SMS.course.model.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.tmf.SMS.course.services.CourseServiceImpl"%>
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
            	 <c:set var="courses" 
            	 value="<%=new CourseServiceImpl().displayCourse()%>"/>
            	 <c:forEach items="${courses}" var="crs">
                 <tr>
                     <td>${crs.courseId}</td>
                     <td>${crs.courseName}</td>
                     <td>${crs.duration}</td>
                     <td>${crs.fee}</td>
                     <td>
                     
                     	<a href="viewCourse.jsp?cid=${crs.courseId}">
                     	<i class="m-1 p-1 text-dark border 
                     	border-danger fa-sharp fa-solid fa-eye"></i></a>
                     	<a href="editCourse.jsp?cid=${crs.courseId}">
                     	<i class="m-1 p-1 text-dark border 
                     	border-danger fa-sharp fa-solid fa-pencil"></i></a>
                     	<a href="deleteCourse.jsp?cid=${crs.courseId}">
                     	<i class="m-1 p-1 text-dark border border-danger
                     	 fa-sharp fa-solid fa-trash"></i></a>
                     </td>
                 </tr>
            </c:forEach>
       </tbody>
   </table>
   </div>
</body>
</html>



