
<%@page import="Metier.Users"%>
<%@page import="java.util.Iterator"%>
<%@page import="web.UsersBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
		<meta charset="UTF-8">
		<title>Liste des contacts</title>
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

		<!-- iCheck -->
		<link rel="stylesheet" href="assets/lib/iCheck/skins/minimal/green.css">
				
		<!-- main stylesheet -->
		<link href="assets/css/style.css" rel="stylesheet" media="screen">
		
		<!-- google webfonts -->
		<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400&amp;subset=latin-ext,latin' rel='stylesheet' type='text/css'>
		
		<!-- moment.js (date library) -->
		<script src="assets/lib/moment-js/moment.min.js"></script>
		
    </head>
    <body>
    
    <%
    
    UsersBean U;
    if(request.getAttribute("msg")!=null){ U = (UsersBean)request.getAttribute("msg");}else{
    	U = new UsersBean();
    }
    
    %>
		<!-- top bar -->
	
		
		<!-- main content -->
		
			<div class="page_content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="table-responsive">
									<table class="table info_table" id="prod_table">
										<thead>
											<tr>
												
												<th class="visible-lg"></th>
									
												<th>Nom complet</th>
												<th class="sub_col">Numero de telephone </th>
												<th class="sub_col">adresse email</th>
	
												<th></th>
											</tr>
										</thead>
	
							<%
							Iterator <Users> list = U.getUsersList().iterator();
							while(list.hasNext()){
								Users p = list.next();
								
					     %>			
										<tr>
									
									
											<td class="col_sm sub_col">
											
											</td>
										
											<td> 
												<h5><a href="detail.jsp?id=<%=p.getId()%>"><%=p.getNom() %> <%=p.getPrenom() %> </a></h5>
										
											</td>
											<td class="sub_col"> <%=p.getNumero() %> </td>
											
									
						
											<td class="sub_col"><strong> <%=p.getEmail() %> </strong></td>
											
											<td class="sub_col"><a href="detail.jsp?id=<%=p.getId()%>"  class="btn btn-default btn-sm"><span class="fa fa-pencil-square-o fa-lg"></span> Details</a></td>
										</tr>
										
									
					     <%} %>   
									
										
									</table>
								</div>
								<hr>
												<div class="text-center">
													<a href="index.html" class="btn btn-success"><i  class="glyphicon glyphicon-fast-backward"></i> ACCUEIL</q>
													
	
	

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

		<!-- iCheck -->
		<script src="assets/lib/iCheck/jquery.icheck.min.js"></script>
		
		<!-- ecommerce functions -->
		<script src="assets/js/apps/tisa_ecommerce.js"></script>
		

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
