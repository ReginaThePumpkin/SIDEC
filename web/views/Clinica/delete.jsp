
<%--
  Created by IntelliJ IDEA.
  User: Gandy Avila
  Date: 29/06/2020
  Time: 05:59 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/views/layout/header.jsp"></jsp:include>
<jsp:include page="/views/layout/nav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Información Clínica</li>
        <li class="breadcrumb-item" aria-current="page"> <b>Eliminar Registro</b></li>
    </ol>
</nav>

<div class="container" id="page-content-wrapper ">
    <!-- no quitar este contenedor -->
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md">
                <p class="bg-gris text-white text-center" style="border-radius: 30px;"><b>Búsqueda de Registro</b></p>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <form action="${pageContext.request.contextPath}/ClinicaServlet" method="post">
                <div class="row form-group">
                    <div class="col">
                        <input type="text" name="matricula" class="form-control  text-center" placeholder="Matrícula" required>
                    </div>
                    <div class="col-md-4">
                        <button type="submit" class="btn bg-danger btn-block text-white" name="accion" value="search:1"><b>Buscar</b></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="row">
            <div class="col-md">
                <p class="bg-gris text-white text-center" style=" border-radius: 30px;"><b>Datos Clínicos</b></p>
            </div>
            <table class="table font-italic text-dark table-hover">
                <tbody>
                <c:forEach var="clinica" items="${listClinica}">
                <tr>
                    <td>Número de seguro médico</td><td><c:out value="${clinica.numeroSeguro}"></c:out></td>
                </tr>
                <tr>
                    <td>Unidad médica</td><td><c:out value="${clinica.unidadMedica}"></c:out></td>
                </tr>
                <tr>
                    <td>Peso</td><td><c:out value="${clinica.peso}"></c:out></td>
                </tr>
                <tr>
                    <td>Estatura</td><td><c:out value="${clinica.estatura}"></c:out></td>
                </tr>
                <tr>
                    <td>IMC</td><td><c:out value="${clinica.imc}"></c:out></td>
                </tr>
                <tr>
                    <td>Tipo de sangre</td><td><c:out value="${clinica.tipoSangre}"></c:out></td>
                </tr>
                <tr>
                    <td>Diagnóstico psicopedagógico</td><td><c:out value="${clinica.diagPsico}"></c:out></td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col-md">
                <p class="bg-gris text-white text-center" style="border-radius: 30px;"><b>Control Clínicos</b></p>
            </div>
            <table class="table font-italic text-dark table-hover">
                <tbody>
            <c:forEach var="clinica" items="${listClinica}">
                <tr>
                    <td>Enfermedades crónicas</td><td><c:out value="${clinica.enferCronicas}"></c:out></td>
                </tr>
                <tr>
                    <td>Enfermedades hereditarias</td><td><c:out value="${clinica.enferHereditarias}"></c:out></td>
                </tr>
                <tr>
                    <td>Alergías</td><td><c:out value="${clinica.alergias}"></c:out></td>
                </tr>
                <tr>
                    <td>Discapacidad</td><td><c:out value="${clinica.discapacidades}"></c:out></td>
                </tr>
            </c:forEach>
                </tbody>
            </table>
        </div>
        <form action="${pageContext.request.contextPath}/ClinicaServlet" method="post">
            <div class="row d-flex justify-content-center">
                <div class="col-md-5">
                    <button type="submit" class="btn bg-danger btn-sm btn-block text-white" name="accion" value="delete"><b>Eliminar</b></button>
                </div>
            </div>
        </form>
    </div>
</div><!-- no quitar este contenedor -->

<jsp:include page="/views/layout/footer.jsp"></jsp:include>