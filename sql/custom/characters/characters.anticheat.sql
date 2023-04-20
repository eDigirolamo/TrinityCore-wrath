DROP TABLE IF EXISTS `players_reports_status`;

CREATE TABLE `players_reports_status` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='';

DROP TABLE IF EXISTS `daily_players_reports`;
CREATE TABLE `daily_players_reports` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_time` int(10) unsigned NOT NULL DEFAULT '0',
  `average` float NOT NULL DEFAULT '0',
  `total_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `speed_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fly_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `jump_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `waterwalk_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `teleportplane_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  `climb_reports` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='';


ALTER TABLE `daily_players_reports`
	ADD COLUMN `teleport_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `climb_reports`,
	ADD COLUMN `ignorecontrol_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `teleport_reports`,
	ADD COLUMN `zaxis_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `ignorecontrol_reports`,
    ADD COLUMN `antiswim_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `zaxis_reports`,
    ADD COLUMN `gravity_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `antiswim_reports`;
	
ALTER TABLE `players_reports_status`
    ADD COLUMN `teleport_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `climb_reports`,
    ADD COLUMN `ignorecontrol_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `teleport_reports`,
    ADD COLUMN `zaxis_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `ignorecontrol_reports`,
    ADD COLUMN `antiswim_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `zaxis_reports`,
    ADD COLUMN `gravity_reports` BIGINT UNSIGNED NOT NULL DEFAULT 0 AFTER `antiswim_reports`;