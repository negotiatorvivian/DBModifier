create table sprogram_coach (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    pc varchar(255) default '' comment '设备标识',
    title varchar(255) default '' comment '头衔',
    realname varchar(255) default '' comment '实名',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id),
    index idx_uid (uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;
