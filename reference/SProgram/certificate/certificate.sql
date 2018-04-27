create table certificate (
     id int auto_increment comment '自增主键',
     uid int default 0 comment '用户id',
     ctype int default 0 comment '合同类别 0:乐动力在线减脂营服务协议',
     fsdid varchar(100) default '' comment '合同单号',
     status int default 0 comment '0:无效 1:有效',
     update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
     create_time datetime default current_timestamp comment '创建时间',
     primary key (id),
     unique uniq_uid_ctype (uid, ctype),
     unique uniq_fsdid (fsdid)
);
