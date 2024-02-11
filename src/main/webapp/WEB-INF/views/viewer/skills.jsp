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


        <div class="section" id="skill">
            <div id="tech-skills">
                <div class="container">
                    <div class="h4 text-center mb-4 title">Technical skills</div>
                    <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <c:forEach items="${techskills}" var="techs" begin="0" step="2">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="progress-container progress-primary"><span
                                                        class="progress-badge">${techs.description}</span>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary"
                                                             data-aos="progress-full"
                                                             data-aos-offset="10" data-aos-duration="2000"
                                                             role="progressbar"
                                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: ${techs.level}%;"></div>
                                                        <span class="progress-value mt-1">${techs.level}%</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="col-lg-6">
                                    <c:forEach items="${techskills}" var="techs" begin="1" step="2">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="progress-container progress-primary"><span
                                                        class="progress-badge">${techs.description}</span>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary"
                                                             data-aos="progress-full"
                                                             data-aos-offset="10" data-aos-duration="2000"
                                                             role="progressbar"
                                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: ${techs.level}%;"></div>
                                                        <span class="progress-value mt-1">${techs.level}%</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="soft-skills">
                <div class="container">
                    <div class="h4 text-center mb-4 title">Soft skills</div>
                    <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <c:forEach items="${softskills}" var="softs" begin="0" step="2">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="progress-container progress-primary"><span
                                                        class="progress-badge">${softs.description}</span>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary"
                                                             data-aos="progress-full"
                                                             data-aos-offset="10" data-aos-duration="2000"
                                                             role="progressbar"
                                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: ${softs.level}%;"></div>
                                                        <span class="progress-value mt-1">${softs.level}%</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="col-lg-6">
                                    <c:forEach items="${softskills}" var="softs" begin="1" step="2">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="progress-container progress-primary"><span
                                                        class="progress-badge">${softs.description}</span>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary"
                                                             data-aos="progress-full"
                                                             data-aos-offset="10" data-aos-duration="2000"
                                                             role="progressbar"
                                                             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                                             style="width: ${softs.level}%;"></div>
                                                        <span class="progress-value mt-1">${softs.level}%</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="languages">
                <div class="container">
                    <div class="h4 text-center mb-4 title">Languages</div>
                    <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <c:forEach items="${languageskills}" var="langs" begin="0" step="2">
                                        <div class="progress-container progress-primary">
                                        <span class="progress-badge">${langs.description}</span>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-primary" data-aos="progress-full"
                                                     data-aos-offset="10" data-aos-duration="2000" role="progressbar"
                                                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                                     style="width: ${langs.level}%;"></div>
                                                <span class="progress-value mt-1">${langs.level}%</span>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="col-lg-6">
                                    <c:forEach items="${languageskills}" var="langs" begin="1" step="2">
                                        <div class="progress-container progress-primary">
                                        <span class="progress-badge">${langs.description}</span>
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-primary" data-aos="progress-full"
                                                     data-aos-offset="10" data-aos-duration="2000" role="progressbar"
                                                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                                     style="width: ${langs.level}%;"></div>
                                                <span class="progress-value mt-1">${langs.level}%</span>
                                            </div>
                                        </div>
                                    </c:forEach>
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