create table director
(
    director_id          bigint auto_increment key comment 'Director ID',
    director_name        varchar(255) null comment 'Director name',
    director_description varchar(255) null comment 'Director description',
    director_image       varchar(255) null comment 'Director image URL',
    director_address     varchar(255) null comment 'Director address',
    director_birthday    date null comment 'Director birthday',
    director_gender      varchar(255) null comment 'Director gender',
    director_movies      varchar(255) null comment 'Movies directed by the director',
    create_time          datetime null default current_timestamp comment 'Record creation time',
    update_time          datetime null default current_timestamp on update current_timestamp comment 'Record last update time',
    director_status      tinyint null comment 'Director status (e.g., 0 = active, 1 = inactive)',
    remarks              varchar(255) null comment 'Additional remarks',
    primary key (director_id)
) engine = innodb
  auto_increment = 1
  default charset = utf8
  collate = utf8_general_ci 
  comment = 'Director table';

insert into director (director_name, director_description, director_image, director_address, director_birthday,
                      director_gender, director_movies, create_time, update_time, director_status, remarks)
values ('Steven Spielberg', 'American film director, producer, and screenwriter.', 'https://example.com/spielberg.jpg',
        'USA', '1946-12-18', 'Male', 'Jaws, E.T., Jurassic Park', NOW(), NOW(), 0,
        'Legendary director in the film industry.'),
       ('Martin Scorsese', 'American film director, producer, screenwriter, and actor.',
        'https://example.com/scorsese.jpg', 'USA', '1942-11-17', 'Male', 'Goodfellas, Taxi Driver, The Irishman', NOW(),
        NOW(), 0, 'Master of modern American cinema.'),
       ('Quentin Tarantino', 'American filmmaker, screenwriter, producer, and actor.',
        'https://example.com/tarantino.jpg', 'USA', '1963-03-27', 'Male', 'Pulp Fiction, Kill Bill, Django Unchained',
        NOW(), NOW(), 0, 'Known for his unique style and dialogue.'),
       ('Christopher Nolan', 'British-American film director, producer, and screenwriter.',
        'https://example.com/nolan.jpg', 'UK', '1970-07-30', 'Male', 'Inception, Interstellar, The Dark Knight', NOW(),
        NOW(), 0, 'Renowned for his complex storytelling.'),
       ('James Cameron', 'Canadian film director, producer, and writer.', 'https://example.com/cameron.jpg', 'Canada',
        '1954-08-16', 'Male', 'Avatar, Titanic, Terminator', NOW(), NOW(), 0,
        'Known for high-budget blockbuster films.'),
       ('Ridley Scott', 'English film director, screenwriter, and producer.', 'https://example.com/scott.jpg', 'UK',
        '1937-11-30', 'Male', 'Alien, Gladiator, The Martian', NOW(), NOW(), 0,
        'Iconic for science fiction and historical epics.'),
       ('Alfred Hitchcock', 'English film director and producer, known for his work in suspense films.',
        'https://example.com/hitchcock.jpg', 'UK', '1899-08-13', 'Male', 'Psycho, Rear Window, Vertigo', NOW(), NOW(),
        1, 'Master of suspense and psychological thrillers.'),
       ('Stanley Kubrick', 'American film director, screenwriter, producer, and photographer.',
        'https://example.com/kubrick.jpg', 'USA', '1928-07-26', 'Male', '2001: A Space Odyssey, A Clockwork Orange',
        NOW(), NOW(), 1, 'Known for his perfectionism and visionary films.'),
       ('George Lucas', 'American film director, producer, and screenwriter.', 'https://example.com/lucas.jpg', 'USA',
        '1944-05-14', 'Male', 'Star Wars, Indiana Jones', NOW(), NOW(), 0,
        'Creator of the Star Wars and Indiana Jones franchises.'),
       ('Woody Allen', 'American film director, writer, actor, and comedian.', 'https://example.com/allen.jpg', 'USA',
        '1935-12-01', 'Male', 'Annie Hall, Manhattan, Midnight in Paris', NOW(), NOW(), 1,
        'Known for his neurotic characters and intellectual humor.'),
       ('Francis Ford Coppola', 'American film director, producer, and screenwriter.',
        'https://example.com/coppola.jpg', 'USA', '1939-04-07', 'Male', 'The Godfather, Apocalypse Now', NOW(), NOW(),
        0, 'Legendary director known for The Godfather trilogy.'),
       ('Danny Boyle', 'English film director, producer, and screenwriter.', 'https://example.com/boyle.jpg', 'UK',
        '1956-10-20', 'Male', 'Slumdog Millionaire, Trainspotting', NOW(), NOW(), 0,
        'Known for his fast-paced and visually dynamic films.'),
       ('Steven Soderbergh', 'American film director, screenwriter, producer, and editor.',
        'https://example.com/soderbergh.jpg', 'USA', '1963-01-14', 'Male', 'Ocean\'s Eleven, Traffic, Erin Brockovich', NOW(), NOW(), 0, 'Known for his innovative filmmaking techniques.'),
('Paul Thomas Anderson', 'American film director, screenwriter, and producer.', ' https : / / example.com / anderson.jpg
        ', ' USA ', ' 1970 - 06 - 26 ', ' Male ', ' There Will Be Blood, Magnolia', NOW(), NOW(), 0, 'Known for his complex characters and themes.'),
('David Fincher', 'American film director, producer, and screenwriter.', ' https : / / example.com / fincher.jpg ', '
        USA ', ' 1962 - 08 - 28 ', ' Male ', ' Fight Club, Se7en,
        The Social Network', NOW(), NOW(), 0, 'Known for his dark, meticulous thrillers.'),
('Ridley Scott', 'English film director, screenwriter, and producer.', ' https : / / example.com / scott2.jpg ', ' UK
        ', ' 1937 - 11 - 30 ', ' Male ', ' Alien, Gladiator, The Martian', NOW(), NOW(), 0, 'Master of both science fiction and historical epics.'),
('Tim Burton', 'American film director, producer, and writer.', ' https : / / example.com / burton.jpg ', ' USA ', '
        1958 - 08 - 25 ', ' Male ', ' Beetlejuice, Edward Scissorhands,
        The Nightmare before Christmas', NOW(), NOW(), 0, 'Known for his dark, gothic fantasy films.'),
('Ang Lee', 'Taiwanese-American film director, producer, and screenwriter.', ' https : / / example.com / lee.jpg ', '
        Taiwan ', ' 1954 - 10 - 23 ', ' Male ', ' Life of Pi, Brokeback Mountain', NOW(), NOW(), 0, 'Known for his versatility in genre.'),
('Joss Whedon', 'American director, producer, and screenwriter.', ' https : / / example.com / whedon.jpg ', ' USA ', '
        1964 - 06 - 23 ', ' Male ', ' The Avengers, Buffy the Vampire Slayer', NOW(), NOW(), 0, 'Known for his work on superhero and cult classic TV shows.'),
('Guillermo del Toro', 'Mexican film director, producer, and screenwriter.', ' https : / / example.com / deltoro.jpg
        ', ' Mexico ', ' 1964 - 10 - 09 ', ' Male ', ' Pan\'s Labyrinth, The Shape of Water', NOW(), NOW(), 0,
        'Known for his fantastical and darkly whimsical films.');
