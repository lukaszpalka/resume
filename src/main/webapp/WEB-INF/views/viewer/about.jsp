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


        <div class="section" id="about">
            <div class="container">
                <div class="card" data-aos="fade-up" data-aos-offset="10">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="card-body">
                                <div class="h4 mt-0 title">About</div>
                                ${about.description}
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="card-body">
                                <div class="h4 mt-0 title">Basic Information</div>
                                <div class="row">
                                    <div class="col-lg-4"><strong class="text-uppercase">First Name:</strong></div>
                                    <div class="col-sm-8">${about.firstName}</div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-lg-4"><strong class="text-uppercase">Last Name:</strong></div>
                                    <div class="col-sm-8">${about.lastName}</div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-lg-4"><strong class="text-uppercase">Email:</strong></div>
                                    <div class="col-sm-8">${about.emailAddress}</div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-lg-4"><strong class="text-uppercase">Phone:</strong></div>
                                    <div class="col-sm-8">${about.phoneNumber}</div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-lg-4"><strong class="text-uppercase">Git:</strong></div>
                                    <div class="col-sm-8">${about.gitUrl}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<%@include file="../dynamic/footer.jspf" %>

<%@include file="../dynamic/js.jspf" %>
</body>
</html>