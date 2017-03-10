-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'students'
--
-- ---

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT ,
  `name` VARCHAR,
  `age` INTEGER,
  `cohort_id` INTEGER
);

-- ---
-- Table 'cohorts'
--
-- ---

DROP TABLE IF EXISTS `cohorts`;

CREATE TABLE `cohorts` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR(255)
);

-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE `students` ADD FOREIGN KEY (cohort_id ) REFERENCES `cohorts` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `students` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `cohorts` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `students` (`id`,`name`,`age`,`cohort_id `) VALUES
-- ('','','','');
-- INSERT INTO `cohorts` (`id`,`name`) VALUES
-- ('','');






























-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'students'
--
-- ---

-- DROP TABLE IF EXISTS `students`;
--
-- CREATE TABLE `students` (
--   `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
--   `name` VARCHAR(200),
--   `age` INTEGER,
--   `last_name` VARCHAR(64),
--   `id_cohort` INTEGER
--   -- PRIMARY KEY (`id`)
-- );
--
-- -- ---
-- -- Table 'cohort'
-- --
-- -- ---
--
-- DROP TABLE IF EXISTS `cohort`;
--
-- CREATE TABLE `cohorts` (
--   `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
--   `name` VARCHAR(34),
--   `start_date` DATE
--   -- PRIMARY KEY (`id`)
-- );

-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE `students` ADD FOREIGN KEY (id_cohort) REFERENCES `cohort` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `students` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `cohort` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `students` (`id`,`name`,`age`,`last_name`,`id_cohort`) VALUES
-- ('','','','','');
-- INSERT INTO `cohort` (`id`,`name`,`start_date`) VALUES
-- ('','','');
