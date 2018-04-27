create table sprogram_waitinglist (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户id',
    officer_id int default 0 comment '客服id',
    comment varchar(255) default '' comment '备注',
    createtime int default 0 comment '创建时间',
    camp_id int default 0 comment '班级id',
    camp_member_status int default 0 comment '分班状态',
    recruit_user_id int default 0 comment '订单id',
    skuid int default 0 comment '商品id',
    wechat_id varchar(100) default '' comment '微信号',
    last_camp_id int default 0 comment '前班级id',
    wechat_status int default 0 comment '微信添加状态',
    startlearn_timestamp int default 0 comment '班级开始时间',
    goods_id int default 0 comment '套餐id',
    price int default 0 comment '价格',
    transact_state int default 0 comment '交易状态',
    min_startlearn int default 0 comment '最小班级开始时间'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table sprogram_camp (
    id int auto_increment primary key comment '自增主键',
    camp_name varchar(100) default '' comment '班级',
    camp_grade varchar(100) default '' comment '年级',
    camp_starttime int default 0 comment '班级开始时间',
    camp_endtime int default 0 comment '班级结束时间',
    coach_count int default 0 comment '教练数量',
    student_count int default 0 comment '学生数量',
    onduty_coachid int default 0 comment '值班教练id',
    captain_id int default 0 comment '营长id',
    camp_type int default 0 comment '班级类型',
    unique key uniq_camp_name (camp_name)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table sprogram_camp_member (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户id',
    camp_id int default 0 comment '班级id',
    create_time int default 0 comment '创建时间',
    student_status int default 0 comment '学员状态'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table sprogram_coach (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户id',
    pc varchar(100) default '' comment '设备标识',
    phone varchar(100) default '' comment '手机号',
    verify_code varchar(100) default '' comment '验证码',
    expire_time int default 0 comment '验证码过期时间',
    title varchar(100) default '' comment '头衔',
    realname varchar(100) default '' comment '实名',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    index idx_uid (uid),
    index idx_phone (phone)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;
