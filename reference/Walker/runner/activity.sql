create table activity (
    id int auto_increment comment '自增主键',
    uid int default 0 comment '用户id',
    starttime bigint default 0 comment '开始时间',
    endtime bigint default 0 comment '结束时间',
    type int default 0 comment '活动类型',
    steps int default 0 comment '步数',
    velocity float default 0 comment '速度',
    calorie float default 0 comment '卡路里',
    distance float default 0 comment '距离',
    img_url varchar(255) default '' comment '图片地址',
    weather_code int default 0 comment '天气',
    duration float default 0 comment '持续时间',
    one_kilometer_duration float default 0 comment '一公里持续时间',
    five_kilometer_duration float default 0 comment '五公里持续时间',
    ten_kilometer_duration float default 0 comment '十公里持续时间',
    half_marathon_duration float default 0 comment '半马持续时间',
    full_marathon_duration float default 0 comment '全马持续时间',
    badge_id int default 0 comment '勋章id',
    primary key (id),
    unique key uni_uid_starttime (uid, starttime)
);

alter table activity add column cityname varchar(255) default '' comment '城市名称';
