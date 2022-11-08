<%-- 
    Document   : att
    Created on : Oct 16, 2022, 3:08:10 PM
    Author     : sonnt
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../style2.css"/>
    </head>
    <body>
        <a>Take attendance for Group: ${requestScope.ses.group.name} <br/></a>
        Subject: ${requestScope.ses.group.subject.name} <br/>
        Room: ${requestScope.ses.room.name} <br/>
        Date: ${requestScope.ses.date}<br/>
        TimeSlot: ${requestScope.ses.timeslot.description}<br/>
        <b> Attended:</b> <span style="color: red; font-weight: bold"> ${requestScope.ses.attended?"Yes":"No"} </span>
        <form action="takeatt" method="POST">
            <input type="hidden" name="sesid" value="${param.id}"/>
            <table border="1px">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>ID</th>
                        <th>Student Name</th>

                        <th>Present</th>
                        <th>Absent</th>
                        <th>Description</th>
                        <th>Record_time</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.ses.attendances}" var="a" varStatus="loop">
                        <tr>
                            <td>${loop.index+1}</td>
                            <td><font color="#33CCFF">${a.student.id}</font>
                                <input type="hidden" name="stdid" value="${a.student.id}"/>
                            </td>
                            <td><font color="blue">${a.student.name}</font></td>
                            <td>
                                <input type="radio"
                                       <c:if test="${a.present}">
                                           checked="checked"
                                       </c:if>
                                       name="present${a.student.id}" value="present" />
                            </td>
                            <td>
                                <input type="radio"
                                       <c:if test="${!a.present}">
                                           checked="checked"
                                       </c:if>
                                       name="present${a.student.id}" value="absent" />
                            </td>
                            <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                            <td>${a.record_time}</td>
                        </tr>   
                    </c:forEach>

                </tbody>
            </table>
            <input type="submit" value="Save" onclick="takeattend();"/>              
        </form>
        <a style="font-size: 20px" href="timetable?lid=${requestScope.ses.lecturer.id}">Back</a>
    </body>
</html>