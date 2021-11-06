
-- 2018-101230

CREATE TABLE citizen (
    id varchar(11) NOT NULL,
    username varchar(25) NOT NULL UNIQUE,
    `password` varchar(25) NOT NULL,
    sex char NOT NULL,
    birthdate datetime NOT NULL,
    contact_no varchar(11) NOT NULL,
    email varchar(50),
    vaccination_status tinyint(1) NOT NULL DEFAULT 0,
    covid_status tinyint(1) NOT NULL DEFAULT 0,
    covid_status_reported datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    quarantine_end_date tinyint(1),
    PRIMARY KEY (id)
)

-- VACC-1010001

CREATE TABLE vaccination (
    id varchar(11) NOT NULL,
    vaccine_name varchar(255) NOT NULL,
    vaccine_first_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    vaccine_second_date datetime,
    philhealth_no varchar(255),
    citizen_id varchar(11),
    PRIMARY KEY (id),
    FOREIGN KEY (citizen_id) REFERENCES citizen (id)
)

-- CTRC-1010001

CREATE TABLE contact_tracing (
    id varchar(11) NOT NULL,
    exposure_to_covid_patient tinyint(1) NOT NULL,
    exposure_overseas_travel tinyint(1) NOT NULL,
    coug

    citizen_id varchar(11),
    PRIMARY KEY (id),
    FOREIGN KEY (citizen_id) REFERENCES citizen (id)
)