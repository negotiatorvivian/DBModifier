create table balala_slowest_interface (
    id int auto_increment comment'自增主键',
    device int default 0 comment '设备:IOS-1,安卓-2,无:0',
    access_url varchar(512) default '' comment '访问地址',
    aver_time float default 0.000 comment '平均访问时间',
    count int default 0 comment '日访问次数',  
    gtone_aver_time float default 0.000 comment '大于一秒平均访问时间',
    gtone_count int default 0 comment '大于一秒访问次数',
    create_date int default 0 comment '创建日期',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table balala_invalid_interface (
    id int auto_increment comment'自增主键',
    device int default 0 comment '设备:IOS-1,安卓-2,无:0',
    access_url varchar(512) default '' comment '访问地址',
    count int default 0 comment '日访问次数',    
    res_value int default 0 comment '接口返回值',
    create_date int default 0 comment '创建日期',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;

create table balala_interface_accuracy (
    id int auto_increment comment'自增主键',
    device int default 0 comment '设备:IOS-1,安卓-2,无:0',
    access_url varchar(512) default '' comment '访问地址',    
    count int default 0 comment '日正确访问次数',
    total_count int default 0 comment '日总访问次数',
    accuracy float default 0.000 comment '接口正确率',
    create_date int default 0 comment '创建日期',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;

create table balala_frequently_visited_uids (
    id int auto_increment comment'自增主键',
    device int default 0 comment '设备:IOS-1,安卓-2,无:0',
    access_url varchar(512) default '' comment '访问地址',    
    count int default 0 comment '日正确访问次数',
    uid int default 0 comment '用户uid',
    create_date int default 0 comment '创建日期',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;

create table balala_user (
    id int auto_increment comment'自增主键',
    username varchar(20) default '' comment '登录名',    
    password varchar(16) default '' comment '密码',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id),
    unique(username)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;

create table balala_fail_interfaces (
    id int auto_increment comment'自增主键',
    access_url varchar(512) default '' comment '访问地址',    
    count int default 0 comment '日访问次数',
    err_code varchar(10) default '' comment '返回错误码',
    create_date int default 0 comment '创建日期',
    create_time int default 0 comment '创建时间',
    update_time int default 0 comment '更新时间',
    status int default 1 comment '0:无效 1:有效',
    primary key (id)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;