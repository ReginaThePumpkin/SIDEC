<%--
  Created by IntelliJ IDEA.
  User: Gandy Avila
  Date: 29/06/2020
  Time: 06:06 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/views/layout/header.jsp"></jsp:include>
<jsp:include page="/views/layout/nav.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav aria-label="breadcrumb">
	<ol class="breadcrumb">
		<li class="breadcrumb-item">Información Clínica</li>
		<li class="breadcrumb-item" aria-current="page"><b>Actualizar Datos</b></li>
	</ol>
</nav>

<div class="container" id="page-content-wrapper">
	<!-- no quitar este contenedor -->
	<!-- LO QUE SE MOSTRARA EN LA PAGINA  (borra esta parte hasta el final del div)-->
	<div class="container">
		<button id="mostrarSMS" style="display: none" value="<c:out value="${respuestaSMS}"></c:out>"></button>
		<br>
		<div class="row">
			<div class="col-md">
				<p class="bg-gris text-white text-center" style=" border-radius: 30px;"><b>Búsqueda de Registro</b></p>
			</div>
		</div>
		<div class="row d-flex justify-content-center">
			<form action="${pageContext.request.contextPath}/ClinicaServlet" method="post">
				<div class="row form-group">
					<div class="col">
						<input type="text" name="matricula" class="form-control text-center" alt="Matricula" maxlength="15"
						       placeholder="Matricula" required>
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn bg-danger btn-block text-white" name="accion" value="search:2">
							<b>Buscar</b></button>
					</div>
				</div>
			</form>
		</div>
		<div class="row">
			<div class="col-md">
				<p class="bg-gris text-white text-center" style=" border-radius: 30px;"><b>Datos Clínicos</b></p>
			</div>
		</div>

		<form action="${pageContext.request.contextPath}/ClinicaServlet" method="post">
			<c:forEach var="clinica" items="${listClinica}">
				<div class="row form-group col-md d-inline-flex">
					<div class="col-md">
						<input type="text" name="matricula" class="form-control  text-center"
						       value="<c:out value="${clinica.matricula}"/>" placeholder="Matrícula" readonly>
					</div>
					<div class="col-md">
						<input type="text" name="numeroSeguro" class="form-control  text-center"
						       value="<c:out value="${clinica.numeroSeguro}"/>" maxlength="20"
						       placeholder="Número Seguro Médico" required>
					</div>
					<div class="col-md">
						<input type="text" name="unidadMedica" class="form-control  text-center" value="<c:out value="${clinica.unidadMedica}"/>" maxlength="10"
						       placeholder="Unidad médica"
						       required>
					</div>
				</div>


				<div class="row form-group col-md d-inline-flex">
					<div class="col-md">
						<select name="tipoSangre" id="inputState" class="form-control" required>
							<option selected><c:out value="${clinica.tipoSangre}"/></option>
							<option>A+</option>
							<option>A-</option>
							<option>O+</option>
							<option>O-</option>
							<option>B+</option>
							<option>B-</option>
							<option>AB+</option>
							<option>AB-</option>
						</select>
					</div>

					<div class="col-md">
						<input type="number" min="0" step="any" name="peso" class="form-control  text-center"
						       value="<c:out value="${clinica.peso}"/>" placeholder="Peso" required>
					</div>
					<div class="col-md">
						<input type="number" min="0" step="any" name="estatura" class="form-control  text-center"
						       value="<c:out value="${clinica.estatura}"/>" placeholder="Estatura" required>
					</div>
					<div class="col-md">
						<input type="text" class="form-control  text-center"
						       value="<c:out value="${clinica.imc}"/>" placeholder="IMC" readonly>
					</div>
				</div>
				<div class="row form-group col-md d-inline-flex">
					<div class="col">
			<textarea class="form-control" name="diagPsico" id="exampleFormControlTextarea1" rows="2"
			          placeholder="Diagnóstico psicopedagógico"><c:out value="${clinica.diagPsico}"/></textarea>
					</div>
				</div>
				<div class="container-fluid text-center">
					<div class="row">
						<div class="col-md">
							<p class="bg-gris text-white text-center" style=" border-radius: 30px;"><b>Enfermedades</b></p>
						</div>
					</div>
					<br>
					<div class="row form-group col-md d-inline-flex">
						<div class="col-md">
							<label>Crónicas:</label>
							<c:if test="${clinica.enferCronicas != 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_cronica" value="si_cronica"
									       id="inlineRadio1" checked required>
									<label class="form-check-label" for="inlineRadio1">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_cronica" value="no_cronica"
									       id="inlineRadio2">
									<label class="form-check-label" for="inlineRadio2">No</label>
								</div>
							</c:if>
							<c:if test="${clinica.enferCronicas == 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_cronica" value="si_cronica"
									       id="inlineRadio1" required>
									<label class="form-check-label" for="inlineRadio1">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_cronica" value="no_cronica"
									       id="inlineRadio2" checked>
									<label class="form-check-label" for="inlineRadio2">No</label>
								</div>
							</c:if>
							<div class="col-md">
								<select class="form-control" name="enferCronicas1">
									<option selected><c:out value="${clinica.tipoEnferCronicas}"/></option>
									<option>Cardiovasculares</option>
									<option>Dabetes</option>
									<option>Párkinson</option>
									<option>Alzheimer</option>
									<option>Hipertensión</option>
									<option>Osteoporosis</option>
									<option>Colesterol</option>
									<option>Depresión</option>
									<option>Cáncer</option>
									<option>Otro</option>
								</select>
							</div>
							<div class="col-md">
								<textarea class="form-control" name="enferCronicas2" rows="2" placeholder="Descripción:"><c:out value="${clinica.enferCronicas}"/></textarea>
							</div>
						</div>

						<div class="col-md">
							<label>Hereditarias:</label>
							<c:if test="${clinica.enferHereditarias != 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_hereditaria"
									       id="inlineRadio3"
									       value="si_hereditaria" checked required>
									<label class="form-check-label" for="inlineRadio3">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_hereditaria"
									       id="inlineRadio4"
									       value="no_hereditaria">
									<label class="form-check-label" for="inlineRadio4">No</label>
								</div>
							</c:if>
							<c:if test="${clinica.enferHereditarias == 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_hereditaria"
									       id="inlineRadio3"
									       value="si_hereditaria" required>
									<label class="form-check-label" for="inlineRadio3">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_hereditaria"
									       id="inlineRadio4"
									       value="no_hereditaria" checked>
									<label class="form-check-label" for="inlineRadio4">No</label>
								</div>
							</c:if>
							<div class="col-md">
								<select name="enferHereditarias1" class="form-control">
									<option selected><c:out value="${clinica.tipoEnferHereditarias}"/></option>
									<option>Ánemia</option>
									<option>Daltonismo</option>
									<option>Díabetes</option>
									<option>Mipía</option>
									<option>Síndrome de Marfan</option>
									<option>Cáncer</option>
									<option>Otro</option>
								</select>
							</div>
							<div class="col-md">
							<textarea class="form-control" name="enferHereditarias2" rows="2" placeholder="Descripción:"><c:out
							value="${clinica.enferHereditarias}"/></textarea>
							</div>
						</div>
					</div>
					<br>
					<div class="row form-group col-md d-inline-flex">
						<div class="col-md">
							<label>Alergías:</label>
							<c:if test="${clinica.alergias != 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_alergias" id="inlineRadio5"
									       value="si_alergias" checked required>
									<label class="form-check-label" for="inlineRadio5">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_alergias" id="inlineRadio6"
									       value="no_alergias">
									<label class="form-check-label" for="inlineRadio6">No</label>
								</div>
							</c:if>
							<c:if test="${clinica.alergias == 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_alergias" id="inlineRadio5"
									       value="si_alergias" required>
									<label class="form-check-label" for="inlineRadio5">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_alergias" id="inlineRadio6"
									       value="no_alergias" checked>
									<label class="form-check-label" for="inlineRadio6">No</label>
								</div>
							</c:if>
							<div class="col-md">
								<select name="alergias1" class="form-control">
									<option selected><c:out value="${clinica.tipoalergias}"/></option>
									<option>Ácaros</option>
									<option>Polen</option>
									<option>Pelo de Animales</option>
									<option>Picaduras Insectos</option>
									<option>Moho</option>
									<option>Látex</option>
									<option>Alimentos</option>
									<option>Fragancias</option>
									<option>Otro</option>
								</select>
							</div>
							<div class="col-md">
								<textarea class="form-control" name="alergias2" rows="2" placeholder="Descripción:"><c:out
							value="${clinica.alergias}"/></textarea>
							</div>
						</div>

						<div class="col-md">

							<label>Discapacidad:</label>

							<c:if test="${clinica.discapacidades != 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_discapacidad"
									       id="inlineRadio7"
									       value="si_discapacidad" checked required>
									<label class="form-check-label" for="inlineRadio7">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_discapacidad"
									       id="inlineRadio8"
									       value="no_discapacidad">
									<label class="form-check-label" for="inlineRadio8">No</label>
								</div>
							</c:if>
							<c:if test="${clinica.discapacidades == 'Ninguna'}">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_discapacidad"
									       id="inlineRadio7"
									       value="si_discapacidad" required>
									<label class="form-check-label" for="inlineRadio7">Si</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="opc_discapacidad"
									       id="inlineRadio8"
									       value="no_discapacidad" checked>
									<label class="form-check-label" for="inlineRadio8">No</label>
								</div>
							</c:if>
							<div class="col-md">
								<select name="discapacidades1" class="form-control">
									<option selected><c:out value="${clinica.tipoDiscapacidades}"/></option>
									<option>Física</option>
									<option>Psíquica</option>
									<option>Sensorial</option>
									<option>Intelectual o Mental</option>
									<option>Otro</option>
								</select>
							</div>
							<div class="col-md">
					<textarea class="form-control" name="discapacidades2" rows="2" placeholder="Descripción:"><c:out
							value="${clinica.discapacidades}"/></textarea>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="row d-flex justify-content-center">
				<div class="col-md-4">
					<button onclick="pregunta()" type="button" class="btn bg-danger btn-block text-white">
						<b>Actualizar</b></button>
						<button id="enviarForm" type="submit" name="accion" value="update" hidden><b>Actualizar</b>
						</button>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- no quitar este contenedor -->
<script>
	function pregunta() {
		Swal.fire({
			title: '¿Realizar Acción?',
			text: "Los cambios son irreversibles!",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#6c757d',
			cancelButtonColor: '#3085d6',
			confirmButtonText: 'Si, Realizar!'
		}).then((result) => {
			if (result.value) {
				Swal.fire(
					'Realizado!',
					'Se efectuo la acción',
					'success'
				)
				setTimeout(function () {
					document.getElementById("enviarForm").click();
				}, 1000)
			}
		})
	}
</script>

<jsp:include page="/views/layout/footer.jsp"></jsp:include>