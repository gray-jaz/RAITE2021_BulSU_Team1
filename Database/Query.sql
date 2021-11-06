-- 2018-101230

CREATE TABLE citizen (
    id varchar(11) NOT NULL,
    fname varchar(255) NOT NULL,
    mname varchar (255) NOT NULL,
    lname varchar(255) NOT NULL,
    house_address varchar(255) NOT NULL,
    barangay varchar(255) NOT NULL,
    municipality varchar(255) NOT NULL,
    province varchar(255) NOT NULL,
    sex char NOT NULL,
    birthdate datetime NOT NULL,
    contact_no varchar(11) NOT NULL,
    email varchar(50),
    vaccination_status tinyint(1) NOT NULL DEFAULT 0,
    covid_status tinyint(1) NOT NULL DEFAULT 0,
    covid_status_reported datetime DEFAULT CURRENT_TIMESTAMP(),
    quarantine_end_date tinyint(1),
    civil_status varchar(255) NOT NULL,
    employment_status varchar(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- VACC-1010001

CREATE TABLE vaccination (
    id int NOT NULL AUTO_INCREMENT,
    category tinyint(1) NOT NULL,
    available_id_card varchar(255) NOT NULL,
    vaccine_name varchar(255) NOT NULL,
    vaccine_first_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    vaccine_second_date datetime,
    philhealth_no varchar(255),
    pregnant tinyint(1) NOT NULL,
    breastfeeding tinyint(1) NOT NULL,
    drug_allergy tinyint(1) NOT NULL,
    food_allery tinyint(1) NOT NULL,
    pollen_allery tinyint(1) NOT NULL,
    immunodeficiency_status tinyint(1) NOT NULL,
    comorbidity varchar(1000) NOT NULL,
    diagnose_with_covid tinyint(1) NOT NULL DEFAULT 0,
    citizen_id varchar(11),
    PRIMARY KEY (id),
    FOREIGN KEY (citizen_id) REFERENCES citizen (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- CTRC-1010001

CREATE TABLE contact_tracing (
    id int NOT NULL AUTO_INCREMENT,
    exposure_to_covid_patient tinyint(1) NOT NULL,
    exposure_outside_province tinyint(1) NOT NULL,
    exposure_overseas_travel tinyint(1) NOT NULL,
    living_status varchar(255) NOT NULL,
    symptoms varchar(255) NOT NULL,
    citizen_id varchar(11),
    PRIMARY KEY (id),
    FOREIGN KEY (citizen_id) REFERENCES citizen (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `account` (
    username varchar(25) NOT NULL UNIQUE,
    `name` varchar(255),
    `password` varchar(25) NOT NULL,
    account_type tinyint(1) NOT NULL DEFAULT 0,
    citizen_id varchar(11),
    PRIMARY KEY (username),
    FOREIGN KEY (citizen_id) REFERENCES citizen (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;