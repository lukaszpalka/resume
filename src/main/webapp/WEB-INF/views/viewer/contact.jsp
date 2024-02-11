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

        <div class="section" id="contact">
            <div class="cc-contact-information" style="background-image: url('images/staticmap.png')">
                <div class="container">
                    <div class="cc-contact">
                        <div class="row">
                            <div class="col-lg-9">
                                <div class="card mb-0" data-aos="zoom-in">
                                    <div class="h4 text-center title">Contact Me</div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="card-body">
                                                <form action="https://formspree.io/your@email.com" method="POST">
                                                    <div class="p pb-3"><strong>Feel free to contact me </strong></div>
                                                    <div class="row mb-3">
                                                        <div class="col">
                                                            <div class="input-group"><span class="input-group-addon"><i
                                                                    class="fa fa-user-circle"></i></span>
                                                                <input class="form-control" type="text" name="name"
                                                                       placeholder="Name" required="required"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col">
                                                            <div class="input-group"><span class="input-group-addon"><i
                                                                    class="fa fa-file-text"></i></span>
                                                                <input class="form-control" type="text" name="Subject"
                                                                       placeholder="Subject" required="required"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col">
                                                            <div class="input-group"><span class="input-group-addon"><i
                                                                    class="fa fa-envelope"></i></span>
                                                                <input class="form-control" type="email" name="_replyto"
                                                                       placeholder="E-mail" required="required"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col">
                                                            <div class="form-group">
                                                                <textarea class="form-control" name="message"
                                                                          placeholder="Your Message"
                                                                          required="required"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col">
                                                            <button class="btn btn-primary" type="submit">Send</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="card-body">
                                                <p class="mb-0"><strong>Address </strong></p>
                                                <p class="pb-2">140, City Center, New York, U.S.A</p>
                                                <p class="mb-0"><strong>Phone</strong></p>
                                                <p class="pb-2">+1718-111-0011</p>
                                                <p class="mb-0"><strong>Email</strong></p>
                                                <p>anthony@company.com</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="addTechnicalSkillModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="fa fa-remove"></i>
                        </button>
                        <h4 class="title title-up">Add new technical skill</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group row">
                                <label for="techskilldescription" class="col-lg-4 col-form-label">
                                    <strong class="text-uppercase">Description:</strong>
                                </label>
                                <div class="col-lg-8">
                                    <input type="text" class="form-control" id="techskilldescription"
                                           placeholder="Skill description">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="techskilllevel" class="col-lg-4 col-form-label">
                                    <strong class="text-uppercase">Level:</strong>
                                </label>
                                <div class="col-lg-8">
                                    <input type="text" class="form-control" id="techskilllevel" placeholder="%">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success puill-left">Add</button>

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