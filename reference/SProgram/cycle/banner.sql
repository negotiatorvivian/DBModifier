create table cycle_banner (
     id int auto_increment comment '自增主键',
     btype int default 0 comment '图片类别 0:新用户 1:老用户',
     img_url varchar(255) default '' comment '图片地址',
     link_url varchar(255) default '' comment '链接地址',
     description varchar(255) default '' comment '描述',
     rank int default 0 comment '排序权重',
     status int default 1 comment '0:无效 1:有效',
     update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
     create_time datetime default current_timestamp comment '创建时间',
     primary key (id),
     index idx_btype (btype)
);
