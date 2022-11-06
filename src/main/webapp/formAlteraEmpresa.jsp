<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/alteraEmpresa" var="linkServletalteraEmpresa"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet</title>
</head>
<body>


	<form action="${linkServletalteraEmpresa}" method="post">
		Nome: <input type="text" name="nome" value="${empresa.nome}"/>
		Data Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>" />
		<input type="hidden" name="id" value="${empresa.id }">
		<input type="submit" value="Atualizar"/>
	</form>

</body>
</html>