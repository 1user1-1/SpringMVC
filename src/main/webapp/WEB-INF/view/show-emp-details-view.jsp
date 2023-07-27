<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Тимофей
  Date: 17.07.2023
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>

<body>

<h2>Dear Employee, you are WELCOME!!!</h2>
<br>
<br>
<br>

<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<ul>

    <c:forEach var="lang" items="${employee.languages}">

        <li>   ${lang}  </li>

    </c:forEach>

</ul>

Phone number: ${employee.phoneNumber}
<br>
Email: ${employee.email}

</body>

</html>