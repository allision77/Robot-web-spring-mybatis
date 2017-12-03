-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-11-21 09:47:10
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marry`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `aid` char(20) NOT NULL COMMENT '管理员编号',
  `apwd` varchar(50) NOT NULL COMMENT '密码',
  `aname` varchar(50) NOT NULL COMMENT '管理员姓名'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `classpro1`
--

CREATE TABLE `classpro1` (
  `cp1id` char(3) NOT NULL COMMENT '类别编号',
  `pname` varchar(50) NOT NULL COMMENT '一级婚纱类别名称'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `classpro2`
--

CREATE TABLE `classpro2` (
  `cp2id` char(3) NOT NULL,
  `pname` varchar(50) NOT NULL COMMENT '二级婚纱类别名称'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `guest`
--

CREATE TABLE `guest` (
  `gid` char(20) NOT NULL COMMENT '留言编号',
  `gname` varchar(50) NOT NULL COMMENT '留言人',
  `msg` varchar(50) NOT NULL COMMENT '内容'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `kc`
--

CREATE TABLE `kc` (
  `kid` char(20) NOT NULL COMMENT '编号',
  `pid` varchar(10) NOT NULL COMMENT '婚纱编号',
  `kc` varchar(50) NOT NULL COMMENT '库存'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `kc`
--

INSERT INTO `kc` (`kid`, `pid`, `kc`) VALUES
('', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `pid` char(10) NOT NULL COMMENT '婚纱编号',
  `pname` varchar(50) NOT NULL COMMENT '婚纱名称',
  `cpro` varchar(50) NOT NULL COMMENT '婚纱类别',
  `img` varchar(50) NOT NULL COMMENT '图片',
  `price` varchar(50) NOT NULL COMMENT '价格',
  `about` varchar(50) NOT NULL COMMENT '说明',
  `kc` varchar(50) NOT NULL COMMENT '库存量'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `pro_car`
--

CREATE TABLE `pro_car` (
  `cid` char(20) NOT NULL COMMENT '购物车编号',
  `pid` char(10) NOT NULL COMMENT '婚纱编号',
  `uid` varchar(50) NOT NULL COMMENT '用户账号',
  `procount` int(11) NOT NULL COMMENT '订货数量',
  `price` varchar(50) NOT NULL COMMENT '产品价格'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `pro_list`
--

CREATE TABLE `pro_list` (
  `lid` char(20) NOT NULL COMMENT '订单编号',
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `tel` varchar(50) NOT NULL COMMENT '电话',
  `address` varchar(50) NOT NULL COMMENT '地址',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `procount` int(11) NOT NULL COMMENT '数量',
  `pname` varchar(50) NOT NULL COMMENT '婚纱名称',
  `price` int(11) NOT NULL COMMENT '价格',
  `youbian` varchar(50) NOT NULL COMMENT '邮编',
  `zhifu` varchar(50) NOT NULL COMMENT '支付方式',
  `msg` varchar(50) NOT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE `role` (
  `rid` int(20) NOT NULL,
  `rname` varchar(50) NOT NULL,
  `permissions` varchar(50) DEFAULT NULL COMMENT '权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`rid`, `rname`, `permissions`) VALUES
(1, 'admin', NULL),
(0, 'user', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` varchar(20) NOT NULL COMMENT '用户账号',
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `upwd` varchar(50) NOT NULL COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `address` varchar(50) NOT NULL COMMENT '地址',
  `tel` varchar(50) NOT NULL COMMENT '电话'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `classpro1`
--
ALTER TABLE `classpro1`
  ADD PRIMARY KEY (`cp1id`);

--
-- Indexes for table `classpro2`
--
ALTER TABLE `classpro2`
  ADD PRIMARY KEY (`cp2id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `kc`
--
ALTER TABLE `kc`
  ADD PRIMARY KEY (`kid`,`pid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `pro_car`
--
ALTER TABLE `pro_car`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `pro_list`
--
ALTER TABLE `pro_list`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
