<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Konferencje</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
	<c:set var="uzyt" value="${uzyt}" />
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a class="navbar-brand">Konferencje </a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/listKonfRec"
					class="nav-link">Konferencje</a></li>
				<li><a href="<%=request.getContextPath()%>/wyswietlPrace"
					class="nav-link">Prace</a></li>
				<li><a href="<%=request.getContextPath()%>/mojeOceny"
					class="nav-link">Moje oceny</a></li>
				<li><a href="<%=request.getContextPath()%>/kontakt"
					class="nav-link">Kontakt</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> <c:out value="${uzyt.username}" />
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item"
							href="<%=request.getContextPath()%>/editRec?id=<c:out value='${uzyt.id}' />">edytuj</a>
						<a class="dropdown-item"
							href="<%=request.getContextPath()%>/wyloguj">wyloguj</a>
					</div></li>
			</ul>
		</nav>
	</header>
	<div class="row">
		<div class="container">
			<div class="jumbotron">
				<c:set var="konf" value="${konf}" />
				<h1 style="text-align: center">
					<c:out value="${konf.nazwa}" />
				</h1>
				<p style="text-align: center;">
					<c:out value="${konf.opis}" />
				</p>
				<h2 style="text-align: center;">Harmonogram</h2>
				<p style="text-align: center;">
					<c:out value="${konf.harmonogram}" />
				</p>
			</div>
			<h3 style="text-align: center">Koszt zapisu</h3>
			<h5 style="text-align: center">
				<c:out value="${konf.koszt}" />
				z??
			</h5>
			<br> <br>
			<h4 style="text-align: center;">Dodatkowe informacje</h4>
			<br>
			<div class="row">
				<div class="col-sm-2" style="text-align: center;">Data
					konferencji</div>
				<div class="col-sm-2" style="text-align: center;">Data ko??ca
					rejestracji</div>
				<div class="col-sm-2" style="text-align: center;">Godzina
					rozpocz??cia</div>
				<div class="col-sm-6" style="text-align: center;">Adres</div>
			</div>
			<div class="row">
				<div class="col-sm-2"
					style="background-color: lavender; text-align: center;">
					<c:out value="${konf.dataKonf}" />
				</div>
				<div class="col-sm-2"
					style="background-color: lavender; text-align: center;">
					<c:out value="${konf.dataZapis}" />
				</div>
				<div class="col-sm-2"
					style="background-color: lavender; text-align: center;">
					<c:out value="${konf.godzina}" />
				</div>
				<div class="col-sm-6"
					style="background-color: lavender; text-align: center;">
					<c:out value="${konf.adres}" />
				</div>
			</div>
			<br> <br>
			<h4 style="text-align: center">Organizatorzy</h4>
			<h5 style="text-align: center">
				<c:out value="${konf.organizator}" />
			</h5>
			<br> <br>
			<h5 style="text-align: center">Lista uczestnik??w</h5>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Nazwa u??ytkownika</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.username}" /></td>
							<td><c:out value="${user.status}" /></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>