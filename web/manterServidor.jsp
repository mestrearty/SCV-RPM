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
        <title>Manter Servidor</title>
    </head>
    <body align="center" bgcolor="#B0C4DE">
        <!--Menu-->
        <nav>
          <object width="100%" height="65px" data="menu.jsp"></object>
     </nav>
        <h1>Manter Servidor - ${operacao}</h1>

        <form action="ManterServidorController?acao=confirmar${operacao}" method="post" name="frmManterServidor" onsubmit="return validarFormulario(this)">
            <table align="center">
                <tr>
                    <td>Código do servidor:</td> 
                    <td><input type="text" name="txtCodServidor" value="${servidor.codServidor}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                </tr>
                <tr>
                    <td>Matricula SIAPE:</td> 
                    <td><input type="text" name="txtMatriculaSIAPE" value="${servidor.matriculaSIAPE}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr>
                    <td>Orgao Lotado:</td> 
                    <td><input type="text" name="txtLotadoOrgao" value="${servidor.lotadoOrgao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr>
                    <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
                </tr>
            </table>
        </form>
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
                
                //Codigo Sevidor
                if(form.txtCodServidor.value === ""){
                    mensagem = mensagem + "Informe o código\n";
                }
                if (!campoNumerico(form.txtCodServidor.value)){
                    mensagem = mensagem + "Informe o Código do Servidor\n";
                }
                
                //Matricula SIAPE
                if (!campoNumerico(form.txtMatriculaSIAPE.value)){
                    mensagem = mensagem + "Informe a Matricula SIAPE Valida\n";
                }
                if(form.txtMatriculaSIAPE.value === ""){
                    mensagem = mensagem + "Informe uma Matricula SIAPE\n";
                }
                
                //Lotado orgão
                if (form.txtLotadoOrgao.value === ""){
                    mensagem = mensagem + "Informe o Orgao\n";
                } 
                
                if (mensagem === ""){
                    return true;
                }else{
                    alert(mensagem);
                    return false;
                }                
            } 
            //-->
        </SCRIPT>        
    </body>
</html>