CREATE DATABASE
IF NOT EXISTS `puzzle` DEFAULT CHARSET `utf8` COLLATE `utf8_general_ci`;

USE `puzzle`;

CREATE TABLE
IF NOT EXISTS `p_project`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE
IF NOT EXISTS `p_project`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE
IF NOT EXISTS `p_component`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE
IF NOT EXISTS `p_object`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE
IF NOT EXISTS `p_field`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE
IF NOT EXISTS `p_menu`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE
IF NOT EXISTS `p_flow`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE
IF NOT EXISTS `p_temp`
(
    `id` ,
    `name`, 
    `author`,
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



