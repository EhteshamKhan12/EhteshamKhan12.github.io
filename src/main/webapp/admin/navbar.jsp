<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 0px; background-color: #0000a0"></div>

<div class="container-fluid p-3 bg-custon"
	style="background-color: #0f2741;">
	<div class="row">
		<div class="col-md-10 text-white">
			<h3>
				<i class="fas fa-book"></i> BookSpot
			</h3>
		</div>
		

		<div class="" style="position: relative; left: 17px;">
			<c:if test="${not empty userObj}">
				<div class="btn btn-success"><i
					class="fas fa-user"></i> ${ userObj.name}</div>
				<a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary text-white"><i
					class="fas fa-user-plus"></i> Logout</a>
			</c:if>

			<c:if test="${ empty userObj }">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a>
				<a href="../register.jsp" class="btn btn-primary"><i
					class="fas fa-user-plus"></i> Register</a>
			</c:if>

		</div>

	</div>
</div>

<!-- Button trigger modal -->

<!-- Modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<div class="text-center">
      		<h4>Do you want to logout?</h4>
       		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        	<a href="../logout" type="button" class="btn btn-primary">Logout</a>
      </div>
       
      </div>
      <div class="modal-footer">
       
      </div>
    </div>
  </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom p-3"
	style="background-color: #0f2741;">
	<a class="text-white" href="#"><i class="fas fa-home"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">

			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>


		</ul>

	</div>
</nav>