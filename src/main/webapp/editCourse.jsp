<%@page import="com.tmf.SMS.course.model.Course"%>
<%@page import="com.tmf.SMS.course.services.CourseServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"/>
<title>Insert title here</title>
</head>
<body>
<%
     int id = Integer.parseInt(request.getParameter("cid"));
     Course course = new CourseServiceImpl().displayCourse(id);
%>

<core:set var="c" value="<%=course%>"/>
<div class="container">
        <form class="w-50 border border-danger rounded p-2" action="updateCourse.jsp">
            <h3 class="bg-danger text-white text-center">
               Add new Course
            </h3>
            <div class="mb-3">
                <input placeholder="Course Id"  type="hidden" class="form-control" id="cid" name="cid" value="${c.courseId}"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cname">
                     Course Name
                </label>
                <input placeholder="Course Name" type="text" class="form-control" id="cname" name="cname" value="${c.courseName}"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cdur">
                     Course Duration
                </label>
                <input type="number" class="form-control" id="cdur" name="cdur" placeholder="Duration of the Course In Monthds" value="${c.duration}"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cqual">
                     Required Qualification
                </label>
                <input type="text" class="form-control" id="cqual" name="cqual" value="${c.qualification}"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cmods">
                     Modules to be covered
                </label>
                <input type="text" class="form-control" id="cmods" name="cmods" value="${c.modulesToBeCovered}"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="fee">
                     Course Fee
                </label>
                <input type="number" class="form-control" id="fee" name="fee" value="${c.fee}"/>
            </div>
            <div class="text-end">
                <button class="btn btn-danger" type="submit">Update Course</button>
            </div>
        </form>
    </div>
 </body>
</html>