CREATE TABLE `sys_user`
(
  `id`            varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_name`     varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '人员名字',
  `user_gender`   tinyint(1) UNSIGNED                                    NOT NULL DEFAULT 0 COMMENT '性别：0=男，1=女',
  `user_birthday` date                                                   NOT NULL COMMENT '人员生日',
  `user_card_id`  varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `modify_time`   datetime                                               NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_time`   datetime                                               NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = DYNAMIC
;
INSERT INTO `jcs-learn`.`sys_user` (`id`, `user_name`, `user_gender`, `user_birthday`, `user_card_id`, `modify_time`,
                                    `create_time`)
VALUES ('201904151133579786420', '111', '0', '2019-04-15', '2019041511335797', '2019-04-15 11:36:56',
        '2019-04-15 11:36:40');
