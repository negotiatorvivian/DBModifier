create table sprogram_user_profile_img (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户ID',
    img text default '' comment '照片数据',
    ctime int default 0 comment '照片日期',
    status int default 1 comment '0:无效 1:有效',
    index idx_uid (uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;
