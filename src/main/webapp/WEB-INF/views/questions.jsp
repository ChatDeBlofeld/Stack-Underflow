<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="fragments/header.jsp"/>

<div class="container container-content">

    <c:forEach var="error" items="${errors}">
        <p class="error">Error: ${error}</p>
    </c:forEach>
    <c:if test="${authUser != null}">
        <p class="connectedUser">Authenticated user: ${authUser.firstname} ${authUser.lastname}</p>
    </c:if>
    <form action="logout.do" method="post"> <!-- TODO clean-->
        <button type="submit">Logout</button>
    </form>

    <div class="oneLineContainer mb-5">
        <h1 class="h1">All questions <span class="text-xl font-normal align-middle">(${questions.size()})</span></h1>

        <c:if test="${authUser != null}">
            <a href="#" class="btn btn--primary my-2">+ New Question</a> <!-- TODO add link to newQuestion page -->
        </c:if>
    </div>

    <div class="flex justify-center flex-wrap">
        <c:forEach items="${questions}" var="question">
            <a style="display:block" href="#"> <!-- TODO add link to detailed question page -->
                <div class="card my-4">
                    <span class="subtitle">${question.author} asks</span>
                    <h2 class="h2 textLimiter">${question.title}</h2>
                    <p class="textLimiter textLimiter--2 text-gray-700">${question.content}</p>
                    <hr class="my-3 border-gray-300">
                    <div class="oneLineContainer">
                        <span class="subtitle">0 votes • 0 answers</span>
                        <span class="subtitle">01.10.2020</span>
                    </div>
                </div>
            </a>
        </c:forEach>
    </div>
</div>

<jsp:include page="fragments/footer.jsp"/>
