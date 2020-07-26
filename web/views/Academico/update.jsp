<%--
  Created by IntelliJ IDEA.
  User: Gandy Avila
  Date: 29/06/2020
  Time: 09:02 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/views/layout/header.jsp"></jsp:include>
<jsp:include page="/views/layout/nav.jsp"></jsp:include>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Información Académica</li>
        <li class="breadcrumb-item" aria-current="page"> <b>Actualizar Datos</b></li>
    </ol>
</nav>

<div class="container" id="page-content-wrapper">
    <div class="container text-center bg-white">
        <button id="mostrarSMS" style="display: none" value="<c:out value="${respuestaSMS}"></c:out>"></button>
        <br>
        <div class="row">
            <div class="col-md">
                <p class="bg-gris text-white text-center" style=" border-radius: 30px;"><b>Búsqueda de registro</b></p>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <form action="${pageContext.request.contextPath}/AcademicoServlet" method="post">
                <div class="row form-group">
                    <div class="col">
                        <input type="text" name="matricula" class="form-control  text-center" maxlength="15" placeholder="Matrícula" required>
                    </div>
                    <div class="col-md-4">
                        <button type="submit" class="btn bg-danger btn-block text-white" name="accion" value="search:2"><b>Buscar</b></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="bg-gris text-white text-center" style="border-radius: 30px;">
            <b>Formación destacada</b>
        </div>
        <br>

        <form action="${pageContext.request.contextPath}/AcademicoServlet" method="post">
            <div  class="row form-group col-md-4 d-inline-flex">
                <input type="text" name="matricula" class="form-control  text-center" maxlength="15" placeholder="Matrícula" readonly>
            </div>
            <div class="row form-group col-md d-inline-flex">
                <div class="col-md">
                    <input class="form-check-input" type="checkbox" value="" id="diplomas">
                    <label class="form-check-label" for="diplomas"> Diplomas </label>
                </div>
                <div class="col-md">
                    <textarea class="form-control rounded" name="diploma"></textarea>
                </div>
                <br>

                <div class="col-md">
                    <input class="form-check-input" type="checkbox" value="" id="reconocimientos" >
                    <label class="form-check-label" for="reconocimientos"> Reconocimientos </label>
                </div>
                <div class="col-md">
                    <textarea class="form-control rounded" name="reconocimiento"></textarea>
                </div>
                <br>
            </div>
            <div class="row form-group col-md d-inline-flex">
                <div class="col-md">
                    <input class="form-check-input" type="checkbox" value="" id="menciones">
                    <label class="form-check-label" for="menciones"> Menciones Honoríficas </label>
                </div>
                <div class="col-md">
                    <textarea class="form-control rounded" name="mencion"></textarea>
                </div>
                <br>
                <div class="col-md">
                    <input class="form-check-input" type="checkbox" value="" id="certificaciones">
                    <label class="form-check-label" for="certificaciones"> Certificaciones </label>
                </div>
                <div class="col-md">
                    <textarea class="form-control rounded" name="certificacion"></textarea>
                </div>
                <br>
            </div>
            <div class="row">
                <div class="col-md">
                    <p class="bg-gris text-white text-center" style=" border-radius: 30px;"><b>Conducta</b></p>
                </div>
            </div>
            <div class="row form-group col-md d-inline-flex">
                <div class="col-md">
                    <textarea class="form-control rounded mt-3" name="observaciones" placeholder="Observaciones"></textarea>
                </div>
            </div>


            <div class="row d-flex justify-content-center">
            <div class="col-md-4">
                <button onclick="pregunta()" type="button" class="btn bg-danger btn-block text-white"><b>Actualizar</b></button>
                    <button id="enviarForm" type="submit" name="accion" value="update" hidden></button>
            </div>
            </div>


        </form>


    </div>
</div>



<jsp:include page="/views/layout/footer.jsp"></jsp:include>