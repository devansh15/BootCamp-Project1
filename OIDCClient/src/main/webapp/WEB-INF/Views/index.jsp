<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>

	<h2>OIDC Client</h2>

	<!-- Trigger/Open The Modal -->
	<button id="start">start</button>
	<button id="config">config</button>
	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<form> <%-- action="${pageContext.request.contextPath}/OIDCClient" 
				method="post">--%>
				Client ID:<br> <input type="text" id="clientId"><br>
				Client Secret:<br> <input type="text" id="clientsecret"><br>
				Scope:<br> <input type="text" id="scope"><br> Code
				Flow:<br> <select id="Authorization_Code_Flow">
					<option value="Authorization_Code_Flow">Authorization Code
						Flow</option>
				</select><br> <input id="submit" type="submit" value="Submit">
			</form>
		</div>

	</div>

	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the button that opens the modal
		var btn = document.getElementById("config");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$("#submit")
									.click(
											function() {
												var ClientId = $("#clientId")
														.val();
												var Clientsecret = $(
														"#clientsecret").val();
												var Scope = $("#scope").val();
												var Authorization_Code_Flow = $(
														"#Authorization_Code_Flow")
														.val();
												// Returns successful data submission
												// message when the entered information
												// is stored in database.
												// alert("HERE");
												var dataString = {
													clientId : ClientId,
													clientsecret : Clientsecret,
													scope : Scope,
													authorization_Code_Flow : Authorization_Code_Flow
												}
												
												var search = {}
												search["clientId"] = $("#clientId").val();
												search["clientsecret"] = $("#clientsecret").val();
												
												console.log(search);
												console.log(JSON.stringify(search));
												console.log("dataString ="
														+ dataString);
												console
														.log("dataStringJson"
																+ JSON
																		.stringify(dataString));
												// alert(JSON.stringify(dataString));
												if (ClientId == ''
														|| Clientsecret == ''
														|| Scope == ''
														|| Authorization_Code_Flow == '') {
													alert("Please Fill All Fields");
												} else {
													// AJAX Code To Submit Form.
													console.log('${home}');
													$.post("${pageContext.request.contextPath}/startOAuth", function(){
														
													}).done(function(response) {
														console.log(response);
													}).fail(function(jqXHR, textStatus, errorThrown) {
														console.log(jqXHR);
														console.log(jqXHR.responseText);
														console.log(textStatus);
														console.log(errorThrown);
													}); 
													/* $
															.ajax({
																type : "POST",
																url : "${pageContext.request.contextPath}/startOAuth",
																contentType : 'application/json; charset=utf-8',
																dataType : 'json',
																data : JSON.stringify(search),
																cache : false,
																success : function(
																		result) {
																	alert(result);
																},
																error : function(
																		jqXHR,
																		textStatus,
																		errorThrown) {
																	console
																			.log(textStatus);
																	console
																			.log(errorThrown);
																}
															}); */
												}
												return false;
											});
						});
	</script>
	<%-- <script src="${pageContext.request.contextPath}/resources/core/js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script src="<c:url value="/resources/core/js/init.js" />" type="text/javascript"></script> --%>
</body>
</html>
