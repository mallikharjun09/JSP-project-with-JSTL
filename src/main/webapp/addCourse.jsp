<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <form class="w-50 border border-danger rounded p-2" action="saveCourse.jsp">
            <h3 class="bg-danger text-white text-center">
               Add new Course
            </h3>
            <div class="mb-3">
                <label class="form-label" for="cid">
                     Course Id
                </label>
                <input placeholder="Course Id" type="number" class="form-control" id="cid" name="cid"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cname">
                     Course Name
                </label>
                <input placeholder="Course Name" type="text" class="form-control" id="cname" name="cname"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cdur">
                     Course Duration
                </label>
                <input type="number" class="form-control" id="cdur" name="cdur" placeholder="Duration of the Course In Monthds"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cqual">
                     Required Qualification
                </label>
                <input type="text" class="form-control" id="cqual" name="cqual"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="cmods">
                     Modules to be covered
                </label>
                <input type="text" class="form-control" id="cmods" name="cmods"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="fee">
                     Course Fee
                </label>
                <input type="number" class="form-control" id="fee" name="fee"/>
            </div>
            <div class="text-end">
                <button class="btn btn-danger" type="submit">Add Course</button>
            </div>
        </form>
    </div>
</body>
</html>