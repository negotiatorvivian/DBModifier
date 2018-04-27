create table sprogram_camp (
    id int auto_increment comment '自增主键',
    camp_name varchar(100) default '' comment '班级名称',
    camp_grade varchar(100) default '' comment '年级名称',
    camp_type int default 0 comment '班级类型',
    captain_id int default 0 comment '营长id',
    onduty_coachid int default 0 comment '值班教练id',
    camp_starttime int default 0 comment '开始时间',
    camp_endtime int default 0 comment '结束时间',
    coach_count int default 0 comment '教练数量',
    student_count int default 0 comment '学员数量',
    primary key (id),
    unique key uniq_camp_name (camp_name)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table sprogram_camp_member (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    camp_id int default 0 comment '班级id',
    create_time int default 0 comment '创建时间',
    student_status int default 0 comment '学员状态',
    primary key (id)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;
