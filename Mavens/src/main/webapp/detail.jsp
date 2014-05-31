<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Metier.Users"%>
<%@page import="java.util.Iterator"%>
<%@page import="web.UsersBean"%>
<%@page import="Servives.UsersService"%>
 <%
 UsersService S= new UsersService();
	UsersBean U = new UsersBean();
	U.setUsersList(S.getAll());
Users p=new Users();

  boolean b=true;
  Iterator <Users> list = U.getUsersList().iterator();
	while(b){
	
		 p= list.next();
		 int id=Integer.parseInt(request.getParameter("id"));
		if(id==p.getId() ) b=false; }
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
		<meta charset="UTF-8">
		<title>DETAIL DU CONTACT</title>
		<meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
		
		<link rel="shortcut icon" href="favicon.ico" />
		
		<!-- bootstrap framework -->
		<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
		
		<!-- custom icons -->
			<!-- font awesome icons -->
			<link href="assets/icons/font-awesome/css/font-awesome.min.css" rel="stylesheet" media="screen">
			<!-- ionicons -->	
			<link href="assets/icons/ionicons/css/ionicons.min.css" rel="stylesheet" media="screen">
		
	
	<!-- page specific stylesheets -->

		<!-- select2 -->
		<link rel="stylesheet" href="assets/lib/select2/select2.css">
		<!-- bootstrap switches -->
		<link href="assets/lib/bootstrap-switch/build/css/bootstrap3/bootstrap-switch.css" rel="stylesheet">
				
		<!-- main stylesheet -->
		<link href="assets/css/style.css" rel="stylesheet" media="screen">
		
		<!-- google webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400&amp;subset=latin-ext,latin' rel='stylesheet' type='text/css'>
		
		<!-- moment.js (date library) -->
		<script src="assets/lib/moment-js/moment.min.js"></script>
		
    </head>
    <body>
		<!-- top bar -->
	
		<!-- main content -->
		<div id="main_wrapper">
			<div class="page_bar clearfix">
				<div class="row">
					<div class="col-md-12">
						<div class="media">

							<div class="media-body">
								<h1 class="page_title"><span class="text-muted">Detail du contact</span></h1>
							
							</div>
						</div>
					</div>
				</div>
			</div>

					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="user_profile">
										<form class="form-horizontal">
											<div class="tabbable tabs-right">
												<ul class="nav nav-tabs">
													<li class="active"><a data-toggle="tab" href="#profile_general_pane" class="tab-default">Nom & Prenom </a></li>
													
														
														
													<li><a data-toggle="tab" href="#profile_contact_pane" class="tab-default">Contact</a></li>
												
												</ul>
												<div class="tab-content">
													<div id="profile_general_pane" class="tab-pane active">
														<div class="form-group">
															<label for="profile_username" class="col-md-2 control-label">nom</label>
															<div class="col-md-10">
																<input type="text" id="profile_username" class="form-control" value="<%=p.getNom()%>">
															</div>
														</div>
														<div class="form-group">
															<label for="user_fname" class="col-md-2 control-label">Prenom</label>
															<div class="col-md-10">
																<input type="text" id="user_fname" class="form-control" value="<%=p.getPrenom()%>">
															</div>
														</div>
														
														</div>
										
											

<div id="profile_contact_pane" class="tab-pane">   
														<div class="form-group">
															<div class="col-md-12">
																<div class="heading_b">Information du contact </div>
															</div>
														</div>
														<div class="form-group">
															<label for="profile_street" class="col-md-2 control-label">Numero de telephone  </label>
															<div class="col-md-10">
																<input type="text" id="profile_street" class="form-control" value="<%=p.getNumero() %>">
														
															</div>
														</div>
														<div class="form-group">
															<label for="profile_street" class="col-md-2 control-label">Email  </label>
															<div class="col-md-10">
																<input type="text" id="profile_street" class="form-control" value="<%=p.getEmail() %>">
														
															</div>
														</div>
												</div>
												<hr>
												<div class="text-center">
													<a href="index.html" class="btn btn-success"><i  class="glyphicon glyphicon-fast-backward"></i> Retour à l'accueil</q>
													<a href="ListAllUserServlet" class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i> Retour à la liste des contacts</a>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</div>

		<!-- side navigation -->
	

		<!-- jQuery -->
		<script src="assets/js/jquery.min.js"></script>
		<!-- easing -->
		<script src="assets/js/jquery.easing.1.3.min.js"></script>
		<!-- bootstrap js plugins -->
		<script src="assets/bootstrap/js/bootstrap.min.js"></script>
		<!-- top dropdown navigation -->
		<script src="assets/js/tinynav.min.js"></script>
		<!-- perfect scrollbar -->
		<script src="assets/lib/perfect-scrollbar/min/perfect-scrollbar-0.4.8.with-mousewheel.min.js"></script>
		
		<!-- common functions -->
		<script src="assets/js/tisa_common.js"></script>
		
		<!-- style switcher -->
		<script src="assets/js/tisa_style_switcher.js"></script>
		
	<!-- page specific plugins -->

		<!-- multiselect, tagging -->
		<script src="assets/lib/select2/select2.min.js"></script>
		<!--  bootstrap switches -->
		<script src="assets/lib/bootstrap-switch/build/js/bootstrap-switch.min.js"></script>
		
		<!-- user profile functions -->
		<script src="assets/js/apps/tisa_user_profile.js"></script>
		

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-49181536-1']);
		_gaq.push(['_trackPageview']);
	  
		(function() {
		  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	</script>

    </body>
</html>
