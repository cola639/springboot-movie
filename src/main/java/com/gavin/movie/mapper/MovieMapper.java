package com.gavin.movie.mapper;



import com.gavin.movie.domain.Movie;

import java.util.List;

public interface MovieMapper {
    public List<Movie> selectAllMovie();

    public List<Movie> selectByName(Movie movie);

    public int insertMovie(Movie movie);

//    public int delMovieByIds(Long[] ids);

    public int updateMovie(Movie movie);

    public int deleteMovieByIds(Long[] ids);

    public List<Movie> selectMovieList(Movie movie);
}
