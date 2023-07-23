<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Тимофей
  Date: 17.07.2023
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<html>

<body>

<h2>Dear Employee, Please enter your details</h2>
<br>
<br>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>

    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>

    Salary <form:input path="salary"/>
    <br><br>

    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>

    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreign language(s)
    <form:checkboxes path="languages" items="${employee.language_list}"/>


    <br><br>
    <input type="submit" value="OK">

</form:form>




<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--    placeholder="Write your name"/>--%>

<%--    <input type="submit"/>--%>


<%--</form>--%>

</body>
</html>
