<%@page import="com.bean.AlbumBean"%>
<%@page import="com.dao.CategoryDAO"%>
<%@page import="com.bean.CategoryBean"%>
<%@page import="com.dao.PhotographerDAO"%>
<%@page import="com.bean.PhotographerBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Album Update</title>
<noscript>
	<div style="color: #FF0000">place enable java script</div>
</noscript>
<link rel="icon" type="image/png" href="imgs/favicon.png" sizes="256x256">
</head>
<body>
	<%@ include file="adminHeader.jsp"%>
	<div style="margin-top: -850px; margin-left: 250px;">
		<section class="content-header">
		<h1>
			Album <small>Update</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="adminDashBoard.jsp"><i class="fa fa-dashboard"></i>
					Home</a></li>
			<li class="active">Album</li>
		</ol>
		</section>
		<br> <br>
		<div class="col-lg-6">
			<div class="container">
				<%
					AlbumBean albumBean = (AlbumBean) request.getAttribute("albumBean");
					if (albumBean != null) {
				%>
				<form action="AlbumUpdateServlet" method="post">

					<input type="hidden" value="<%=albumBean.getAlbumId()%>"
						name="albumId"> <br />
					<div class="row">
						<label class="col-sm-2"> <font size="+1">Select
								Photographer</font>
						</label>
						<div class="col-lg-6">
							<select name="cmbPhotographer" class="form-control">
								<option value="0">Select Photographer</option>
								<%
									ArrayList<PhotographerBean> list = new PhotographerDAO().list();
										String s = (String) request.getAttribute("photographer");
										for (PhotographerBean p : list) {

											if (p.getPhotographersId().equals(albumBean.getPhotographerId())) {
								%>
								<option value="<%=p.getPhotographersId()%>" selected="selected"><%=p.getPhotographersFirstName() + " " + p.getPhotographersLastName()%></option>
								<%
									} else {
								%>
								<option value="<%=p.getPhotographersId()%>"><%=p.getPhotographersFirstName() + " " + p.getPhotographersLastName()%></option>
								<%
									}
										}
								%>

							</select><font color="red">${photographerId}</font>
						</div>
					</div>
					<br />
					<%
						String name = albumBean.getAlbumName();
							if (name == null)
								name = "";
					%>
					<div class="row">
						<label class="col-sm-2"> <font size="+1">Album Name
								:</font>
						</label>

						<div class="col-lg-6">
							<input type="text" class="form-control" name="txtAlbumName"
								placeholder="Nature" maxlength="20" value="<%=name%>" /> <font
								color="red">${albumName} </font>
						</div>
					</div>
					<br />
					<%
						String link = albumBean.getAlbumLink();
							if (link == null)
								link = "";
					%>
					<div class="row">
						<label class="col-sm-2"> <font size="+1">Album Link
								:</font>
						</label>
						<div class="col-lg-6">
							<input type="text" class="form-control" name="txtAlbumLink"
								placeholder="Link" maxlength="255" value="<%=link%>"
								oninput="space(this);" /> <font color="red">${albumLink}</font>
						</div>
					</div>
					<br />
					<%
						String desc = albumBean.getAlbumDescription();
							if (desc == null)
								desc = "";
					%>
					<div class="row">
						<label class="col-sm-2"> <font size="+1">Description
								:</font>
						</label>
						<div class="col-lg-6">
							<textarea rows="3" cols="89" maxlength="255"
								name="txtAlbumDescription"><%=desc%></textarea>
							<font color="red">${albumDescription}</font>
						</div>
					</div>
					<br />
					<%-- <div class="row">
						<label class="col-sm-2"> <font size="+1">Select
								Category</font>
						</label>
						<div class="col-lg-6">
							<select name="cmbCategory" class="form-control">
								<option value="0">Select Category</option>

								<%
									ArrayList<CategoryBean> categoryBeans = new CategoryDAO().list();
										String cate = (String) request.getAttribute("categoryId");
										for (CategoryBean c : categoryBeans) {

											if (c.getCategoryId().equals(albumBean.getCategoryId())) {
								%>
								<option value="<%=c.getCategoryId()%>" selected="selected"><%=c.getCategoryName()%></option>
								<%
									} else {
								%>
								<option value="<%=c.getCategoryId()%>"><%=c.getCategoryName()%></option>
								<%
									}
										}
								%>
							</select><font color="red">${category}</font>
						</div>
					</div>
					<br />
					<%
						String price = albumBean.getPrice();
							if (price == null)
								price = "";
					%>
					<div class="row">
						<label class="col-sm-2"> <font size="+1">Album Price
								:</font>
						</label>
						<div class="col-lg-6">
							<textarea rows="3" cols="89" maxlength="255"
								name="txtPrice"><%=price%></textarea>
							<font color="red">${price}</font>
						</div>
					</div>
 --%>
					<br /> <br /> <label class="col-sm-2 control-label"></label> <input
						type="reset" value="Reset" name="reset" class="btn  btn-danger">
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<input type="Submit" value="Register" name="submit"
						class="btn btn-success">
				</form>
			</div>
		</div>
	</div>
	<%
		} else {

			request.setAttribute("msgLogin", "Please Login To Continue");
			response.sendRedirect("login.jsp");

		}
	%>
</body>
</html>

