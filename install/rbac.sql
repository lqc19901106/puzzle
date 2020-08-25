-- rbac权限管理系统
CREATE TABLE IF NOT EXISTS `tbl_group`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `author` VARCHAR(40) NOT NULL,
    `createtime` TIMESTAMP NOT,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '用户组';

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '角色表';

CREATE TABLE IF NOT EXISTS `tbl_permissions` (
    `id` int(11) NOT NULL auto_increment,
    `Title` char(64) NOT NULL,
    `Description` text NOT NULL,
    `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    `http_path` text COLLATE utf8mb4_unicode_ci,
    PRIMARY KEY (`id`),
    KEY `Title` (`Title`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_bin COMMENT = '权限表';

## https://www.cnblogs.com/wjohh/p/10854380.html