<%@page import="com.bean.CategoryPriceBean"%>
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
<title>Admin | Category Price Update</title>
<noscript>
	<div style="color: #FF0000">place enable java script</div>
</noscript>
<link rel="icon" href="photos/daiict.png" />
</head>
<body>
	<form action="CategoryPriceUpdateServlet" method="post">
		<%@ include file="adminHeader.jsp"%>
		<div style="margin-top: -850px; margin-left: 250px;">
			<div class="col-lg-6">
				<div class="container">
					<section class="content-header">
					<h1>
						Category Price <small>Update</small>
					</h1>
					<ol class="breadcrumb">
						<li><a href="adminDashBoard.jsp"><i
								class="fa fa-dashboard"></i> Home</a></li>
						<li class="active">Category Price</li>
					</ol>
					</section>
					<br> <br>
					<%
						CategoryPriceBean categoryPriceBean = (CategoryPriceBean) request.getAttribute("categoryPriceBean");
					%>
					<input type="hidden" name="photographerId"
						value="<%=categoryPriceBean.getPhotographersId()%>"> <input
						type="hidden" name="categoryPriceId"
						value="<%=categoryPriceBean.getCategoryPriceId()%>">

					<div class="row">
						<label class="col-sm-2"> <font size="+1">Select
								Category</font>
						</label>
						<div class="col-lg-6">
							<select name="cmbCategory" class="form-control">
								<option value="0">Select Category</option>
								<%
									ArrayList<CategoryBean> categoryBeans = new CategoryDAO().list();
									String cate = categoryPriceBean.getCategoryId();
									for (CategoryBean c : categoryBeans) {

										if (c.getCategoryId().equals(cate)) {
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
						String p = categoryPriceBean.getPrice();
						if (p == null) {
							p = "";
						}
					%>
					<div class="row">
						<label class="col-sm-2"> <font size="+1">Category
								Price :</font>
						</label>
						<div class="col-lg-6">
							<input type="text" class="form-control" name="txtPrice"
								placeholder="Link" maxlength="255" value="<%=p%>"
								oninput="space(this);" /><font color="red">${price}</font>
						</div>
					</div>
					<br /> <br />
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
</body>
</html>




























<%-- 
<%@page import="com.dao.CategoryDAO"%>
<%@page import="com.bean.CategoryBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.CategoryPriceBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	CategoryPriceBean categoryPriceBean = (CategoryPriceBean) request.getAttribute("categoryPriceBean");
%>
<body>

	<form action="CategoryPriceUpdateServlet">

		<input type="hidden" name="photographerId"
			value="<%=categoryPriceBean.getPhotographersId()%>">
			<input type="hidden" name="categoryPriceId"
			value="<%=categoryPriceBean.getCategoryPriceId()%>">
		<table>
			<tr>
				<td>Select Category</td>
				<td><select name="categoryId" class="form-control">
						<option value="0">Select Category</option>

						<%
							ArrayList<CategoryBean> categoryBeans = new CategoryDAO().list();
							String cate = categoryPriceBean.getCategoryId();
							for (CategoryBean c : categoryBeans) {

								if (c.getCategoryId().equals(cate)) {
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
				</select><font color="red">${category}</font></td>
			</tr>
			<tr>
				<td>Enter Price</td>
				<%
					String p=categoryPriceBean.getPrice();
				if(p==null)
				{
					p="";
				}
				%>
				<td><input type="text" name="txtPrice"
					value="<%=p%>"><font color="red">${price}</font></td>
			</tr>
			<tr>
				<td colspan="2"><center>
						<input type="submit" value="Update">
					</center></td>
			</tr>
		</table>
	</form>
</body>
</html> --%>