<%@page import="modelo.Professor"%>
<%@page import="dao.ProfessorDAO"%>
<%@include file="cabecalho.jsp"%>
<%
  //Pegar a chave Primaria
    String siape = request.getParameter("siape");
    //Busco o registro pela chave no BANCO DE DADOS
    ProfessorDAO dao = new ProfessorDAO();
    //Para chamar pela chave primaria usaremos o m�todo criado
    //que retornar� TODAS as informa��es do professor
    Professor obj = dao.buscarPorChavePrimaria(siape);
%>
    
        <div>
            <h1 class="centro">Atualiza��o de Professores</h1>
            
            <div>
                
                <form action="professores-atualizar-ok.jsp">
                    <label>Siape:</label><input type="text" value="<%=obj.getSiape()%>" name="txtSiape" readonly=""/><br />
                     <label>Nome:</label><input type="text" value="<%=obj.getNome()%>" name="txtNome"/><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>
