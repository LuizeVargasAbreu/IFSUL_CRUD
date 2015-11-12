package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Curso;
import modelo.Professor;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-11-12T19:12:07")
@StaticMetamodel(Disciplina.class)
public class Disciplina_ { 

    public static volatile SingularAttribute<Disciplina, Integer> codigo;
    public static volatile SingularAttribute<Disciplina, Curso> codigocurso;
    public static volatile SingularAttribute<Disciplina, String> nome;
    public static volatile SingularAttribute<Disciplina, Professor> siapeprofessor;
    public static volatile SingularAttribute<Disciplina, Integer> semestre;

}