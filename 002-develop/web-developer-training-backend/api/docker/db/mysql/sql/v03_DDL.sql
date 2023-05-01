DROP TABLE IF EXISTS genre;

CREATE TABLE genre
(
    id           BIGINT NOT NULL AUTO_INCREMENT,
    genre_code   VARCHAR(10) NOT NULL,
    genre_name   VARCHAR(30) NOT NULL,
    created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS quiz;

CREATE TABLE quiz
(
    id           BIGINT NOT NULL AUTO_INCREMENT,
    genre_id     BIGINT NOT NULL,
    question     VARCHAR(1000) NOT NULL,
    created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP NULL,
    PRIMARY KEY (id),
    INDEX `fk_genre_id_of_quiz_idx` (`genre_id` ASC) VISIBLE,
    CONSTRAINT `fk_genre_id_of_quiz_idx`
      FOREIGN KEY (`genre_id`)
      REFERENCES `genre` (`id`)
);

DROP TABLE IF EXISTS quiz_choice;

CREATE TABLE quiz_choice
(
    id           BIGINT NOT NULL AUTO_INCREMENT,
    quiz_id      BIGINT NOT NULL,
    content      VARCHAR(1000) NOT NULL,
    is_answer    TINYINT(1) NOT NULL,
    explanation  VARCHAR(1000) NULL,
    created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP NULL,
    PRIMARY KEY (id),
    INDEX `fk_quiz_id_of_quiz_choice_idx` (`quiz_id` ASC) VISIBLE,
    CONSTRAINT `fk_quiz_id_of_quiz_choice_idx`
      FOREIGN KEY (`quiz_id`)
      REFERENCES `quiz` (`id`)
);