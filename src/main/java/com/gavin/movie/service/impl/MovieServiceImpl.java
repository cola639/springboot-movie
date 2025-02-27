package com.gavin.movie.service.impl;


import com.gavin.movie.domain.Movie;
import com.gavin.movie.mapper.MovieMapper;
import com.gavin.movie.service.IMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieServiceImpl implements IMovieService {
    @Autowired
    private MovieMapper movieMapper;

    public List<Movie> selectAllMovie() {
        return movieMapper.selectAllMovie();
    }

    public List<Movie> selectByName(Movie movie) {
        return movieMapper.selectByName(movie);
    }

    public int insertMovie(Movie movie) {
        return movieMapper.insertMovie(movie);
    }

    public int updateMovie(Movie movie) {
        return movieMapper.updateMovie(movie);
    }

    public int deleteMovieByIds(Long[] ids) {
        return movieMapper.deleteMovieByIds(ids);
    }

    /**
     * @param movie
     * @return
     */
    @Override
    public List<Movie> selectMovieList(Movie movie) {
        return movieMapper.selectMovieList(movie);
    }

    public List<Movie> selectMovieListById(Movie movie) {
        return movieMapper.selectMovieList(movie);
    }
}
