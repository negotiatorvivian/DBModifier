create table watermark_category (
    id int auto_increment primary key comment '自增主键',
    name varchar(255) default '' comment '名称',
    cover varchar(255) default '' comment '封面',
    version varchar(255) default '' comment '版本',
    rank int default 0 comment '排序',
    status int default 1 comment '0:无效 1:有效'
);


create table watermark (
    id int auto_increment primary key comment '自增主键',
    type int default 0 comment '类型',
    cid int default 0 comment '类别id',
    name varchar(255) default '' comment '名称',
    cover varchar(255) default '' comment '封面',
    source varchar(255) default '' comment '资源包',
    version varchar(255) default '' comment '版本',
    rank int default 0 comment '排序',
    status int default 1 comment '0:无效 1:有效',
    index idx_cid (cid)
);
