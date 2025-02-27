package com.gavin.movie.controller;

import com.gavin.movie.domain.Director;
import com.gavin.movie.service.IDirectorService;
import com.gavin.movie.service.IMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("")
public class DirectorController {
    @Autowired
    private IDirectorService directorService;

    @Autowired
    private IMovieService movieService;

    @GetMapping("/allDirectors")
    public List<Director> getAllDirectors() {
        return directorService.getAllDirectors();
    }



}
