#功能:vue_server_00 cake服务器端
#创建数据库cake
SET NAMES UTF8;
DROP DATABASE IF EXISTS cake;
CREATE DATABASE cake CHARSET=UTF8;

#程序
#1:进入指定库 cake
USE cake;

#功能一：创建用户表
CREATE TABLE cake_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(20),
  phone CHAR(11),
  date VARCHAR(20)
);
#功能二：创建首页表
DROP TABLE IF EXISTS cake_home;
CREATE TABLE cake_home(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  hname VARCHAR(50),
  himg VARCHAR(50),
  products VARCHAR(500)
);
INSERT INTO cake_home VALUES(null,'新品','xp.jpg','1,米道,天真、天然，是我们做这款蛋糕唯一的出发点,儿童 生日 人气,¥298.00/454g(1.0磅),/0/0.png;2,平安夜,世间美好、温暖的滋味，有一半在平安夜,情侣 聚会 圣诞节 低温,¥298.00/454g(1.0磅),/1/0.png;3,栗蓉暗香,新栗上市，栗香正浓,儿童 聚会 长辈,¥298.00/454g(1.0磅),/2/0.png;4,黑森林,向往极北的黑森林，纷飞的雪花里有精灵的歌咏,情侣 圣诞节 人气,¥298.00/454g(1.0磅),/3/0.png');
INSERT INTO cake_home VALUES(null,'生日','sr.jpg',"1,米道,天真、天然，是我们做这款蛋糕唯一的出发点,儿童 生日 人气,¥298.00/454g(1.0磅),/4/0.png;2,平安夜,世间美好、温暖的滋味，有一半在平安夜,情侣 聚会 圣诞节,¥298.00/454g(1.0磅),/5/0.png;3,栗蓉暗香,新栗上市，栗香正浓,儿童 聚会 长辈,¥298.00/454g(1.0磅),/6/0.png;4,黑森林,向往极北的黑森林，纷飞的雪花里有精灵的歌咏,情侣 圣诞节 人气,¥298.00/454g(1.0磅),/7/0.png");
INSERT INTO cake_home VALUES(null,'儿童','et.jpg',"1,米道,天真、天然，是我们做这款蛋糕唯一的出发点,儿童 生日 人气,¥298.00/454g(1.0磅),/8/0.png;2,平安夜,世间美好、温暖的滋味，有一半在平安夜,情侣 聚会 圣诞节,¥298.00/454g(1.0磅),/9/0.png;3,栗蓉暗香,新栗上市，栗香正浓,儿童 聚会 长辈,¥298.00/454g(1.0磅),/10/0.png;4,黑森林,向往极北的黑森林，纷飞的雪花里有精灵的歌咏,情侣 圣诞节 人气,¥298.00/454g(1.0磅),/11/0.png");
INSERT INTO cake_home VALUES(null,'聚会','jh.jpg',"1,米道,天真、天然，是我们做这款蛋糕唯一的出发点,儿童 生日 人气,¥298.00/454g(1.0磅),/0/0.png;2,平安夜,世间美好、温暖的滋味，有一半在平安夜,情侣 聚会 圣诞节 低温,¥298.00/454g(1.0磅),/1/0.png;3,栗蓉暗香,新栗上市，栗香正浓,儿童 聚会 长辈,¥298.00/454g(1.0磅),/2/0.png;4,黑森林,向往极北的黑森林，纷飞的雪花里有精灵的歌咏,情侣 圣诞节 人气,¥298.00/454g(1.0磅),/3/0.png");

#功能三：创建商品列表
CREATE TABLE cake_list(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(50),
  title VARCHAR(50),
  price  VARCHAR(20),
  tag VARCHAR(20),
  ptype INT,
  typeimg VARCHAR(20)
);
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",1,"xp.png");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",1,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",1,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",1,"mx.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",1,"xp.png");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",1,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",1,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",1,"mx.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",1,"xp.png");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",1,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",1,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",1,"mx.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",1,"xp.png");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",1,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",1,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",1,"mx.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",1,"xp.png");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",1,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",1,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",1,"mx.png");

INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"mx.png");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"rq.png");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"xp.png");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"mx.png");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"rq.png");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"xp.png");INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"mx.png");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"rq.png");
INSERT INTO cake_list VALUES(null,"/13/1.jpg","黑白巧克力慕斯彼尔德","¥298.00/454g(1.0磅)","新品 设计师款",2,"xp.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"xp.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"mx.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"rq.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"xp.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"mx.png");
INSERT INTO cake_list VALUES(null,"/0/1_0.jpg","米道","¥298.00/454g(1.0磅)","儿童 生日 人气",3,"rq.png");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",4,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",4,"");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",4,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",4,"");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",4,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",4,"");
INSERT INTO cake_list VALUES(null,"/12/1.jpg","浅草","¥298.00/454g(1.0磅)","聚会 圣诞节",4,"rq.png");
INSERT INTO cake_list VALUES(null,"/14/1.jpg","芒果慕斯","¥298.00/454g(1.0磅)","聚会 儿童",4,"");

#功能四：创建类别列表
CREATE TABLE cake_type(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(50),
  title VARCHAR(50)
);
INSERT INTO cake_type VALUES(null,"xp.jpg","新品");
INSERT INTO cake_type VALUES(null,"sr.jpg","生日");
INSERT INTO cake_type VALUES(null,"et.jpg","儿童");
INSERT INTO cake_type VALUES(null,"jh.jpg","聚会");
