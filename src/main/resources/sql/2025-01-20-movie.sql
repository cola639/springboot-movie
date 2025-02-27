create table movies
(
    movie_id             bigint(20) auto_increment comment 'Movie ID',
    movie_name           varchar(255) null comment 'Movie name',
    movie_description    varchar(255) null comment 'Movie description',
    movie_cover          varchar(255) null comment 'Movie cover URL',
    movie_type           varchar(255) null comment 'Movie type',
    movie_director_id    bigint(20)   null comment 'Movie director ID',
    movie_actors         varchar(255) null comment 'Movie actors',
    movie_rates          varchar(255) null comment 'Movie rates',
    movie_score          float        null comment 'Movie score',
    movie_status         tinyint(1)   null comment 'Movie status (active/inactive)',
    movie_time           datetime     null comment 'Movie time',
    movie_duration       int          null comment 'Movie duration in minutes',
    movie_views          int          null comment 'Movie views',
    movie_comments       int          null comment 'Movie comments',
    movie_likes          int          null comment 'Movie likes',
    movie_dislikes       int          null comment 'Movie dislikes',
    movie_downloads      int          null comment 'Movie downloads',
    movie_download_url   varchar(255) null comment 'Movie download URL',
    movie_download_count int          null comment 'Movie download count',
    movie_release_time   datetime     null comment 'Movie release time',
    create_time          datetime     null comment 'Record creation time',
    update_time          datetime default current_timestamp on update current_timestamp comment 'Record last update time',
    remarks              varchar(255) null comment 'Additional remarks',
    primary key (movie_id)
) engine = innodb
  auto_increment = 1
  default charset = utf8
  collate = utf8_general_ci comment = 'Movies table';

insert into movies (movie_name, movie_description, movie_cover, movie_type, movie_director_id,
                    movie_actors, movie_rates, movie_score, movie_status, movie_time,
                    movie_duration, movie_views, movie_comments, movie_likes, movie_dislikes,
                    movie_downloads, movie_download_url, movie_download_count, movie_release_time,
                    create_time, update_time, remarks)
values ('Jaws', 'A thrilling tale of a killer shark.', 'https://example.com/jaws.jpg', 'Thriller', 1,
        'Roy Scheider, Robert Shaw', 'PG', 8.5, 0, '1975-06-20 00:00:00',
        124, 1000000, 2000, 50000, 200, 3000, 'https://example.com/download/jaws', 1000, '1975-06-20 00:00:00',
        now(), now(), 'Directed by Steven Spielberg'),
       ('E.T.', 'A stranded alien befriends a young boy.', 'https://example.com/et.jpg', 'Sci-Fi', 1,
        'Henry Thomas, Drew Barrymore', 'PG', 7.9, 0, '1982-06-11 00:00:00',
        115, 1200000, 2500, 60000, 300, 4000, 'https://example.com/download/et', 1200, '1982-06-11 00:00:00',
        now(), now(), 'Directed by Steven Spielberg'),
       ('Taxi Driver', 'A mentally unstable veteran becomes a taxi driver.', 'https://example.com/taxi.jpg', 'Drama', 2,
        'Robert De Niro, Jodie Foster', 'R', 8.3, 0, '1976-02-08 00:00:00',
        114, 900000, 1500, 40000, 100, 2000, 'https://example.com/download/taxi', 800, '1976-02-08 00:00:00',
        now(), now(), 'Directed by Martin Scorsese'),
       ('Goodfellas', 'The rise and fall of a mob associate.', 'https://example.com/goodfellas.jpg', 'Crime', 2,
        'Ray Liotta, Joe Pesci', 'R', 8.7, 0, '1990-09-19 00:00:00',
        145, 1100000, 2200, 70000, 250, 4000, 'https://example.com/download/goodfellas', 1200, '1990-09-19 00:00:00',
        now(), now(), 'Directed by Martin Scorsese'),
       ('Pulp Fiction', 'Intersecting stories of crime and redemption.', 'https://example.com/pulp.jpg', 'Crime', 3,
        'John Travolta, Uma Thurman', 'R', 8.9, 0, '1994-10-14 00:00:00',
        154, 1400000, 3000, 80000, 350, 6000, 'https://example.com/download/pulp', 1800, '1994-10-14 00:00:00',
        now(), now(), 'Directed by Quentin Tarantino'),
       ('Kill Bill', 'A woman seeks revenge against her former team.', 'https://example.com/killbill.jpg', 'Action', 3,
        'Uma Thurman, Lucy Liu', 'R', 8.1, 0, '2003-10-10 00:00:00',
        111, 1300000, 2800, 75000, 320, 5000, 'https://example.com/download/killbill', 1700, '2003-10-10 00:00:00',
        now(), now(), 'Directed by Quentin Tarantino'),
       ('Inception', 'A thief who steals secrets through dreams.', 'https://example.com/inception.jpg', 'Sci-Fi', 4,
        'Leonardo DiCaprio, Joseph Gordon-Levitt', 'PG-13', 8.8, 0, '2010-07-16 00:00:00',
        148, 1600000, 3500, 90000, 400, 7000, 'https://example.com/download/inception', 2000, '2010-07-16 00:00:00',
        now(), now(), 'Directed by Christopher Nolan'),
       ('Interstellar', 'A team of explorers travels beyond the galaxy.', 'https://example.com/interstellar.jpg',
        'Sci-Fi', 4,
        'Matthew McConaughey, Anne Hathaway', 'PG-13', 8.6, 0, '2014-11-07 00:00:00',
        169, 1700000, 3800, 95000, 450, 8000, 'https://example.com/download/interstellar', 2200, '2014-11-07 00:00:00',
        now(), now(), 'Directed by Christopher Nolan'),
       ('Avatar', 'A paraplegic marine on an alien planet.', 'https://example.com/avatar.jpg', 'Fantasy', 5,
        'Sam Worthington, Zoe Saldana', 'PG-13', 8.2, 0, '2009-12-18 00:00:00',
        162, 1700000, 4000, 100000, 500, 8000, 'https://example.com/download/avatar', 2500, '2009-12-18 00:00:00',
        now(), now(), 'Directed by James Cameron'),
       ('Titanic', 'A love story aboard the doomed ship.', 'https://example.com/titanic.jpg', 'Romance', 5,
        'Leonardo DiCaprio, Kate Winslet', 'PG-13', 8.1, 0, '1997-12-19 00:00:00',
        195, 1800000, 4500, 110000, 600, 9000, 'https://example.com/download/titanic', 3000, '1997-12-19 00:00:00',
        now(), now(), 'Directed by James Cameron');

