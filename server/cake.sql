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

