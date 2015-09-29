package server;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-08-13T11:12:32")
@StaticMetamodel(Movie.class)
public class Movie_ { 

    public static volatile SingularAttribute<Movie, Integer> id;
    public static volatile SingularAttribute<Movie, Date> releaseDate;
    public static volatile SingularAttribute<Movie, String> stars;
    public static volatile SingularAttribute<Movie, String> description;
    public static volatile SingularAttribute<Movie, String> name;
    public static volatile SingularAttribute<Movie, String> writers;
    public static volatile SingularAttribute<Movie, String> language;
    public static volatile SingularAttribute<Movie, String> director;
    public static volatile SingularAttribute<Movie, String> type;
    public static volatile SingularAttribute<Movie, String> runningTime;

}