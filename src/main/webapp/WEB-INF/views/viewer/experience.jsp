<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>


<body id="top">

<%@include file="../dynamic/navbar.jspf" %>

<div class="page-content">
    <div>

        <%@include file="../dynamic/titlewithphoto.jspf" %>


        <div class="section" id="experience">
            <div class="container cc-experience">
                <div class="h4 text-center mb-4 title">Work Experience</div>
                <c:forEach items="${experience}" var="exp">
                    <div class="card">
                        <div class="row">
                            <div class="col-lg-3 bg-primary" data-aos="fade-right" data-aos-offset="50"
                                 data-aos-duration="500">
                                <div class="card-body cc-experience-header" style="padding-top: 40px;">
                                    <fmt:formatDate pattern="MM.yyyy" value="${exp.startDate}"/> - <fmt:formatDate
                                        pattern="MM.yyyy" value="${exp.endDate}"/>
                                    <div class="h5">${exp.company}</div>
                                </div>
                            </div>
                            <div class="col-lg-9" data-aos="fade-left" data-aos-offset="50" data-aos-duration="500">
                                <div class="card-body">
                                    <div class="h5">${exp.position}</div>
                                        ${exp.description}
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

    </div>
</div>
<%@include file="../dynamic/footer.jspf" %>

<%@include file="../dynamic/js.jspf" %>
</body>
</html>