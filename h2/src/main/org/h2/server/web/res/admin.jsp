<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 
Copyright 2004-2006 H2 Group. Licensed under the H2 License, Version 1.0 (http://h2database.com/html/license.html). 
Initial Developer: H2 Group
-->
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>${text.a.title}</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">

    <script type="text/javascript">
        <!--
        if(self != top) {
            top.location = "admin.jsp";
        }
        //-->
    </script>

</head>
<body style="margin: 20px">
    <h1>
        ${text.adminTitle}
    </h1>
    <p>
        <a href="index.do?jsessionid=${sessionId}">${text.adminLogout}</a> 
    </p>
    <hr>
    <form name="admin" method="post" action="/adminSave.do?jsessionid=${sessionId}">
    <h3>
        ${text.adminAllow}
    </h3>
    <p>
        <input type="radio" name="allowOthers" value="false" <c:if test="allowOthers=='false'">checked</c:if>> ${text.adminLocal}<br>
        <input type="radio" name="allowOthers" value="true" <c:if test="allowOthers=='true'">checked</c:if>> ${text.adminOthers}<br>
    </p>
    <h3>
        ${text.adminConnection}
    </h3>
    <p>
        <input type="radio" name="ssl" value="false" <c:if test="ssl=='false'">checked</c:if>> ${text.adminHttp}<br>
        <input type="radio" name="ssl" value="true" <c:if test="ssl=='true'">checked</c:if>> ${text.adminHttps}<br>
    </p>
    <h3>
        Port number
    </h3>
    <p>
        ${text.adminPort}: <input type="text" name="port" value="${port}">
    </p>
    <hr>
    <p>
        <input type="submit" class="button" value="${text.adminSave}">
    </p>
    <p>
        ${text.adminRestart}
    </p>
    <hr>
    <h3>
        ${text.adminSessions}
    </h3>
    <table>
        <tr>
            <th>${text.admin.ip}</th>
            <th>${text.admin.url}</th>
            <th>${text.a.user}</th>
            <th>${text.admin.executing}</th>
            <th>${text.admin.lastAccess}</th>
            <th>${text.admin.lastQuery}</th>
        </tr>
        <c:forEach var="item" items="sessions">
            <tr>
                <td>
                    ${item.ip}
                </td>
                <td>
                    ${item.url}
                </td>
                <td>
                    ${item.user}
                </td>
                <td>
                    ${item.executing}
                </td>
                <td>
                    ${item.lastAccess}
                </td>
                <td>
                    ${item.lastQuery}
                </td>
            </tr>
        </c:forEach>
    </table>
    <p>
        <a href="adminShutdown.do?jsessionid=${sessionId}">${text.adminShutdown}</a> 
    </p>
    
    </form>
</body>