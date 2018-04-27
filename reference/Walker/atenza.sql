create table market_atenza_user (
    id int auto_increment comment'自增主键',
    uid int default 0 comment '用户id',
    height float default 0.0 comment '身高',
    weight float default 0.0 comment '体重',
    goal int default 0 comment '0:减脂 1:塑形',
    old_customer int default 0 comment '0:不是 1:是',
    create_time int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id),
    index idx_uid (uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table market_atenza_plan (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    first_prize int default 0 comment '0:未领取 1:已领取',
    second_prize int default 0 comment '0:未领取 1:已领取',
    third_prize int default 0 comment '0:未领取 1:已领取',
    create_time int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id),
    index idx_uid (uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table market_atenza_test_drive (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    name varchar(255) default '' comment '用户姓名',
    phone varchar(11) default '' comment '用户电话',
    province varchar(180) default '' comment '省份',
    city varchar(180) default '' comment '城市',
    dealer varchar(255) default '' comment '经销商',
    create_time int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id),
    index idx_uid (uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table market_atenza_prize (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    name varchar(255) default '' comment '用户姓名',
    phone varchar(11) default '' comment '用户电话',
    address varchar(255) default '' comment '地址',
    rank int default 0 comment '获取奖项 1：一等奖，2：二等奖',
    create_time int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id),
    index idx_uid (uid) 
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;
