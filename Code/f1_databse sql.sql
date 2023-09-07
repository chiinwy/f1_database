-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema f1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema f1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `f1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `f1` ;

-- -----------------------------------------------------
-- Table `f1`.`circuits`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`circuits` (
  `circuitId` BIGINT NOT NULL,
  `circuitRef` TEXT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `location` TEXT NULL DEFAULT NULL,
  `country` TEXT NULL DEFAULT NULL,
  `lat` DOUBLE NULL DEFAULT NULL,
  `lng` DOUBLE NULL DEFAULT NULL,
  `alt` TEXT NULL DEFAULT NULL,
  `url` TEXT NULL DEFAULT NULL,
  `layout` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`circuitId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`constructor_results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`constructor_results` (
  `constructorResultsId` BIGINT NOT NULL,
  `raceId` BIGINT NOT NULL,
  `constructorId` BIGINT NULL DEFAULT NULL,
  `points` DOUBLE NULL DEFAULT NULL,
  `status` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`constructorResultsId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`constructor_standings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`constructor_standings` (
  `constructorStandingsId` BIGINT NOT NULL,
  `raceId` BIGINT NULL DEFAULT NULL,
  `constructorId` BIGINT NULL DEFAULT NULL,
  `points` DOUBLE NULL DEFAULT NULL,
  `position` BIGINT NULL DEFAULT NULL,
  `positionText` TEXT NULL DEFAULT NULL,
  `wins` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`constructorStandingsId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`constructors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`constructors` (
  `constructorId` BIGINT NOT NULL,
  `constructorRef` TEXT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `nationality` TEXT NULL DEFAULT NULL,
  `url` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`constructorId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`driver_standings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`driver_standings` (
  `driverStandingsId` BIGINT NULL DEFAULT NULL,
  `raceId` BIGINT NULL DEFAULT NULL,
  `driverId` BIGINT NULL DEFAULT NULL,
  `points` DOUBLE NULL DEFAULT NULL,
  `position` BIGINT NULL DEFAULT NULL,
  `positionText` TEXT NULL DEFAULT NULL,
  `wins` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`drivers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`drivers` (
  `driverId` BIGINT NOT NULL,
  `driverRef` TEXT NULL DEFAULT NULL,
  `number` TEXT NULL DEFAULT NULL,
  `code` TEXT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `dob` TEXT NULL DEFAULT NULL,
  `nationality` TEXT NULL DEFAULT NULL,
  `url` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`driverId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`lap_times`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`lap_times` (
  `raceId` BIGINT NULL DEFAULT NULL,
  `driverId` BIGINT NULL DEFAULT NULL,
  `lap` BIGINT NULL DEFAULT NULL,
  `position` BIGINT NULL DEFAULT NULL,
  `time` TEXT NULL DEFAULT NULL,
  `milliseconds` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`pit_stops`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`pit_stops` (
  `raceId` BIGINT NULL DEFAULT NULL,
  `driverId` BIGINT NULL DEFAULT NULL,
  `stop` BIGINT NULL DEFAULT NULL,
  `lap` BIGINT NULL DEFAULT NULL,
  `time` TEXT NULL DEFAULT NULL,
  `duration` TEXT NULL DEFAULT NULL,
  `milliseconds` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`qualifying`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`qualifying` (
  `qualifyId` BIGINT NOT NULL,
  `raceId` BIGINT NULL DEFAULT NULL,
  `driverId` BIGINT NULL DEFAULT NULL,
  `constructorId` BIGINT NULL DEFAULT NULL,
  `number` BIGINT NULL DEFAULT NULL,
  `position` BIGINT NULL DEFAULT NULL,
  `q1` TEXT NULL DEFAULT NULL,
  `q2` TEXT NULL DEFAULT NULL,
  `q3` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`qualifyId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`races`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`races` (
  `raceId` BIGINT NOT NULL,
  `year` BIGINT NULL DEFAULT NULL,
  `round` BIGINT NULL DEFAULT NULL,
  `circuitId` BIGINT NULL DEFAULT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `date` TEXT NULL DEFAULT NULL,
  `time` TEXT NULL DEFAULT NULL,
  `url` TEXT NULL DEFAULT NULL,
  `fp1_date` TEXT NULL DEFAULT NULL,
  `fp1_time` TEXT NULL DEFAULT NULL,
  `fp2_date` TEXT NULL DEFAULT NULL,
  `fp2_time` TEXT NULL DEFAULT NULL,
  `fp3_date` TEXT NULL DEFAULT NULL,
  `fp3_time` TEXT NULL DEFAULT NULL,
  `quali_date` TEXT NULL DEFAULT NULL,
  `quali_time` TEXT NULL DEFAULT NULL,
  `sprint_date` TEXT NULL DEFAULT NULL,
  `sprint_time` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`raceId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`results` (
  `resultId` BIGINT NOT NULL,
  `raceId` BIGINT NOT NULL,
  `driverId` BIGINT NULL DEFAULT NULL,
  `constructorId` BIGINT NULL DEFAULT NULL,
  `number` TEXT NULL DEFAULT NULL,
  `grid` BIGINT NULL DEFAULT NULL,
  `position` TEXT NULL DEFAULT NULL,
  `positionText` TEXT NULL DEFAULT NULL,
  `positionOrder` BIGINT NULL DEFAULT NULL,
  `points` DOUBLE NULL DEFAULT NULL,
  `laps` BIGINT NULL DEFAULT NULL,
  `time` TEXT NULL DEFAULT NULL,
  `milliseconds` TEXT NULL DEFAULT NULL,
  `fastestLap` TEXT NULL DEFAULT NULL,
  `rank` TEXT NULL DEFAULT NULL,
  `fastestLapTime` TEXT NULL DEFAULT NULL,
  `fastestLapSpeed` TEXT NULL DEFAULT NULL,
  `statusId` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`resultId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`seasons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`seasons` (
  `year` BIGINT NULL DEFAULT NULL,
  `url` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`sprint_results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`sprint_results` (
  `resultId` BIGINT NULL DEFAULT NULL,
  `raceId` BIGINT NULL DEFAULT NULL,
  `driverId` BIGINT NULL DEFAULT NULL,
  `constructorId` BIGINT NULL DEFAULT NULL,
  `number` BIGINT NULL DEFAULT NULL,
  `grid` BIGINT NULL DEFAULT NULL,
  `position` TEXT NULL DEFAULT NULL,
  `positionText` TEXT NULL DEFAULT NULL,
  `positionOrder` BIGINT NULL DEFAULT NULL,
  `points` BIGINT NULL DEFAULT NULL,
  `laps` BIGINT NULL DEFAULT NULL,
  `time` TEXT NULL DEFAULT NULL,
  `milliseconds` TEXT NULL DEFAULT NULL,
  `fastestLap` TEXT NULL DEFAULT NULL,
  `fastestLapTime` TEXT NULL DEFAULT NULL,
  `statusId` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `f1`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`status` (
  `statusId` BIGINT NOT NULL,
  `status` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`statusId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
