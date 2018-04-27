create table camp_grade_analyse (
     id int auto_increment comment '自增主键',
     camp_grade varchar(100) default '' comment '年级名称',
     member_count int default 0 comment '班级人数',
     trans_count int default 0 comment '转化人数',
     trans_rate float default 0 comment '转化率',
     status int default 1 comment '0:无效 1:有效',
     update_time datetime default current_timestamp on update current_timestamp comment '更新时间',
     create_time datetime default current_timestamp comment '创建时间',
     primary key (id),
     unique uni_camp_grade (camp_grade)
);
