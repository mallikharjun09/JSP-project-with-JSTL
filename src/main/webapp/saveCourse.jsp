<%@page import="com.tmf.SMS.course.services.CourseServiceImpl"%>
<%@page import="com.tmf.SMS.course.model.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head></head>
<body>
<%
    int id = Integer.parseInt(request.getParameter("cid"));
    String name = request.getParameter("cname");
    String modules = request.getParameter("cmods");
    String qualification = request.getParameter("cqual");
    double fee = Double.parseDouble(request.getParameter("fee"));
    int duration = Integer.parseInt(request.getParameter("cdur"));
    
    Course course = new Course(id,duration,fee,name,modules,qualification);
    CourseServiceImpl service = new CourseServiceImpl();
    if(service.addCourse(course)){
    	response.sendRedirect("index.jsp");
    }
    else{
    	out.println("Error");
    }
    
%>
<script>
      alert("A new course has been added...")
</script>

</body>
</html>
