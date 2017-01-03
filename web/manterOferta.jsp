<%-- 
    Document   : SCV
    Created on : 2/2016
    Author     : RPM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <title>Manter Oferta</title>
    </head>
    <body align="center" bgcolor="#B0C4DE">
        <!--Menu-->
        <nav>
          <object width="100%" height="65px" data="menu.jsp"></object>
     </nav>
        <div class="container">
        <h1>Manter Oferta - ${operacao}</h1>

        <form action="ManterOfertaController?acao=confirmar${operacao}" method="post" name="frmManterOferta" onsubmit="return validarFormulario(this)">
            <div class="form-group">
                <label for="usr">Código da Oferta:</label>
                <input type="text" class="form-control" id="usr" name="txtCodOferta" value="${oferta.codOferta}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>>
            </div>
            <div class="form-group">
                <label for="usr">Ano:</label>
                <input type="text" class="form-control" id="usr" name="txtAno" value="${oferta.ano}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
            </div>
            <button type="submit" class="btn btn-default" name="btnConfirmar" value="Confirmar">Confirmar</button>
        </form>
        </div>
        <SCRIPT language="JavaScript">
            
            function campoNumerico(valor)
            {
                var caracteresValidos = "0123456789";
                var ehNumero = true;
                var umCaracter;
                for (i = 0; i < valor.length && ehNumero === true; i++) 
                { 
                    umCaracter = valor.charAt(i); 
                    if (caracteresValidos.indexOf(umCaracter) === -1) 
                    {
                        ehNumero = false;
                    }
                }
                return ehNumero;
            }

            function validarFormulario(form) { 
                var mensagem;
                mensagem = "";
                if(form.txtCodOferta.value === ""){
                    mensagem = mensagem + "Informe o código\n";
                }
                if(form.txtAno.value === ""){
                    mensagem = mensagem + "Informe o ano\n";
                }
                if (!campoNumerico(form.txtCodOferta.value)){
                    mensagem = mensagem + "O código deve ser numérico\n";
                }                             
                if (!campoNumerico(form.txtAno.value)){
                    mensagem = mensagem + "O ano deve ser numérico\n";
                }                  
                if (mensagem === ""){
                    return true;
                }else{
                    alert(mensagem);
                    return false;
                }                
            } 
        </SCRIPT>        
    </body>
</html>        
</html>
