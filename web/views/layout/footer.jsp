	<%--
	  Created by IntelliJ IDEA.
	  User: Gandy Avila
	  Date: 29/06/2020
	  Time: 02:31 a. m.
	  To change this template use File | Settings | File Templates.
	--%>
		<%@ page contentType="text/html;charset=UTF-8" language="java" %>

		</div><!-- no quitar este contenedor -->
		<!--Hasta acá termina su formulario-->
		</div>
		<!-- ---------------------------------------------------------------------------------- -->
	<!-- FOOTER -->
		<footer class="bg-gris">
			<div class="row">
				<div class="col-md-12">
					<div class="container">
						<h6 class="mr-3">Los datos personales recabados serán protegidos, incorporados y tratados en el sistema de
						datos personales correspondiente, de conformidad con el supuesto por la ley federal de transparencia y acceso a
						la
						información pública gubernamental y demás disposiciones aplicables.
						</h6>
					</div>
				</div>
			</div>
		</footer>

		<!---------------------------------------------------------------------------------------->
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
		<script src="${pageContext.request.contextPath}/assets/css/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/css/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/quitarCaracteres.js"></script>
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/responsive/2.2.5/js/dataTables.responsive.min.js"></script>
		<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/responsive/2.2.5/js/responsive.bootstrap4.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.6/jspdf.plugin.autotable.js" type="text/javascript"></script>
		<script>
		$("#menu-toggle").click(function (e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
		});

		$(document).ready(function() {
		$('#tablaActivos').dataTable( {
		"language": {
		"url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
		}
		} );
		});
		$(document).ready(function() {
		$('#tablaDesactivos').dataTable( {
		"language": {
		"url": "//cdn.datatables.net/plug-ins/1.10.21/i18n/Spanish.json"
		}
		} );
		});

		</script>
		</body>
		</html>