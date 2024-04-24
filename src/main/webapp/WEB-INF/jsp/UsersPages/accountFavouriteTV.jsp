<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: khgamri
  Date: 10.11.2023
  Time: 00:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
          crossorigin="anonymous"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
        integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
        crossorigin="anonymous">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

  <script src="https://kit.fontawesome.com/04bc96b126.js" crossorigin="anonymous"></script>


  <title>My Favourite TV</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <style><%@include file="/WEB-INF/css/navbarCSS.css"%>
  <%@include file="/WEB-INF/css/accountFavouriteMovies.css"%>
  </style>
</head>
<body>
<my:mynavbar></my:mynavbar>

<div class="container">
  <strong>${userName}'s Favorite TV</strong>
  <c:forEach items="${listOfFavouriteTV}" var="tv">
  <div class="movieCard">
    <div class="movieCard">
      <ul>
        <a href="/welcomePage/additionInfoTV?TVID=${tv.id}" class="linkCaption">
          <li>
            <div class="posterMovie">
              <img src="<c:out value="${tv.poster_path}"/>">
            </div>
            <div class="description">
              <strong><c:out value="${tv.name}"/></strong>
              <p class="caption"><c:out value="${tv.original_name}"/> | <c:out value="${tv.number_of_seasons}"/> seasons | <c:out value="${tv.number_of_episodes}"/> episodes</p>
              <p class="tagline">${tv.tagline}</p>
              <p>&#9733 ${tv.vote_average}</p>
            </div>
          </li>
        </a>
      </ul>

    </div>

    </c:forEach>

  </div>
</body>
</html>
