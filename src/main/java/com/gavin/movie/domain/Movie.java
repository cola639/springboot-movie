package com.gavin.movie.domain;

import com.fasterxml.jackson.annotation.JsonView;

import lombok.Data;

import java.util.Date;

@Data
public class Movie {

    private Long movieId;  // Changed to Long for the `bigint` column type

    private String movieName;

    private String movieDescription;

    private String movieCover;

    private Float movieScore;  // Changed to Float for the `float` column type

    private String movieRates;

    private Integer movieStatus;

    private String movieType;

    @JsonView(PublicView.class)
    private Director director;

    private Integer movieDuration;

    private Integer movieViews;

    private Integer movieComments;

    private Integer movieLikes;

    private Integer movieDislikes;

    private Integer movieDownloads;

    private String movieDownloadUrl;

    private Integer movieDownloadCount;

    private Date movieTime;

    private Date movieReleaseTime;

    private Date createTime;

    private Date updateTime;

    private Date remarks;

    public interface PublicView {
    }

    public interface InternalView extends PublicView {
    }
}
