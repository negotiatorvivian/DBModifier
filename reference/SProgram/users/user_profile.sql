create table user_profile (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    ptype int default 0 comment '档案类别 0:体重 1:胸围 2:上胸 3:下胸 4:腰围 5:臀围 6:大腿 7:大臂',
    ptime int default 0 comment '档案日期',
    pvalue float default 0 comment '档案数据',
    status int default 1 comment '0:无效 1:有效',
    update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
    create_time datetime default current_timestamp comment '创建时间',
    primary key (id),
    index idx_uid_ptype (uid, ptype),
    index idx_ptime (ptime)
);

create table user_imgs (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    itime int default 0 comment '照片日期',
    ivalue text default '' comment '照片数据',
    status int default 1 comment '0:无效 1:有效',
    update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
    create_time datetime default current_timestamp comment '创建时间',
    primary key (id),
    index idx_uid (uid),
    index idx_itime (itime)
);
