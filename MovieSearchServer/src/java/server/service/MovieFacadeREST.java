/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package server.service;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import server.Movie;

/**
 *
 * @author xiaopangzi
 */
@Stateless
@Path("server.movie")
public class MovieFacadeREST extends AbstractFacade<Movie> {
    @PersistenceContext(unitName = "MovieSearchServerPU")
    private EntityManager em;

    public MovieFacadeREST() {
        super(Movie.class);
    }

    @POST
    @Override
    @Consumes({"application/xml", "application/json"})
    public void create(Movie entity) {
        super.create(entity);
    }

    @PUT
    @Path("{id}")
    @Consumes({"application/xml", "application/json"})
    public void edit(@PathParam("id") Integer id, Movie entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") Integer id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{name}")
    @Produces({"application/xml", "application/json"})
    public Movie find(@PathParam("name") String name) {
        Integer id = null;
        List<Movie> movies = super.findAll();
        for(Movie movie : movies){
            if(name.equalsIgnoreCase(movie.getName())){
                id = movie.getId();
                break;
            }
        }
        return super.find(id);
    }

    @GET
    @Override
    @Produces({"application/xml", "application/json"})
    public List<Movie> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({"application/xml", "application/json"})
    public List<Movie> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces("text/plain")
    public String countREST() {
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
}
