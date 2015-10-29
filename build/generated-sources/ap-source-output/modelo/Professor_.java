package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Disciplina;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2015-10-29T17:07:26")
@StaticMetamodel(Professor.class)
public class Professor_ { 

    public static volatile CollectionAttribute<Professor, Disciplina> disciplinaCollection;
    public static volatile SingularAttribute<Professor, String> siape;
    public static volatile SingularAttribute<Professor, String> nome;

}