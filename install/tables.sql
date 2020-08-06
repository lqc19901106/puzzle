CREATE DATABASE IF NOT EXISTS cloud DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

-- DROP DATABASE cloud; 删除数据库
use cloud;

CREATE TABLE IF NOT EXISTS `tbl_project`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL COMMENT '项目名称',
    `master` VARCHAR(40) NOT NULL COMMENT '负责人',
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '项目表';

CREATE TABLE IF NOT EXISTS `tbl_entity`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL COMMENT '实体对象名称',
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '实体对象表';

CREATE TABLE IF NOT EXISTS `tbl_field`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL COMMENT = '字段名称',
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '字段列表';

CREATE TABLE IF NOT EXISTS `tbl_component`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `desc` `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '组件列表';

CREATE TABLE IF NOT EXISTS `tbl_icon`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '图标列表';

CREATE TABLE IF NOT EXISTS `tbl_version`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '版本列表';

CREATE TABLE IF NOT EXISTS `tbl_template`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '模板';

CREATE TABLE IF NOT EXISTS `tbl_flow`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '流程管理';

-- rbac权限管理系统
CREATE TABLE IF NOT EXISTS `tbl_user`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '用户表';

CREATE TABLE IF NOT EXISTS `tbl_module`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '模块表';

CREATE TABLE IF NOT EXISTS `tbl_role`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '用户角色';

DROP TABLE `tbl_permissions` IF EXISTS;

CREATE TABLE IF NOT EXISTS `tbl_permissions` (
    `id` int(11) NOT NULL auto_increment,
    `Title` char(64) NOT NULL,
    `Description` text NOT NULL,
    `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `http_path` text COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`),
    KEY `Title` (`Title`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_bin COMMENT = '权限表';