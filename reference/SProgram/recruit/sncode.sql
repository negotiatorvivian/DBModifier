create table sncode (
    id int auto_increment comment '自增主键',
    type int default 0 comment '激活码类型 0:乐心',
    code varchar(100) default '' comment '激活码',
    uid int default 0 comment '用户id',
    flag int default 0 comment '激活状态 0:未激活 1:激活',
    status int default 1 comment '0:无效 1:有效',
    update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
    create_time datetime default current_timestamp comment '创建时间',
    primary key (id),
    unique uni_type_code (type, code)
);
