create table discovery_banner (
    id int auto_increment primary key comment '自增主键',
    type int default 0 comment '类型 0:轮播 1:上部 2:下部',
    title varchar(255) default '' comment '标题',
    link varchar(255) default '' comment '链接',
    img varchar(255) default '' comment '图片',
    img_proportion float default 0 comment '图片比例',
    rank int default 0 comment '排序',
    starttime int default 0 comment '开始时间',
    endtime int default 0 comment '结束时间',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    ad1_v varchar(255) default '' comment '展现统计链接1',
    ad1_c varchar(255) default '' comment '点击统计链接1',
    ad2_v varchar(255) default '' comment '展现统计链接2',
    ad2_c varchar(255) default '' comment '点击统计链接2',
    index idx_type (type)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table discovery_hashtag (
    id int auto_increment primary key comment '自增主键',
    type int default 0 comment '类型 0:文章 1:帖子',
    title varchar(255) default '' comment '标题',
    content longtext default '' comment '内容',
    img varchar(255) default '' comment '图片',
    rec int default 0 comment '是否推荐 0:未推荐 1:推荐',
    seek int default 0 comment '默认搜索 0:未推荐 1:推荐',
    rank int default 0 comment '排序',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    index idx_title (title)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table discovery_post_hashtag (
    id int auto_increment primary key comment '自增主键',
    pid int default 0 comment '帖子id',
    hid int default 0 comment '话题id',
    status int default 1 comment '0:无效 1:有效',
    index idx_hid (hid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table discovery_user_relation (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '发起用户id',
    to_uid int default 0 comment '被关注用户id',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    index idx_uid (uid),
    index idx_to_uid (to_uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table discovery_rec_user (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户id',
    status int default 1 comment '0:无效 1:有效'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table discovery_user (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户id',
    background_img varchar(255) default '' comment '背景图',
    status int default 1 comment '0:无效 1:有效'
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table discovery_user_complain (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户id',
    to_uid int default 0 comment '被举报用户id',
    status int default 1 comment '0:无效 1:有效',
    ctime int default 0 comment '创建时间',
    index idx_uid (uid),
    index idx_to_uid (to_uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


alter table discovery_post add column type int default 0 comment '类型 0:文章 1:帖子';
alter table discovery_post add column abstract varchar(255) default '' comment '摘要';
alter table discovery_post add column img varchar(255) default '' comment '图片';
alter table discovery_post add column img_proportion float default 0 comment '图片比例';
alter table discovery_post add column rec int default 0 comment '是否推荐 0:未推荐 1:推荐';
alter table discovery_post add column rank int default 0 comment '排序';
alter table discovery_post add column status int default 1 comment '0:无效 1:有效';
alter table discovery_post modify column selected int default 0 comment '是否精选 0:否 1:是';
alter table discovery_post modify column blocked int default 0 comment '是否屏蔽 0:否';
alter table discovery_post modify column tags varchar(255) default '' comment '标签';
alter table discovery_post add index idx_uid (uid);
alter table discovery_post add index idx_created (created);

alter table discovery_comment add column status int default 1 comment '0:无效 1:有效';
alter table discovery_comment modify selected int default 0 comment '是否精选 0:否 1:是';
alter table discovery_comment modify blocked int default 0 comment '是否屏蔽 0:否';
alter table discovery_comment modify content varchar(255) default '' comment '评论内容';

alter table discovery_comment_like modify column status int default 1 comment '0:无效 1:有效';

alter table discovery_post_like modify column status int default 1 comment '0:无效 1:有效';

alter table discovery_post_complain modify status int default 1 comment '0:无效 1:有效';

alter table discovery_comment_complain modify status int default 1 comment '0:无效 1:有效';

alter table discovery_blacklist add column status int default 1 comment '0:无效 1:有效';


create table discovery_favorite (
    id int auto_increment primary key comment '自增主键',
    uid int default 0 comment '用户id',
    pid int default 0 comment '帖子id',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    index idx_uid (uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


create table discovery_whitelist (
    id int auto_increment primary key comment '自增主键',
    type int default 0 comment '用户类型 0:kol 1:普通',
    uid int default 0 comment '用户id',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    unique uniq_uid (uid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


alter table discovery_user add column whatsup varchar(255) default '' comment '个性签名' after uid;
alter table discovery_user add column parea varchar(255) default '' comment '父地址' after background_img;
alter table discovery_user add column carea varchar(255) default '' comment '子地址' after parea;


create table discovery_post_card (
    id int auto_increment primary key comment '自增主键',
    pid int default 0 comment '帖子id',
    cid int default 0 comment '打卡id',
    ctime int default 0 comment '创建时间',
    status int default 1 comment '0:无效 1:有效',
    unique uniq_pid (pid),
    unique uniq_cid (cid)
) engine = innodb default charset = utf8mb4 collate = utf8mb4_unicode_ci;


alter table discovery_hashtag add column description longtext default '' comment '描述' after content;
