<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Atualização de Alunos</h1>
            
            <div>
                
                <form action="alunos-atualizar-ok.jsp">
                    <label>Nome:</label><input type="text" name="txtNome" /><br />
                    <label>Matrícula</label><input type="text" name="txtMatricula"/><br />
                    <label>Num. Disciplinas</label><input type="text" name="txtDisciplinas"/><br />
                    <label>Ativo</label><input type="checkbox" checked /><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>
