package com.gavin.movie.controller;

import com.gavin.movie.domain.Movie;
import com.gavin.movie.service.IMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/movie")
public class MovieContoller {
    @Autowired
    private IMovieService movieService;

    @GetMapping("/allMovies")
   public List<Movie> getAllMovie() {
        return movieService.selectAllMovie();
    }

    @PostMapping("/selectMovieList")
    public List<Movie> selectMovieList(@RequestBody Movie movie) {
        System.out.println("movie" + movie);
        List<Movie> movieList;
        movieList = movieService.selectMovieList(movie);

        return movieList;
    }

    @PostMapping("/getMovieByName")
    public List<Movie> getMovieByName(@RequestBody Movie movie) {
        System.out.println("movie" + movie);
        return movieService.selectByName(movie);
    }

    @PostMapping("/generateMovie")
    public Integer generateMovie(@RequestBody Movie movie) {
        System.out.println("movie" + movie);
        return movieService.insertMovie(movie);
    }

    @PostMapping("/updateMovie")
    public Integer updateMovie(@RequestBody Movie movie) {
        System.out.println("movie" + movie);
        return movieService.updateMovie(movie);
    }

    @PostMapping("/deleteMovieByIds/{movieIds}")
    public int delMovieByIds(@PathVariable Long[] ids) {
        return movieService.deleteMovieByIds(ids);
    }

//    @GetMapping("/xHeader")
//    public List<Movie> getByHeader(HttpServletRequest request){
//        // 获取动态设置的视图类型
//        Class<?> jsonView = (Class<?>) request.getAttribute("jsonView");
//        jacksonValue.setSerializationView(jsonView);
//        return jacksonValue;
//    }
}
