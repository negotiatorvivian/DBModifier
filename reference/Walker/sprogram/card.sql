create table sprogram_card (
    id int auto_increment primary key comment '自增主键',
    card_type int default 0 comment '类型',
    image_url text default '' comment '图片',
    image_proportion float default 0 comment '比例',
    image_desc text default '' comment '内容',
    image_meta text default '' comment '元数据',
    create_time int default 0 comment '打卡时间',
    owner_uid int default 0 comment '学员uid',
    owner_nickname varchar(255) default '' comment '学员昵称',
    owner_avatar text default '' comment '学员头像',
    score float default 0 comment '教练评分',
    comment_coach_id int default 0 comment '教练uid',
    comment_coach_nickname varchar(255) default '' comment '教练昵称',
    comment_coach_avatar text default '' comment '教练头像',
    comment_time int default 0 comment '评论时间',
    comment_content text default '' comment '评论内容',
    comment_skip int default 0 comment '跳过',
    completion float default 0 comment 'combo完成度',
    actually_duration float default 0 comment '实际运动时间',
    actually_calorie float default 0 comment '实际消耗卡路里',
    reply_count int default 0 comment '回复数',
    like_count int default 0 comment '点赞数',
    camp_id int default 0 comment '班级id',
    sport_combo_code_name varchar(100) default '' comment 'combo',
    create_date int default 0 comment '打卡日期',
    unique key uniq_owner_uid_create_date_card_type (owner_uid, create_date, card_type, sport_combo_code_name),
    index idx_create_date (create_date)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;
