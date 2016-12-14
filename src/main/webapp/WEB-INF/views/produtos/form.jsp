<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livro de Java, Android, iphone, Ruby, PHP e muito mais </title>
</head>
<body>

	<form:form action="${s:mvcUrl('PC#gravar').build()}" method="post" commandName="produto">
		<div>
			<label>Titulo</label>
			<form:errors path="titulo" />
			<input type="text" name="titulo">
		</div>
		<div>
			<label>Descrição</label>
			<form:errors path="descricao" />
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<div>
			<label>Páginas</label>
			<form:errors path="paginas" />
			<input type="text" name="paginas">
		</div>
		<c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
			<div>
				<label> ${tipoPreco}</label>
				<input type="text" name="precos[${status.index}].valor"/>
				<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}"/>
			</div>
		</c:forEach>
		<button type="submit">Cadastrar</button>
	</form:form>
</body>
</html>