<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>


<body id="top">

<%@include file="../dynamic/navbar.jspf" %>

<div class="page-content">
    <div>

        <%@include file="../dynamic/titlemanage.jspf" %>

        <div class="section" id="about">
            <div class="container">
                <div class="card" data-aos="fade-up" data-aos-offset="10">
                    <form method="post" action='<c:url value="/editAbout/${about.id}" />'>
                        <div class="form-group row">
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="h4 mt-0 title">About</div>

                                    <textarea class="form-control" name="description" rows="9"
                                              placeholder="Let them know you">${about.description}</textarea>
                                    <div class="form-group row mt-5">
                                            <input class="btn btn-success ml-3" type="submit" value="Save">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="card-body">
                                    <div class="h4 mt-0 title">Basic Information</div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label mt-1"><strong
                                                class="text-uppercase">First name:</strong></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="firstName" class="form-control"
                                                   placeholder="First name" value="${about.firstName}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label mt-1">
                                            <strong class="text-uppercase">Last name:</strong>
                                        </label>
                                        <div class="col-sm-8">
                                            <input type="text" name="lastName" class="form-control"
                                                   placeholder="Last name" value="${about.lastName}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label mt-1">
                                            <strong class="text-uppercase">Email:</strong>
                                        </label>
                                        <div class="col-sm-8">
                                            <input type="text" name="emailAddress" class="form-control"
                                                   placeholder="Email address" value="${about.emailAddress}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label mt-1">
                                            <strong class="text-uppercase">Phone:</strong>
                                        </label>
                                        <div class="col-sm-8">
                                            <input type="text" name="phoneNumber" class="form-control"
                                                   placeholder="Phone number" value="${about.phoneNumber}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label mt-1">
                                            <strong class="text-uppercase">GIT:</strong>
                                        </label>
                                        <div class="col-sm-8">
                                            <input type="text" name="gitUrl" class="form-control"
                                                   placeholder="GIT repository address" value="${about.gitUrl}">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-4 col-form-label mt-1">
                                            <strong class="text-uppercase">LinkedIn:</strong>
                                        </label>
                                        <div class="col-lg-8">
                                            <input type="text" name="linkedInUrl" class="form-control"
                                                   placeholder="LinkedIn URL" value="${about.linkedInUrl}">
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>

        <div class="section" id="skills">
            <div class="section" id="techskills">
                <div class="container">
                    <div class="h4 text-center mb-4 title">Technical skills</div>
                    <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <div class="card-body">
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#addTechnicalSkillModal">Add new
                            </button>
                        </div>

                        <div class="card-body ml-4">
                            <div class="row mb-1">
                                <label class="col-lg-7 col-form-label"><strong class="text-uppercase">Skill
                                    description:</strong></label>
                                <label class="col-lg-2 col-form-label"><strong
                                        class="text-uppercase">Level:</strong></label>

                            </div>
                            <c:forEach items="${techskills}" var="techs">
                                <form method="post" action='<c:url value="/editTechSkill/${techs.id}" />'>
                                    <div class="form-group row">
                                        <div class="col-lg-7">
                                            <input type="text" name="description" class="form-control"
                                                   placeholder="Skill description" value="${techs.description}">
                                        </div>
                                        <div class="col-lg-2">
                                            <input type="number" min="0" max="100" name="level"
                                                   class="form-control col-lg-6"
                                                   placeholder="%" value="${techs.level}">
                                        </div>
                                        <div class="col-lg-1">
                                            <input class="btn btn-success" type="submit" value="Save">
                                        </div>
                                        <div class="col-lg-2">
                                            <button type="button" class="btn btn-danger" data-toggle="modal"
                                                    data-target="#deleteTechnicalSkillModal${techs.id}">Delete
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </c:forEach>
                        </div>

                    </div>
                </div>
            </div>
            <div class="section" id="softskills">
                <div class="container">
                    <div class="h4 text-center mb-4 title">Soft skills</div>
                    <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <div class="card-body">
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#addSoftSkillModal">Add new
                            </button>
                        </div>

                        <div class="card-body ml-4">

                            <div class="row mb-1">
                                <label class="col-lg-7 col-form-label"><strong
                                        class="text-uppercase">Skill description:</strong></label>
                                <label class="col-lg-2 col-form-label"><strong
                                        class="text-uppercase">Level:</strong></label>
                            </div>
                            <c:forEach items="${softskills}" var="softs">
                                <form method="post" action='<c:url value="/editSoftSkill/${softs.id}" />'>
                                    <div class="form-group row">
                                        <div class="col-lg-7">
                                            <input type="text" name="description" class="form-control"
                                                   placeholder="Skill description" value="${softs.description}">
                                        </div>
                                        <div class="col-lg-2">
                                            <input type="number" min="0" max="100" name="level"
                                                   class="form-control col-lg-6"
                                                   placeholder="%" value="${softs.level}">
                                        </div>
                                        <div class="col-lg-1">
                                            <input class="btn btn-success" type="submit" value="Save">
                                        </div>
                                        <div class="col-lg-2">
                                            <button type="button" class="btn btn-danger" data-toggle="modal"
                                                    data-target="#deleteSoftSkillModal${softs.id}">Delete
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </c:forEach>
                        </div>

                    </div>
                </div>
            </div>
            <div class="section" id="languages">
                <div class="container">
                    <div class="h4 text-center mb-4 title">Languages</div>
                    <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                        <div class="card-body">
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                    data-target="#addLanguageModal">Add new
                            </button>
                        </div>


                        <div class="card-body ml-4">
                            <div class="row mb-1">
                                <label class="col-lg-7 col-form-label"><strong
                                        class="text-uppercase">Language:</strong></label>
                                <label class="col-lg-2 col-form-label"><strong
                                        class="text-uppercase">Level:</strong></label>
                            </div>

                            <c:forEach items="${languageskills}" var="langs">
                                <form method="post" action='<c:url value="/editLanguageSkill/${langs.id}" />'>
                                    <div class="form-group row">
                                        <div class="col-lg-7">
                                            <input type="text" name="description" class="form-control"
                                                   placeholder="Language" value="${langs.description}">
                                        </div>
                                        <div class="col-lg-2">
                                            <input type="number" min="0" max="100" name="level"
                                                   class="form-control col-lg-6"
                                                   placeholder="%"
                                                   value="${langs.level}">
                                        </div>
                                        <div class="col-lg-1">
                                            <input class="btn btn-success" type="submit" value="Save">
                                        </div>
                                        <div class="col-lg-2">
                                            <button type="button" class="btn btn-danger" data-toggle="modal"
                                                    data-target="#deleteLanguageModal${langs.id}">Delete
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </c:forEach>
                        </div>


                    </div>
                </div>
            </div>

        </div>

        <div class="section" id="experience">
            <div class="container cc-experience">
                <div class="h4 text-center mb-4 title">Work Experience</div>
                <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                    <div class="card-body">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#addExperienceModal">Add new
                        </button>
                    </div>
                    <div class="card-body">
                        <c:forEach items="${experience}" var="exp">
                            <form method="post" action='<c:url value="/editExperience/${exp.id}" />'>
                                <div class="nav-item">

                                        <a class="nav-link collapsed" href="#" data-toggle="collapse"
                                           data-target="#collapseWorkplace${exp.id}" aria-expanded="true"
                                           aria-controls="collapseWorkplace">
                                            <strong class="text-uppercase">${exp.position} - ${exp.company}</strong>
                                        </a>

                                    <div id="collapseWorkplace${exp.id}" class="collapse"
                                         aria-labelledby="headingWorkplace">
                                        <div class="card-body ml-3">
                                            <div class="form-group row">
                                                <div class="col-lg-10">
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">Position:</strong></label>
                                                        <div class="col-lg-9">
                                                            <input type="text" class="form-control" name="position"
                                                                   placeholder="Job position" value="${exp.position}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">Company:</strong></label>
                                                        <div class="col-lg-9">
                                                            <input type="text" class="form-control" name="company"
                                                                   placeholder="Company name" value="${exp.company}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">Start date:</strong></label>
                                                        <div class="col-lg-3 mr-5">
                                                            <input type="date" name="startDate" class="form-control"
                                                                   max="<fmt:formatDate pattern = "dd.MM.yyyy" value="${now}" />"
                                                                   value="<fmt:formatDate pattern = "dd.MM.yyyy" value="${exp.startDate}" />">
                                                        </div>
                                                        <label class="col-form-label mt-2"><strong
                                                                class="text-uppercase">Still working?</strong></label>
                                                        <div class="col-lg-4">
                                                            <input type="checkbox" name="isStillWorking"
                                                                   class="bootstrap-switch mt-3"
                                                                   value="${exp.isStillWorking}"
                                                                   style="max-height: 15px">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">End date:</strong></label>
                                                        <div class="col-lg-3 mr-5">
                                                            <input type="date" name="endDate" class="form-control"
                                                                   value="${exp.endDate}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">Description:</strong></label>
                                                        <div class="col-lg-9">
                                                        <textarea class="form-control" name="description" rows="8"
                                                                  placeholder="Job description">${exp.description}</textarea>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="form-group row">
                                                        <input class="btn btn-success" type="submit" value="Save"
                                                               style="width: 60%">
                                                    </div>
                                                    <div class="form-group row">
                                                        <button type="button" class="btn btn-danger" style="width: 60%"
                                                                data-toggle="modal"
                                                                data-target="#deleteExperienceModal${exp.id}">Delete
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <div class="section" id="education">
            <div class="container cc-education">
                <div class="h4 text-center mb-4 title">Education</div>
                <div class="card" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                    <div class="card-body">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#addEducationModal">Add new
                        </button>
                    </div>
                    <div class="card-body">
                        <c:forEach items="${education}" var="edu">
                            <form method="post" action='<c:url value="/editEducation/${edu.id}" />'>
                                <div class="nav-item">

                                        <a class="nav-link collapsed" href="#" data-toggle="collapse"
                                           data-target="#collapseEducation${edu.id}" aria-expanded="true"
                                           aria-controls="collapseEducation">
                                            <strong class="text-uppercase">${edu.university} - ${edu.subject}</strong>
                                        </a>

                                    <div id="collapseEducation${edu.id}" class="collapse"
                                         aria-labelledby="headingEducation">
                                        <div class="card-body ml-3">
                                            <div class="form-group row">
                                                <div class="col-lg-10">
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2">
                                                            <strong class="text-uppercase">Degree
                                                                level:</strong></label>
                                                        <div class="col-lg-9">
                                                            <select class="form-control" name="degree">
                                                                <option value="${edu.degree}"
                                                                        hidden>${edu.degree}</option>
                                                                <option value="associate">Associate</option>
                                                                <option value="bachelor">Bachelor</option>
                                                                <option value="master">Master</option>
                                                                <option value="doctoral">Doctoral</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">Subject:</strong></label>
                                                        <div class="col-lg-9">
                                                            <input type="text" name="subject" class="form-control"
                                                                   placeholder="Field of study" value="${edu.subject}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">University:</strong></label>
                                                        <div class="col-lg-9">
                                                            <input type="text" name="university" class="form-control"
                                                                   placeholder="University name"
                                                                   value="${edu.university}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">Start date:</strong></label>
                                                        <div class="col-lg-3 mr-5">
                                                            <input type="date" name="startDate" class="form-control"
                                                                   value="${edu.startDate}">
                                                        </div>
                                                        <label class="col-form-label mt-2"><strong
                                                                class="text-uppercase">Still studying?</strong></label>
                                                        <div class="col-lg-4">
                                                            <input type="checkbox" name="isStillStudying"
                                                                   class="bootstrap-switch mt-3"
                                                                   style="max-height: 15px"
                                                                   value="${edu.isStillStudying}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2"><strong
                                                                class="text-uppercase">End date:</strong></label>
                                                        <div class="col-lg-3 mr-5">
                                                            <input type="date" name="endDate" class="form-control"
                                                                   value="${edu.endDate}">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label class="col-form-label col-lg-2 mt-2">
                                                            <strong class="text-uppercase">Description:</strong></label>
                                                        <div class="col-lg-9">
                                                        <textarea class="form-control" name="description" rows="8"
                                                                  placeholder="...">${edu.description}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="form-group row">
                                                        <input class="btn btn-success" type="submit" value="Save"
                                                               style="width: 60%">
                                                    </div>
                                                    <div class="form-group row">
                                                        <button type="button" class="btn btn-danger" style="width: 60%"
                                                                data-toggle="modal"
                                                                data-target="#deleteEducationModal${edu.id}">Delete
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </c:forEach>
                    </div>


                </div>
            </div>
        </div>

        <div class="modal fade" id="addTechnicalSkillModal">
            <div class="modal-dialog" style="width: 600px">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="fa fa-close"></i>
                        </button>
                        <h4 class="title title-up">Add new technical skill</h4>
                    </div>
                    <form method="post" action='<c:url value="/addTechSkill" /> '>
                        <div class="modal-body ml-4">
                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label mt-1">
                                    <strong class="text-uppercase">Description:</strong>
                                </label>
                                <div class="col-lg-8">
                                    <input type="text" name="description" class="form-control"
                                           placeholder="Skill description">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label mt-1">
                                    <strong class="text-uppercase">Level:</strong>
                                </label>
                                <div class="col-lg-2">
                                    <input type="text" name="level" class="form-control" placeholder="%">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <c:forEach items="${techskills}" var="techs">
            <div class="modal fade modal-mini modal-primary" id="deleteTechnicalSkillModal${techs.id}">
                <div class="modal-dialog" style="width: 400px">
                    <div class="modal-content">
                        <div class="modal-header justify-content-center">
                            <div class="modal-profile">
                                <i class="fa fa-question fa-3x"></i>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure?</p>
                        </div>
                        <div class="modal-footer">
                            <form method="post" action='<c:url value="/deleteTechSkill${techs.id}" />'>
                                <button type="submit" class="btn btn-link btn-neutral"><b>Delete</b></button>
                            </form>
                            <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal"><b>Cancel</b>
                            </button>

                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <div class="modal fade" id="addSoftSkillModal">
            <div class="modal-dialog" style="width: 600px">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="fa fa-close"></i>
                        </button>
                        <h4 class="title title-up">Add new soft skill</h4>
                    </div>
                    <form method="post" action='<c:url value="/addSoftSkill" /> '>
                        <div class="modal-body">
                            <div class="form-group row">
                                <label class="col-lg-3 mt-1 col-form-label">
                                    <strong class="text-uppercase">Description:</strong>
                                </label>
                                <div class="col-lg-8">
                                    <input type="text" name="description" class="form-control"
                                           placeholder="Skill description">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 mt-1 col-form-label">
                                    <strong class="text-uppercase">Level:</strong>
                                </label>
                                <div class="col-lg-2">
                                    <input type="text" name="level" class="form-control" placeholder="%">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <c:forEach items="${softskills}" var="softs">
            <div class="modal fade modal-mini modal-primary" id="deleteSoftSkillModal${softs.id}">
                <div class="modal-dialog" style="width: 400px">
                    <div class="modal-content">
                        <div class="modal-header justify-content-center">
                            <div class="modal-profile">
                                <i class="fa fa-question fa-3x"></i>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure?</p>
                        </div>
                        <div class="modal-footer">
                            <form method="post" action='<c:url value="/deleteSoftSkill${softs.id}"/>'>
                                <button type="submit" class="btn btn-link btn-neutral"><b>Delete</b></button>
                            </form>
                            <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal"><b>Cancel</b>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <div class="modal fade" id="addLanguageModal">
            <div class="modal-dialog" style="width: 600px">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="fa fa-remove"></i>
                        </button>
                        <h4 class="title title-up">Add new language</h4>
                    </div>
                    <form method="post" action='<c:url value="/addLanguageSkill" />'>
                        <div class="modal-body">
                            <div class="form-group row">
                                <label class="col-lg-3 mt-1 col-form-label">
                                    <strong class="text-uppercase">Description:</strong>
                                </label>
                                <div class="col-lg-8">
                                    <input type="text" name="description" class="form-control" placeholder="Language">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 mt-1 col-form-label">
                                    <strong class="text-uppercase">Level:</strong>
                                </label>
                                <div class="col-lg-2">
                                    <input type="text" name="level" class="form-control" placeholder="%">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <c:forEach items="${languageskills}" var="langs">
            <div class="modal fade modal-mini modal-primary" id="deleteLanguageModal${langs.id}">
                <div class="modal-dialog" style="width: 400px">
                    <div class="modal-content">
                        <div class="modal-header justify-content-center">
                            <div class="modal-profile">
                                <i class="fa fa-question fa-3x"></i>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure?</p>
                        </div>
                        <div class="modal-footer">
                            <form method="post" action='<c:url value="/deleteLanguageSkill${langs.id}" />'>
                                <button type="submit" class="btn btn-link btn-neutral"><b>Delete</b>
                                </button>
                            </form>
                            <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal"><b>Cancel</b>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <div class="modal fade" id="addExperienceModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="fa fa-close"></i>
                        </button>
                        <h4 class="title title-up">Add new experience</h4>
                    </div>
                    <form method="post" action='<c:url value="/addExperience" />'>
                        <div class="modal-body ml-3">
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">Position:</strong></label>
                                <div class="col-lg-9">
                                    <input type="text" name="position" class="form-control" placeholder="Job position">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">Company:</strong></label>
                                <div class="col-lg-9">
                                    <input type="text" name="company" class="form-control" placeholder="Company name">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">Start date:</strong></label>
                                <div class="col-lg-3">
                                    <input type="date" class="form-control" name="startDate"
                                           max="<fmt:formatDate pattern = "dd.MM.yyyy" value="${now}" />">
                                </div>
                                <div class="col-lg-3 ml-5">
                                    <label class="col-form-label mt-1"><strong
                                            class="text-uppercase">Still working?</strong></label>
                                    <input type="checkbox" name="isStillWorking" class="bootstrap-switch mt-2"
                                           style="max-height: 15px">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">End date:</strong></label>
                                <div class="col-lg-3">
                                    <input type="date" class="form-control" name="endDate"
                                           min="startDate"
                                           max="<fmt:formatDate pattern = "dd.MM.yyyy" value="${now}" />">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-2"><strong
                                        class="text-uppercase">Description:</strong></label>
                                <div class="col-lg-9">
                                    <textarea class="form-control col-lg-11" name="description" rows="10"
                                              placeholder="Job description"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <c:forEach items="${experience}" var="exp">
            <div class="modal fade modal-mini modal-primary" id="deleteExperienceModal${exp.id}">
                <div class="modal-dialog" style="width: 400px">
                    <div class="modal-content">
                        <div class="modal-header justify-content-center">
                            <div class="modal-profile">
                                <i class="fa fa-question fa-3x"></i>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure?</p>
                        </div>
                        <div class="modal-footer">
                            <form method="post" action='<c:url value="/deleteExperience${exp.id}" />'>
                                <button type="submit" class="btn btn-link btn-neutral"><b>Delete</b></button>
                            </form>
                            <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal"><b>Cancel</b>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <div class="modal fade" id="addEducationModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            <i class="fa fa-close"></i>
                        </button>
                        <h4 class="title title-up">Add new experience</h4>
                    </div>
                    <form method="post" action='<c:url value="/addEducation" />'>
                        <div class="modal-body ml-3">
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">Degree level:</strong></label>
                                <div class="col-lg-9">
                                    <select class="form-control" name="degree">
                                        <option hidden>Choose one</option>
                                        <option value="associate">Associate</option>
                                        <option value="bachelor">Bachelor</option>
                                        <option value="master">Master</option>
                                        <option value="doctoral">Doctoral</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">Subject:</strong></label>
                                <div class="col-lg-9">
                                    <input type="text" class="form-control" name="subject" placeholder="Field of study">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">University:</strong></label>
                                <div class="col-lg-9">
                                    <input type="text" class="form-control" name="university"
                                           placeholder="University name">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong
                                        class="text-uppercase">Start date:</strong></label>
                                <div class="col-lg-3">
                                    <input type="date" class="form-control" name="startDate" min="1900-01-01"
                                           max="<fmt:formatDate pattern = "yyyy-MM-dd" value="${now}" />">
                                </div>
                                <div class="col-lg-3 ml-5">
                                    <label class="col-form-label mt-1"><strong class="text-uppercase">Still
                                        studying?</strong></label>
                                    <input type="checkbox" class="bootstrap-switch mt-2" name="isStillStudying"
                                           style="max-height: 15px">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-1"><strong class="text-uppercase">End
                                    date:</strong></label>
                                <div class="col-lg-3">
                                    <input type="date" class="form-control" name="endDate"
                                           max="<fmt:formatDate pattern = "yyyy-MM-dd" value="${now}" />">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-form-label col-lg-2 mt-2"><strong
                                        class="text-uppercase">Description:</strong></label>
                                <div class="col-lg-9">
                                    <textarea class="form-control col-lg-11" name="description" rows="10"
                                              placeholder="..."></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <c:forEach items="${education}" var="edu">
            <div class="modal fade modal-mini modal-primary" id="deleteEducationModal${edu.id}">
                <div class="modal-dialog" style="width: 400px">
                    <div class="modal-content">
                        <div class="modal-header justify-content-center">
                            <div class="modal-profile">
                                <i class="fa fa-question fa-3x"></i>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure?</p>
                        </div>
                        <div class="modal-footer">
                            <form method="post" action='<c:url value="/deleteEducation${edu.id}" />'>
                                <button type="submit" class="btn btn-link btn-neutral"><b>Delete</b></button>
                            </form>
                            <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal"><b>Cancel</b>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</div>
<%@include file="../dynamic/footer.jspf" %>

<%@include file="../dynamic/js.jspf" %>
</body>
</html>