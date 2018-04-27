create table camp_member_log (
     id int auto_increment comment '自增主键',
     ltype int default 0 comment '日志类型',
     camp_member_id int default 0 comment '班级成员id',
     admin_id int default 0 comment '管理员id',
     status int default 1 comment '0:无效 1:有效',
     update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
     create_time datetime default current_timestamp comment '创建时间',
     primary key (id)
);
