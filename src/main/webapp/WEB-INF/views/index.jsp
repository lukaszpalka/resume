<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="dynamic/css.jspf" %>


<body id="top">

<%@include file="dynamic/navbar.jspf" %>

<div class="page-content">
    <div>

        <%@include file="dynamic/titlewithphoto.jspf" %>

    </div>
</div>
<%@include file="dynamic/footer.jspf" %>

<%@include file="dynamic/js.jspf" %>
</body>
</html>