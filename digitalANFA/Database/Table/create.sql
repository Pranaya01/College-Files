Create TABLE If NOT Exists news(
    row_id INT NOT NULL,
    news_id INT AUTO_INCREMENT,
    cvalue_id INT(128),
    news_title VARCHAR(256) NOT NULL,
    news_description TEXT NOT NULL,
    news_image VARCHAR(256) NOT NULL,
    createdDate date NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdBy VARCHAR(256),
    modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (news_id),
    FOREIGN KEY (cvalue_id) REFERENCES category_value(cvalue_id)
);

//category Table
CREATE TABLE If NOT Exists category(
    row_id INT NOT NULL,
    category_id INT(128) AUTO_INCREMENT,
    category_title VARCHAR(256) NOT NULL,
    createdDate date NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdBy VARCHAR(256),
    modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (category_id)
);  

CREATE TABLE If NOT Exists category_value(
    row_id INT NOT NULL,
    cvalue_id INT(128) AUTO_INCREMENT,
    category_id INT(128),
    category_value VARCHAR(256) NOT NULL,
    createdDate date NOT NULL DEFAULT CURRENT_TIMESTAMP,
    createdBy VARCHAR(256),
    modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (cvalue_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);  





CREATE TABLE If NOT Exists club(
     row_id INT NOT NULL,
     club_id INT(128) NOT NULL AUTO_INCREMENT,
     cvalue_id INT(128) NOT NULL,
     club_name VARCHAR(256) NOT NULL,
     club_description TEXT NOT NULL,
     club_founded_date VARCHAR(256),
     club_address VARCHAR(256),
     club_email VARCHAR(256), 
     club_affiliation VARCHAR(256),
     home_jersey_color VARCHAR(256) NOT NULL,
     away_jersey_color VARCHAR(256) NOT NULL,
     club_sponsor VARCHAR(256),
     kit_sponsor VARCHAR(256) 
     club_logo VARCHAR(256),
     createdDate date NOT NULL DEFAULT CURRENT_TIMESTAMP,
     createdBy VARCHAR(256),
     modifiedDate date DEFAULT CURRENT_TIMESTAMP, 
     modifiedBy VARCHAR(256),
     isDeleted VARCHAR(256),
     UNIQUE (row_id),
     PRIMARY KEY (club_id),
     FOREIGN KEY (cvalue_id) REFERENCES category_value(cvalue_id)
    
);


);
CREATE TABLE If NOT Exists player
( 
    row_id INT(128) NOT NULL, 
    player_id INT(128) NOT NULL AUTO_INCREMENT, 
    club_id INT(128) NOT NULL, 
    cvalue_id INT(128) NOT NULL, 
    player_name VARCHAR(256), 
    date_of_birth date, 
    place_of_birth VARCHAR(256), 
    jersey_no INT(128) NOT NULl, 
    nationality VARCHAR(256), 
    player_image VARCHAR(256), 
    status VARCHAR(256), 
    createdDate date NOT NULL, 
    createdBy VARCHAR(256), 
    modifiedDate date, 
    modifiedBy VARCHAR(256), 
    isDeleted VARCHAR(256), 
    UNIQUE (row_id), PRIMARY KEY (player_id), 
    FOREIGN KEY (club_id) REFERENCES club(club_id), 
    FOREIGN KEY (cvalue_id) REFERENCES category_value(cvalue_id) )

CREATE TABLE If NOT Exists tournament_match(
    row_id INT NOT NULL,
    match_id INT(128) NOT NULL AUTO_INCREMENT,
    tournament_id INT(128), 
    club_id INT(128) NOT NULL,
    cvalue_id INT(128) NOT NULL,
    matchDate date NOT NULL,
    KickOffTime timestamp,
    club_id1_score INT(128) NOT NULl,
    club_id2_score INT(128) NOT NULl,
    club_id1_result VARCHAR(256) NOT NULL,
    club_id2_result VARCHAR(256) NOT NULL,
    createdDate date NOT NULL,
    createdBy VARCHAR(256),
    modifiedDate date, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (match_id),
    FOREIGN KEY (club_id) REFERENCES club(club_id),
    FOREIGN KEY (tournament_id) REFERENCES tournament(tournament_id)
    FOREIGN KEY (cvalue_id) REFERENCES category_value(cvalue_id)
);

CREATE TABLE If NOT Exists player_match(
    row_id INT NOT NULL,
    player_match_id INT(128) NOT NULL AUTO_INCREMENT,
    match_id INT(128),
    player_id INT(128),
    goal_scored INT(128),
    assits INT(128), 
    clean_sheet INT(128),
    redCard INT(128),
    yellowCard INT(128),
    createdDate date DEFAULT CURRENT_TIMESTAMP,
    createdBy VARCHAR(256),
    modifiedDate timestamp  DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (player_match_id),
    FOREIGN KEY (match_id) REFERENCES tournament_match(match_id),
    FOREIGN KEY (player_id) REFERENCES player(player_id)

);

CREATE TABLE tournaments(
    row_id INT NOT NULL,
    tournament_id INT(128) AUTO_INCREMENT,
    cvalue_id VARCHAR(255),
    tournament_name VARCHAR(256),
    season date,
    title_sponsor VARCHAR(256), 
    organizer VARCHAR(256), 
    createdDate date,
    createdBy VARCHAR(256),
    modifiedDate date, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (tournament_id)
    FOREIGN KEY (cvalue_id) REFERENCES category_value(cvalue_id)


);

CREATE TABLE If NOT Exists match_details_stastistis(
    row_id INT NOT NULL,
    match_detail_stats_id INT(128) AUTO_INCREMENT,
    tournament_id INT(128),
    match_id INT(128),
    club_id INT(128),
    club1_possession VARCHAR(256),
    club2_possession VARCHAR(256),
    club1_shots VARCHAR(256),
    club2_shots VARCHAR(256),
    club1_shotsontarget VARCHAR(256),
    club2_shotsontarget VARCHAR(256),
    club1_passes VARCHAR(256),
    club2_passes VARCHAR(256),
    club1_offside VARCHAR(256),
    club2_offside VARCHAR(256),
    club1_corners VARCHAR(256),
    club2_corners VARCHAR(256),
    club1_fouls VARCHAR(256),
    club2_fouls VARCHAR(256),
    createdDate date DEFAULT CURRENT_TIMESTAMP,
    createdBy VARCHAR(256),
    modifiedDate timestamp  DEFAULT CURRENT_TIMESTAMP, 
    modifiedBy VARCHAR(256),
    isDeleted VARCHAR(256),
    UNIQUE (row_id),
    PRIMARY KEY (match_detail_stats_id),
    FOREIGN KEY (tournament_id) REFERENCES tournament(tournament_id),
    FOREIGN KEY (match_id) REFERENCES tournament_match(match_id),
    FOREIGN KEY (club_id) REFERENCES club(club_id)
);

CREATE TABLE If NOT Exists users
    ( 
    row_id INT(11), 
    user_id INT AUTO_INCREMENT,
    username VARCHAR(256),
    cvalue_id INT NOT NULL, 
    FirstName VARCHAR(256),
    LastName VARCHAR(256),
    Email VARCHAR(256),
    user_password VARCHAR(256),
    PRIMARY KEY (user_id), 
    UNIQUE(row_id), 
    FOREIGN KEY (cvalue_id) REFERENCES category_value(cvalue_id)
);


