-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 07 2015 г., 12:15
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `metric`
--

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL DEFAULT '',
  `lastName` varchar(255) NOT NULL DEFAULT '',
  `dateBirth` varchar(10) NOT NULL DEFAULT '01/01/1900',
  `mail` varchar(255) DEFAULT NULL,
  `balance` float(10,5) NOT NULL DEFAULT '10000.00000',
  `client_pb` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail` (`mail`),
  KEY `persons` (`lastName`,`firstName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=422 ;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`id`, `firstName`, `lastName`, `dateBirth`, `mail`, `balance`, `client_pb`) VALUES
(1, 'Denis', 'Ivanov', '06/01/1980', 'den@yandex.ua', -91.00000, 0),
(2, 'mmdly', 'dpsky', '76/76/7419', 'mmdly@yndex.ua', -63664.98828, 1),
(3, 'fzrnp', 'ppstk', '51/58/4906', 'fzrnp@yndex.ua', -3210.55493, 1),
(4, 'lfwnz', 'bmtmg', '58/25/4842', 'lfwnz@yndex.ua', 97116.00000, 0),
(5, 'lrwtt', 'ppbrm', '61/04/8874', 'lrwtt@yndex.ua', 97999.00000, 0),
(6, 'sspvv', 'phdwn', '44/65/4217', 'sspvv@yndex.ua', 72214.00000, 1),
(7, 'zpxvl', 'kxycs', '26/89/5374', 'zpxvl@yndex.ua', -6338.00000, 0),
(8, 'ghbng', 'vzxtf', '67/40/1834', 'ghbng@yndex.ua', 1733.00000, 1),
(9, 'shsxg', 'yvtgj', '38/70/6731', 'shsxg@yndex.ua', 99908.00000, 1),
(10, 'wtymw', 'kdhnc', '77/68/6868', 'wtymw@yndex.ua', -84883.00000, 1),
(11, 'rwyfx', 'bswtb', '42/27/8349', 'rwyfx@yndex.ua', -32881.00000, 0),
(12, 'zxzcv', 'pnpgt', '60/57/5081', 'zxzcv@yndex.ua', -42102.00000, 0),
(13, 'cyrcn', 'tvxwp', '21/22/4677', 'cyrcn@yndex.ua', 27293.00000, 0),
(14, 'jxlrm', 'tgwzs', '02/88/7928', 'jxlrm@yndex.ua', 75814.00000, 0),
(15, 'frytl', 'gbjfk', '00/56/2909', 'frytl@yndex.ua', 57217.00000, 1),
(16, 'yrxdf', 'bdvhk', '80/87/8353', 'yrxdf@yndex.ua', -24550.00000, 0),
(17, 'tgvbg', 'cdtnv', '52/92/5704', 'tgvbg@yndex.ua', 13089.00000, 0),
(18, 'kwdyw', 'jhyvy', '51/45/9711', 'kwdyw@yndex.ua', -88331.00000, 1),
(19, 'hflcg', 'bpbbv', '13/09/1376', 'hflcg@yndex.ua', -91779.00000, 1),
(20, 'fhvld', 'gbdnt', '21/71/4074', 'fhvld@yndex.ua', -99009.00000, 0),
(21, 'pwlks', 'vjcnl', '23/03/2521', 'pwlks@yndex.ua', -11735.00000, 0),
(22, 'hnncx', 'lkygl', '44/59/5324', 'hnncx@yndex.ua', -88946.91406, 0),
(23, 'nbrhy', 'zvrmt', '32/54/1442', 'nbrhy@yndex.ua', -17356.25781, 0),
(24, 'tmzry', 'sgcrb', '11/41/0318', 'tmzry@yndex.ua', 2757.62329, 1),
(25, 'bmhbw', 'krwmx', '61/98/9981', 'bmhbw@yndex.ua', -3732.79175, 1),
(26, 'tdwvg', 'tfjvr', '50/30/0475', 'tdwvg@yndex.ua', 83232.76562, 1),
(27, 'mvwjr', 'hdrym', '61/81/3868', 'mvwjr@yndex.ua', 16352.76660, 0),
(28, 'nmpsk', 'gjzzt', '90/68/4084', 'nmpsk@yndex.ua', -15467.00586, 1),
(29, 'ctpsd', 'vwvzx', '20/42/0348', 'ctpsd@yndex.ua', 8357.91016, 1),
(30, 'srjrp', 'rcchn', '96/22/2387', 'srjrp@yndex.ua', 58453.98828, 0),
(31, 'fypvm', 'tmgzc', '72/37/7342', 'fypvm@yndex.ua', 5136.53711, 0),
(32, 'zrysk', 'dpzxn', '69/67/1752', 'zrysk@yndex.ua', 14275.37988, 1),
(33, 'lgnpp', 'rrddl', '14/77/9025', 'lgnpp@yndex.ua', 9832.29688, 1),
(34, 'jfcsn', 'fttvk', '75/69/2362', 'jfcsn@yndex.ua', 34734.51953, 1),
(35, 'trzhr', 'jzntn', '89/36/5308', 'trzhr@yndex.ua', 37933.08203, 0),
(36, 'rddtp', 'nrfjn', '33/62/2675', 'rddtp@yndex.ua', -20303.77148, 1),
(37, 'scthy', 'zpbng', '75/15/8355', 'scthy@yndex.ua', -69481.67188, 0),
(38, 'jjtrg', 'rslns', '28/63/3743', 'jjtrg@yndex.ua', -33595.08594, 0),
(39, 'tbtkr', 'jsdxp', '25/90/9987', 'tbtkr@yndex.ua', -13974.25586, 1),
(40, 'srgyc', 'rbhpw', '42/95/0054', 'srgyc@yndex.ua', 67974.50781, 1),
(41, 'zxvlf', 'nwbjk', '25/90/0459', 'zxvlf@yndex.ua', 89445.58594, 0),
(42, 'tgxnw', 'zcvnd', '79/56/7751', 'tgxnw@yndex.ua', -70060.50781, 0),
(43, 'jsxtg', 'jhsyg', '10/61/2582', 'jsxtg@yndex.ua', -86471.65625, 0),
(44, 'tdzlz', 'yzjfp', '10/88/8233', 'tdzlz@yndex.ua', -76329.91406, 1),
(45, 'ljjsp', 'jnwsn', '97/23/8551', 'ljjsp@yndex.ua', 93027.13281, 0),
(46, 'sngbx', 'yrynk', '40/60/7620', 'sngbx@yndex.ua', -95461.29688, 1),
(47, 'rvdml', 'xxwpt', '89/42/7256', 'rvdml@yndex.ua', 58678.32422, 1),
(48, 'kxywz', 'dpzhl', '69/45/8313', 'kxywz@yndex.ua', 61862.21484, 0),
(49, 'rznrs', 'pvmst', '93/48/3963', 'rznrs@yndex.ua', 23469.77148, 1),
(50, 'wwwtp', 'njbbz', '53/09/5563', 'wwwtp@yndex.ua', 22021.50195, 0),
(51, 'hlntl', 'gpflr', '53/76/5402', 'hlntl@yndex.ua', -53987.67969, 0),
(52, 'hlths', 'wzkbm', '22/07/3747', 'hlths@yndex.ua', 63525.73438, 1),
(53, 'tmlxp', 'ktrzt', '66/66/8927', 'tmlxp@yndex.ua', 1075.50171, 0),
(54, 'vvwjn', 'mlrgr', '41/15/4900', 'vvwjn@yndex.ua', 63173.53125, 1),
(55, 'xttrw', 'xbjfc', '56/84/0360', 'xttrw@yndex.ua', 2430.74707, 0),
(56, 'plmyd', 'svrmj', '21/97/5639', 'plmyd@yndex.ua', -15930.69043, 1),
(57, 'kmtpz', 'wmldn', '29/21/6766', 'kmtpz@yndex.ua', 40096.85547, 0),
(58, 'fzwkj', 'lylhx', '27/10/7976', 'fzwkj@yndex.ua', 60827.62500, 0),
(59, 'pvxwg', 'bxyws', '08/70/4055', 'pvxwg@yndex.ua', -49340.94531, 0),
(60, 'wmwjc', 'jcjwr', '79/38/6210', 'wmwjc@yndex.ua', 11010.21973, 0),
(61, 'spnwm', 'cfnxw', '93/44/9693', 'spnwm@yndex.ua', -72535.75000, 0),
(62, 'rpnpd', 'kczgk', '33/37/5792', 'rpnpd@yndex.ua', -26418.99805, 1),
(63, 'bjdxj', 'hsrcp', '34/96/0009', 'bjdxj@yndex.ua', -85149.40625, 0),
(64, 'tvksn', 'wnssn', '18/51/0812', 'tvksn@yndex.ua', 1297.63110, 0),
(65, 'vxyws', 'tlmtg', '11/48/0749', 'vxyws@yndex.ua', 30025.63281, 1),
(66, 'tszzp', 'plmtv', '81/88/2702', 'tszzp@yndex.ua', -94268.78125, 1),
(67, 'hxbls', 'vrmpy', '66/64/0434', 'hxbls@yndex.ua', -53860.55859, 0),
(68, 'xxvcg', 'whgdd', '51/71/8749', 'xxvcg@yndex.ua', 9795.27930, 1),
(69, 'gpcrg', 'ywlwx', '96/56/2438', 'gpcrg@yndex.ua', -26508.81250, 0),
(70, 'fyxtg', 'ccblg', '03/06/9007', 'fyxtg@yndex.ua', -86499.46875, 1),
(71, 'mpgdy', 'rjgxv', '25/08/6573', 'mpgdy@yndex.ua', -86725.51562, 1),
(72, 'lydds', 'mydwn', '39/28/3052', 'lydds@yndex.ua', 48735.25391, 0),
(73, 'tgrkt', 'jpbxx', '61/00/6902', 'tgrkt@yndex.ua', 94476.41406, 0),
(74, 'pyhmv', 'nggyv', '24/13/0939', 'pyhmv@yndex.ua', -24433.03906, 0),
(75, 'jcwpt', 'lkksw', '35/38/1557', 'jcwpt@yndex.ua', -86247.51562, 1),
(76, 'ynpyc', 'kdbyx', '77/26/8145', 'ynpyc@yndex.ua', -49649.80469, 0),
(77, 'xnrfj', 'ztxlx', '47/03/5573', 'xnrfj@yndex.ua', 44072.76562, 0),
(78, 'mwvww', 'cztxp', '54/43/7713', 'mwvww@yndex.ua', 41204.08203, 0),
(79, 'jnbyr', 'wyppr', '28/89/7781', 'jnbyr@yndex.ua', -5359.97607, 1),
(80, 'nwvtn', 'flpmw', '95/07/5240', 'nwvtn@yndex.ua', -35552.34375, 0),
(81, 'jzhtd', 'czfsy', '67/97/2454', 'jzhtd@yndex.ua', -21439.99609, 1),
(82, 'rgryz', 'vydwv', '47/06/2779', 'rgryz@yndex.ua', 50333.42578, 0),
(83, 'tnlhx', 'bdnrx', '17/82/8305', 'tnlhx@yndex.ua', 47582.92969, 1),
(84, 'ymvns', 'bnvfm', '28/83/6599', 'ymvns@yndex.ua', -39794.00781, 0),
(85, 'rksph', 'tklsv', '55/84/9888', 'rksph@yndex.ua', -46969.41797, 0),
(86, 'bvjwx', 'jtpbn', '94/36/8932', 'bvjwx@yndex.ua', -92744.60156, 0),
(87, 'nrrhz', 'bbvps', '34/50/5623', 'nrrhz@yndex.ua', -43959.76953, 0),
(88, 'sptmr', 'zbxdl', '86/98/5405', 'sptmr@yndex.ua', 64568.10156, 1),
(89, 'nfmxx', 'bdwcl', '31/18/9087', 'nfmxx@yndex.ua', 21895.36133, 0),
(90, 'xcpvs', 'jmgnx', '49/56/8922', 'xcpvs@yndex.ua', 82978.93750, 1),
(91, 'mcgbr', 'njmzd', '01/25/0888', 'mcgbr@yndex.ua', 27984.67188, 1),
(92, 'lhwtb', 'fcyyj', '03/53/3900', 'lhwtb@yndex.ua', -61118.87891, 1),
(93, 'ndtgc', 'pvzmp', '20/00/4382', 'ndtgc@yndex.ua', -1358.06201, 0),
(94, 'vhnvz', 'lwryz', '24/87/3662', 'vhnvz@yndex.ua', 40928.45312, 0),
(95, 'clyfy', 'drvzx', '51/10/8201', 'clyfy@yndex.ua', -507.82608, 1),
(96, 'hdpym', 'vvdtj', '12/91/4517', 'hdpym@yndex.ua', -43765.54688, 0),
(97, 'wjpwn', 'rznpw', '63/74/7908', 'wjpwn@yndex.ua', 6672.63379, 1),
(98, 'kmfbk', 'sxzyz', '41/62/7586', 'kmfbk@yndex.ua', -19247.47070, 0),
(99, 'pwhwz', 'lntsb', '07/48/9105', 'pwhwz@yndex.ua', -25242.67578, 0),
(100, 'xjsrr', 'xtnfz', '24/34/9378', 'xjsrr@yndex.ua', 43631.22266, 0),
(101, 'nwtth', 'fxpyj', '52/51/0077', 'nwtth@yndex.ua', 49160.40234, 0),
(102, 'wjvrm', 'vvkpb', '34/95/1815', 'wjvrm@yndex.ua', 93947.32812, 1),
(103, 'bxmdm', 'dtnft', '71/50/7613', 'bxmdm@yndex.ua', -94022.22656, 0),
(104, 'xmhnn', 'rchwz', '72/06/1696', 'xmhnn@yndex.ua', -73141.44531, 0),
(105, 'gwtnm', 'kphfd', '41/65/6000', 'gwtnm@yndex.ua', -53052.78906, 1),
(106, 'dyxgb', 'wrynf', '13/26/9753', 'dyxgb@yndex.ua', -33241.12500, 0),
(107, 'btpsz', 'vghgr', '05/50/4067', 'btpsz@yndex.ua', 41468.01172, 0),
(108, 'xsztl', 'rmbkl', '79/28/2603', 'xsztl@yndex.ua', 66425.24219, 1),
(109, 'rzgzh', 'xgtyz', '42/37/7040', 'rzgzh@yndex.ua', 51473.74219, 1),
(110, 'byrln', 'lpgyc', '23/70/3460', 'byrln@yndex.ua', 42591.21484, 1),
(111, 'vbgrr', 'bvdvh', '13/70/2760', 'vbgrr@yndex.ua', 8694.07227, 1),
(112, 'zcwwj', 'nbklz', '67/14/6622', 'zcwwj@yndex.ua', -45806.92578, 0),
(113, 'vvjcj', 'wycxk', '97/90/6391', 'vvjcj@yndex.ua', 74854.66406, 0),
(114, 'rlswf', 'vtnkk', '75/57/5331', 'rlswf@yndex.ua', 43080.80469, 0),
(115, 'xjppn', 'byrdx', '26/42/5754', 'xjppn@yndex.ua', -86742.71875, 0),
(116, 'wwcmm', 'yxmps', '68/14/5996', 'wwcmm@yndex.ua', 41408.82812, 1),
(117, 'wmsbf', 'hvzcn', '98/57/5294', 'wmsbf@yndex.ua', 36209.87891, 1),
(118, 'nnrdn', 'lvwbs', '02/02/8528', 'nnrdn@yndex.ua', 87970.32031, 1),
(119, 'yjgsx', 'yjmvb', '57/80/4541', 'yjgsx@yndex.ua', -39023.26953, 0),
(120, 'bnvhx', 'zpknh', '96/43/0616', 'bnvhx@yndex.ua', -77652.17188, 0),
(121, 'xsylb', 'lzlgp', '99/50/6862', 'xsylb@yndex.ua', -68159.42188, 0),
(122, 'wypxv', 'ngvzr', '26/36/4322', 'wypxv@yndex.ua', 68463.71094, 1),
(123, 'prjnt', 'tcvxj', '48/24/2175', 'prjnt@yndex.ua', -59972.75391, 1),
(124, 'tvnxt', 'vwwhh', '83/23/5135', 'tvnxt@yndex.ua', -66670.08594, 1),
(125, 'dzsxl', 'xpgxc', '02/02/3637', 'dzsxl@yndex.ua', 84536.82031, 0),
(126, 'ggttb', 'fvnxw', '60/91/6187', 'ggttb@yndex.ua', -18083.45117, 1),
(127, 'yjmgv', 'sjfcx', '13/79/1068', 'yjmgv@yndex.ua', 89510.60938, 1),
(128, 'ctbys', 'mtjpj', '60/85/3676', 'ctbys@yndex.ua', 30787.89844, 1),
(129, 'rznbc', 'tvwds', '59/45/8622', 'rznbc@yndex.ua', 26865.17969, 1),
(130, 'vbrwx', 'bctjl', '57/81/7925', 'vbrwx@yndex.ua', -70671.62500, 0),
(131, 'rnjzp', 'wgtmy', '83/86/4231', 'rnjzp@yndex.ua', 41070.14062, 0),
(132, 'fnkzh', 'flpzp', '42/43/5442', 'fnkzh@yndex.ua', -22123.81055, 0),
(133, 'bjrnp', 'drntz', '73/92/3250', 'bjrnp@yndex.ua', 6276.64209, 0),
(134, 'syyvn', 'gsymn', '09/48/8169', 'syyvn@yndex.ua', 55841.61328, 0),
(135, 'vmykt', 'kwrtm', '72/58/4219', 'vmykt@yndex.ua', -58964.58984, 0),
(136, 'rvsts', 'mbfds', '59/29/4684', 'rvsts@yndex.ua', 54001.17969, 1),
(137, 'zspmz', 'fjhss', '86/75/1662', 'zspmz@yndex.ua', 67084.53125, 1),
(138, 'mrvfz', 'kvwlv', '68/84/3931', 'mrvfz@yndex.ua', -87614.76562, 0),
(139, 'bsbnm', 'xjmzs', '20/27/3122', 'bsbnm@yndex.ua', 51224.98047, 0),
(140, 'pcphn', 'crvrt', '35/66/2516', 'pcphn@yndex.ua', -49755.12109, 1),
(141, 'csnzn', 'nyjsj', '01/16/4062', 'csnzn@yndex.ua', -2429.26489, 1),
(142, 'wgggm', 'pynhv', '37/52/3653', 'wgggm@yndex.ua', -88324.09375, 0),
(143, 'zvspw', 'zwxvf', '52/17/3194', 'zvspw@yndex.ua', 55374.62109, 1),
(144, 'dpsgy', 'pxzdk', '93/85/3559', 'dpsgy@yndex.ua', 19506.15430, 0),
(145, 'lwdsv', 'jcvxp', '61/49/4782', 'lwdsv@yndex.ua', -62724.98828, 0),
(146, 'xjzzp', 'bwrts', '68/54/2458', 'xjzzp@yndex.ua', 81292.82031, 0),
(147, 'jymrz', 'jybwd', '80/58/7657', 'jymrz@yndex.ua', 80346.06250, 1),
(148, 'lydfm', 'cyxvs', '54/01/8737', 'lydfm@yndex.ua', -7677.19482, 0),
(149, 'tkztx', 'rltvp', '97/75/5055', 'tkztx@yndex.ua', -71193.78906, 1),
(150, 'vnfrl', 'tcvjc', '55/13/2559', 'vnfrl@yndex.ua', 17541.49023, 0),
(151, 'cvchn', 'nwyfp', '35/65/8814', 'cvchn@yndex.ua', 60642.20312, 1),
(152, 'dfbjk', 'txsrj', '51/44/1482', 'dfbjk@yndex.ua', -25280.68359, 1),
(153, 'bysty', 'rcwdl', '02/38/9292', 'bysty@yndex.ua', -40967.01953, 0),
(154, 'pnjgr', 'ltptr', '48/71/5378', 'pnjgr@yndex.ua', -90504.01562, 1),
(155, 'lxstd', 'gnjbt', '41/69/8918', 'lxstd@yndex.ua', 37415.48828, 0),
(156, 'jnnht', 'rwlkl', '17/48/3826', 'jnnht@yndex.ua', 16778.74219, 0),
(157, 'znxvc', 'yfszv', '39/69/8337', 'znxvc@yndex.ua', 13260.01660, 0),
(158, 'lyfyw', 'sbfpy', '52/41/4057', 'lyfyw@yndex.ua', 42503.91797, 1),
(159, 'nlhpk', 'nhwyf', '20/93/9269', 'nlhpk@yndex.ua', 4978.02637, 0),
(160, 'dptfp', 'xzhrc', '64/15/7371', 'dptfp@yndex.ua', -82254.79688, 1),
(161, 'skfny', 'pjlzg', '01/71/4881', 'skfny@yndex.ua', 92512.07031, 1),
(162, 'lwjxs', 'sngnd', '08/55/2710', 'lwjxs@yndex.ua', -85651.32812, 1),
(163, 'yncyx', 'nrzpb', '15/69/4902', 'yncyx@yndex.ua', -13452.25000, 1),
(164, 'smvps', 'sxknz', '15/97/5961', 'smvps@yndex.ua', -66069.86719, 1),
(165, 'wrgrr', 'wssvk', '49/87/1898', 'wrgrr@yndex.ua', -29848.23633, 0),
(166, 'vjwsv', 'ykhrj', '39/37/0978', 'vjwsv@yndex.ua', -62290.55078, 0),
(167, 'hhfkh', 'xgmnl', '27/01/6359', 'hhfkh@yndex.ua', 66260.28906, 1),
(168, 'cjwfn', 'rswrf', '91/07/1128', 'cjwfn@yndex.ua', -80417.46875, 1),
(169, 'zjsdv', 'twbzy', '67/30/1660', 'zjsdv@yndex.ua', -27670.91602, 1),
(170, 'prkyg', 'ssnnf', '57/97/1664', 'prkyg@yndex.ua', -86432.75000, 1),
(171, 'hjtdg', 'gskmm', '90/49/6632', 'hjtdg@yndex.ua', -7545.37305, 0),
(172, 'pyzht', 'lzfsg', '12/68/3003', 'pyzht@yndex.ua', 75126.65625, 1),
(173, 'ymbrb', 'cvjrj', '95/96/6394', 'ymbrb@yndex.ua', -79953.53906, 1),
(174, 'nvztd', 'vvwnd', '40/53/7343', 'nvztd@yndex.ua', -21684.38672, 1),
(175, 'djbns', 'yxwtm', '42/08/8434', 'djbns@yndex.ua', -57398.64062, 1),
(176, 'wtfwt', 'trnxw', '69/13/5019', 'wtfwt@yndex.ua', 98298.64062, 1),
(177, 'kpjyz', 'hrktp', '56/79/6796', 'kpjyz@yndex.ua', -71833.08594, 0),
(178, 'cjwgm', 'cyrsy', '85/07/7305', 'cjwgm@yndex.ua', -52030.67969, 1),
(179, 'pfxjb', 'vjdbl', '00/24/4261', 'pfxjb@yndex.ua', -72816.46875, 1),
(180, 'bxkwl', 'wkvxs', '09/20/5871', 'bxkwl@yndex.ua', -24325.96289, 1),
(181, 'btrcw', 'xrtyg', '75/46/3465', 'btrcw@yndex.ua', 40743.16406, 1),
(182, 'xjzgx', 'tzxnp', '39/31/7721', 'xjzgx@yndex.ua', 69156.36719, 1),
(183, 'rrndd', 'svwwk', '54/50/7081', 'rrndd@yndex.ua', 25181.89062, 1),
(184, 'xzdxk', 'wyclx', '65/23/5503', 'xzdxk@yndex.ua', 97739.64844, 0),
(185, 'pzmtv', 'rlbyl', '96/39/8554', 'pzmtv@yndex.ua', -8125.92334, 1),
(186, 'pxmlw', 'krhrd', '15/55/8632', 'pxmlw@yndex.ua', -73066.78906, 0),
(187, 'kvplc', 'hwbfx', '15/08/0937', 'kvplc@yndex.ua', 29325.25000, 1),
(188, 'ltcsv', 'yjnnc', '60/33/9546', 'ltcsv@yndex.ua', 18653.13867, 0),
(189, 'fbdzy', 'ndxjh', '41/60/4565', 'fbdzy@yndex.ua', 78093.97656, 0),
(190, 'krnxn', 'fzwft', '46/14/4440', 'krnxn@yndex.ua', -97282.85156, 1),
(191, 'ygfyp', 'prwtp', '07/21/6211', 'ygfyp@yndex.ua', -96770.87500, 0),
(192, 'wtjws', 'fhvlx', '35/84/8993', 'wtjws@yndex.ua', 20299.52734, 1),
(193, 'xbdnl', 'wkxsk', '42/62/4431', 'xbdnl@yndex.ua', -82769.14062, 1),
(194, 'wfstp', 'tfthn', '64/10/7209', 'wfstp@yndex.ua', 63756.19141, 1),
(195, 'ztztf', 'jvxrd', '61/10/6176', 'ztztf@yndex.ua', -78639.88281, 1),
(196, 'sdnyv', 'vxyry', '04/97/5007', 'sdnyv@yndex.ua', 46909.25781, 0),
(197, 'xmpyj', 'nwgty', '12/57/1773', 'xmpyj@yndex.ua', -63585.96094, 0),
(198, 'nrrpr', 'rvdbr', '82/84/9410', 'nrrpr@yndex.ua', 15890.84863, 1),
(199, 'nvnzp', 'rxvyr', '00/19/4024', 'nvnzp@yndex.ua', -89255.50000, 0),
(200, 'fmwcs', 'vscwk', '89/96/2189', 'fmwcs@yndex.ua', -99986.46094, 0),
(201, 'grdvw', 'kbbbm', '84/68/6436', 'grdvw@yndex.ua', -24753.55273, 1),
(202, 'ffldv', 'nzccs', '32/60/3227', 'ffldv@yndex.ua', -53938.12109, 1),
(203, 'jnmww', 'npgxv', '68/31/2089', 'jnmww@yndex.ua', 30740.04492, 0),
(204, 'xzjmz', 'xlkrw', '02/92/3463', 'xzjmz@yndex.ua', -9373.44727, 1),
(205, 'cnyvb', 'ysxss', '80/18/2010', 'cnyvb@yndex.ua', 6427.23242, 1),
(206, 'xyvld', 'pxhbh', '36/50/1831', 'xyvld@yndex.ua', 12182.25684, 0),
(207, 'mrbvd', 'tpgzp', '55/27/2491', 'mrbvd@yndex.ua', -74536.85156, 0),
(208, 'ztstw', 'ddzrk', '96/48/9171', 'ztstw@yndex.ua', 92682.35156, 0),
(209, 'dkppb', 'wwkxr', '22/38/2559', 'dkppb@yndex.ua', -22099.24219, 1),
(210, 'tygdk', 'jdjbp', '28/06/6586', 'tygdk@yndex.ua', 13775.56543, 0),
(211, 'nsspb', 'wxnxt', '05/80/7475', 'nsspb@yndex.ua', -13746.03027, 1),
(212, 'bjyyw', 'snlbs', '83/48/3626', 'bjyyw@yndex.ua', 97966.58594, 1),
(213, 'xgtfn', 'fftfn', '44/42/8475', 'xgtfn@yndex.ua', 16701.79297, 0),
(214, 'kylxp', 'mhhts', '19/22/0593', 'kylxp@yndex.ua', 99038.17969, 0),
(215, 'sjswt', 'ydsvx', '41/52/9342', 'sjswt@yndex.ua', 71613.92969, 1),
(216, 'syhgs', 'fdmlw', '86/42/8059', 'syhgs@yndex.ua', 29417.19336, 1),
(217, 'nglhp', 'pjzvy', '66/82/2701', 'nglhp@yndex.ua', 88775.02344, 0),
(218, 'zlptl', 'pbxss', '32/48/6196', 'zlptl@yndex.ua', 63185.40625, 0),
(219, 'zgcrv', 'gnjtp', '94/57/2425', 'zgcrv@yndex.ua', -99548.77344, 0),
(220, 'cfhhx', 'gsrxb', '37/44/6684', 'cfhhx@yndex.ua', 20578.59570, 0),
(221, 'tzynh', 'gxvtm', '03/50/8959', 'tzynh@yndex.ua', -72335.44531, 0),
(222, 'prsyy', 'xzsph', '10/99/6606', 'prsyy@yndex.ua', -66467.60156, 0),
(223, 'rynpj', 'hsrxb', '87/07/6966', 'rynpj@yndex.ua', -80685.75781, 1),
(224, 'wrfds', 'zsppv', '40/87/9733', 'wrfds@yndex.ua', -91460.90625, 1),
(225, 'nfgnx', 'gzvtw', '96/99/7062', 'nfgnx@yndex.ua', 1703.18982, 0),
(226, 'xsymw', 'xhhmp', '65/86/3157', 'xsymw@yndex.ua', -2178.86401, 0),
(227, 'hpdkp', 'grdjv', '34/43/6058', 'hpdkp@yndex.ua', -87246.23438, 0),
(228, 'bmmlp', 'bxydw', '55/92/0538', 'bmmlp@yndex.ua', 87217.65625, 0),
(229, 'pxbkx', 'sgdjp', '68/31/3461', 'pxbkx@yndex.ua', 7211.37695, 0),
(230, 'lrmpg', 'tmxcd', '39/53/9060', 'lrmpg@yndex.ua', 12550.43359, 0),
(231, 'yxbcb', 'trngn', '75/89/3153', 'yxbcb@yndex.ua', 2454.31592, 1),
(232, 'kwxwj', 'nhwft', '77/83/2303', 'kwxwj@yndex.ua', 8432.77930, 1),
(233, 'ntztm', 'tjktw', '22/89/7450', 'ntztm@yndex.ua', 81081.43750, 0),
(234, 'ydxjt', 'dvczd', '26/20/7569', 'ydxjt@yndex.ua', 20835.62305, 0),
(235, 'wwkxk', 'xsltk', '24/57/0354', 'wwkxk@yndex.ua', -87741.33594, 1),
(236, 'yvyzz', 'ndjwd', '47/81/7389', 'yvyzz@yndex.ua', -89075.67188, 0),
(237, 'nxcgh', 'zvszv', '10/85/3182', 'nxcgh@yndex.ua', -88537.58594, 1),
(238, 'mwhxl', 'phzvg', '77/12/0875', 'mwhxl@yndex.ua', 58226.76953, 0),
(239, 'nsgwh', 'vzlyl', '03/80/0814', 'nsgwh@yndex.ua', 36129.50781, 0),
(240, 'xzkls', 'vyrsf', '88/29/8788', 'xzkls@yndex.ua', 40531.40625, 1),
(241, 'dxclk', 'rwsvz', '54/43/2968', 'dxclk@yndex.ua', -29700.96484, 1),
(242, 'swxhn', 'wptrz', '05/50/9212', 'swxhn@yndex.ua', -29065.99414, 0),
(243, 'slvch', 'pdszv', '55/90/4134', 'slvch@yndex.ua', 90031.26562, 0),
(244, 'vcgjb', 'vkkyy', '12/20/6825', 'vcgjb@yndex.ua', -15052.56738, 1),
(245, 'zzcbl', 'szlfc', '67/03/7931', 'zzcbl@yndex.ua', 26104.88672, 1),
(246, 'ststp', 'ywldn', '33/78/8921', 'ststp@yndex.ua', 74465.42188, 1),
(247, 'ljcvp', 'lhvlr', '83/00/6248', 'ljcvp@yndex.ua', -72689.53906, 1),
(248, 'hrsxs', 'hrpdc', '52/17/5040', 'hrsxs@yndex.ua', 16740.18359, 1),
(249, 'gsrrp', 'wzsxs', '72/70/1403', 'gsrrp@yndex.ua', -23870.67383, 1),
(250, 'ptxwt', 'nfgzn', '03/86/8216', 'ptxwt@yndex.ua', -17768.68750, 1),
(251, 'xywnt', 'lzyzp', '38/41/8578', 'xywnt@yndex.ua', 14227.83496, 0),
(252, 'mwvch', 'vtzyg', '40/01/8377', 'mwvch@yndex.ua', -76057.50781, 0),
(253, 'mfzjy', 'skzym', '10/95/7708', 'mfzjy@yndex.ua', -32122.46680, 0),
(254, 'nlptr', 'vgtsc', '28/29/2318', 'nlptr@yndex.ua', 70288.78906, 1),
(255, 'dwdzx', 'tmdgg', '13/47/2156', 'dwdzx@yndex.ua', -20056.29102, 0),
(256, 'phgsx', 'zxrmm', '09/45/5118', 'phgsx@yndex.ua', 28087.83594, 0),
(257, 'xcdvp', 'yjybn', '95/81/5157', 'xcdvp@yndex.ua', 85292.57031, 0),
(258, 'sxynk', 'gcpmw', '20/18/4660', 'sxynk@yndex.ua', -85145.96875, 1),
(259, 'wtpgf', 'kvrvt', '61/21/1595', 'wtpgf@yndex.ua', -41309.13672, 1),
(260, 'dpssf', 'nrtkm', '52/42/1515', 'dpssf@yndex.ua', -72171.40625, 1),
(261, 'pzvrf', 'pygtm', '59/50/0794', 'pzvrf@yndex.ua', 95491.23438, 1),
(262, 'cjcjp', 'cklxx', '31/76/5166', 'cjcjp@yndex.ua', -65764.46875, 0),
(263, 'ctjlh', 'dpzws', '94/14/8727', 'ctjlh@yndex.ua', 80208.68750, 1),
(264, 'wkrwt', 'zdwvw', '20/24/7071', 'wkrwt@yndex.ua', 63442.53516, 1),
(265, 'rcnlx', 'jjytz', '15/55/4830', 'rcnlx@yndex.ua', 94954.75781, 1),
(266, 'lhpvy', 'lvjrx', '65/36/7356', 'lhpvy@yndex.ua', 42186.67969, 0),
(267, 'plmft', 'zzjkt', '35/29/4185', 'plmft@yndex.ua', -70187.16406, 0),
(268, 'tjwfg', 'zbpht', '37/25/7749', 'tjwfg@yndex.ua', 13223.36328, 1),
(269, 'synkt', 'wsgcc', '95/98/9708', 'synkt@yndex.ua', -15001.28711, 1),
(270, 'wzcnm', 'kxyhl', '63/29/4354', 'wzcnm@yndex.ua', -40724.64062, 1),
(271, 'kzfpf', 'prwfz', '17/98/3871', 'kzfpf@yndex.ua', 53367.80859, 1),
(272, 'zmwjv', 'fmczg', '14/55/2831', 'zmwjv@yndex.ua', 44925.10156, 1),
(273, 'kfxcm', 'dnsyb', '31/02/8731', 'kfxcm@yndex.ua', -70067.02344, 1),
(274, 'kygfk', 'phxzr', '38/50/7393', 'kygfk@yndex.ua', -80700.78906, 1),
(275, 'rzpjh', 'rrbhc', '51/45/7249', 'rzpjh@yndex.ua', 21960.83789, 1),
(276, 'tnvmm', 'snnpl', '85/48/4679', 'tnvmm@yndex.ua', 88583.18750, 0),
(277, 'wzsdr', 'lcyzw', '36/00/2931', 'wzsdr@yndex.ua', 92062.41406, 0),
(278, 'sjdkh', 'sdjjs', '13/69/0894', 'sjdkh@yndex.ua', -94357.24219, 0),
(279, 'lptmr', 'frrkf', '80/02/8599', 'lptmr@yndex.ua', -27211.67969, 1),
(280, 'ppwgz', 'rwzrn', '82/26/8496', 'ppwgz@yndex.ua', 59538.62500, 1),
(281, 'fxpfj', 'wxrts', '42/23/6650', 'fxpfj@yndex.ua', 4421.67188, 1),
(282, 'zvlfw', 'gpwzd', '20/79/5880', 'zvlfw@yndex.ua', 7897.40918, 1),
(283, 'mxjtl', 'yfgmw', '27/90/9076', 'mxjtl@yndex.ua', 84440.34375, 1),
(284, 'ftnfk', 'pbphf', '17/22/4405', 'ftnfk@yndex.ua', 88972.96875, 0),
(285, 'brhkv', 'xdlks', '73/85/0192', 'brhkv@yndex.ua', 37474.93359, 1),
(286, 'hlvvb', 'ltppr', '81/04/4684', 'hlvvb@yndex.ua', -49553.44141, 1),
(287, 'wnzrs', 'lnyws', '94/33/3991', 'wnzrs@yndex.ua', -14961.27930, 1),
(288, 'pdpzw', 'hvzsx', '13/48/7947', 'pdpzw@yndex.ua', -99158.21875, 0),
(289, 'ntvhb', 'wywpz', '50/17/8798', 'ntvhb@yndex.ua', -4225.51758, 0),
(290, 'tkthr', 'xfrfx', '30/95/0519', 'tkthr@yndex.ua', 13658.53418, 0),
(291, 'drvkp', 'jsxmk', '34/53/2476', 'drvkp@yndex.ua', -40816.58594, 1),
(292, 'nlptz', 'vrtyw', '13/47/7137', 'nlptz@yndex.ua', -23489.70312, 1),
(293, 'hkvpt', 'txckr', '05/33/3572', 'hkvpt@yndex.ua', -39127.63281, 1),
(294, 'zvyws', 'fpfzx', '88/45/5816', 'zvyws@yndex.ua', 63323.04297, 1),
(295, 'mwjnt', 'gjtdc', '59/83/7856', 'mwjnt@yndex.ua', 3517.50659, 0),
(296, 'ntfcx', 'sgprs', '28/11/7295', 'ntfcx@yndex.ua', -73907.75781, 1),
(297, 'ysxkb', 'trvlj', '53/75/6855', 'ysxkb@yndex.ua', 52371.53516, 0),
(298, 'ftnnx', 'zpjnw', '69/06/2698', 'ftnnx@yndex.ua', -10092.07910, 0),
(299, 'chxtv', 'jpbvj', '92/45/3351', 'chxtv@yndex.ua', -27188.45312, 1),
(300, 'vdlrt', 'ftnmb', '72/03/1664', 'vdlrt@yndex.ua', 92925.50781, 0),
(301, 'ptfvz', 'yvbks', '34/65/0970', 'ptfvz@yndex.ua', 97121.52344, 0),
(302, 'kxrzh', 'ytrnw', '94/82/3398', 'kxrzh@yndex.ua', -86777.07031, 0),
(303, 'mnyrj', 'sczsw', '65/52/2394', 'mnyrj@yndex.ua', 15959.56738, 1),
(304, 'xtnbr', 'wvvnz', '06/36/0448', 'xtnbr@yndex.ua', -92874.25000, 1),
(305, 'ktxzh', 'lmmkw', '52/16/8049', 'ktxzh@yndex.ua', -77778.75000, 1),
(306, 'vvxwb', 'ctjpb', '16/14/1028', 'vvxwb@yndex.ua', 96990.12500, 1),
(307, 'htdwb', 'lxskd', '01/55/5908', 'htdwb@yndex.ua', -7245.06299, 0),
(308, 'mhcks', 'vllys', '14/20/8988', 'mhcks@yndex.ua', 96679.25000, 0),
(309, 'ltnmn', 'zxfzx', '59/51/2496', 'ltnmn@yndex.ua', 13565.60938, 1),
(310, 'zsxtv', 'dsmvn', '37/15/8111', 'zsxtv@yndex.ua', 70784.59375, 1),
(311, 'gnrmm', 'fttny', '22/59/5406', 'gnrmm@yndex.ua', 28298.26367, 0),
(312, 'svfwz', 'sjpwh', '58/91/5497', 'svfwz@yndex.ua', 46760.72656, 1),
(313, 'xxvnk', 'nnkwl', '57/21/5353', 'xxvnk@yndex.ua', -49526.23438, 0),
(314, 'ccvvd', 'ftghm', '91/17/7890', 'ccvvd@yndex.ua', -51471.68750, 0),
(315, 'jppsw', 'rdvhv', '51/84/6129', 'jppsw@yndex.ua', -9119.30957, 1),
(316, 'plbzh', 'ddlww', '20/88/6198', 'plbzh@yndex.ua', -35351.98047, 0),
(317, 'whhfk', 'krpcr', '70/20/9031', 'whhfk@yndex.ua', -97261.95312, 1),
(318, 'gtfrt', 'wydsm', '90/44/1396', 'gtfrt@yndex.ua', 53374.52344, 0),
(319, 'hybbg', 'wvzsx', '20/74/9181', 'hybbg@yndex.ua', 54322.70312, 0),
(320, 'kvsbp', 'hybpb', '73/07/3232', 'kvsbp@yndex.ua', -25875.14648, 1),
(321, 'yrspt', 'nhzjr', '59/09/6784', 'yrspt@yndex.ua', -78714.90625, 0),
(322, 'nrtwd', 'vnydr', '85/16/1922', 'nrtwd@yndex.ua', -7625.65088, 1),
(323, 'svfgf', 'zjyzw', '51/31/7813', 'svfgf@yndex.ua', 4978.48096, 0),
(324, 'rnhzb', 'gxnfz', '19/87/7113', 'rnhzb@yndex.ua', 18252.54492, 1),
(325, 'vzmwb', 'dpttn', '97/62/0704', 'vzmwb@yndex.ua', -27208.49414, 0),
(326, 'rzbpc', 'bnsvr', '80/68/0911', 'rzbpc@yndex.ua', -25538.07227, 1),
(327, 'rsrwz', 'rjfsg', '78/18/2439', 'rsrwz@yndex.ua', 81362.88281, 0),
(328, 'zhybh', 'rccgv', '61/63/2963', 'zhybh@yndex.ua', -38907.52344, 1),
(329, 'mnypl', 'jrkym', '46/51/3234', 'mnypl@yndex.ua', 65154.86328, 1),
(330, 'sygzc', 'jcbfn', '08/12/1485', 'sygzc@yndex.ua', -32343.02539, 0),
(331, 'hjznc', 'xlzys', '03/17/7171', 'hjznc@yndex.ua', -10624.29590, 0),
(332, 'cdhwm', 'csvlr', '62/47/0025', 'cdhwm@yndex.ua', -26172.28906, 0),
(333, 'twpzz', 'tfpzn', '19/78/6596', 'twpzz@yndex.ua', -25695.22070, 0),
(334, 'tblsj', 'tjpnn', '80/99/7877', 'tblsj@yndex.ua', 78365.93750, 1),
(335, 'vwxxv', 'ztlyx', '78/70/5351', 'vwxxv@yndex.ua', 21197.77930, 0),
(336, 'nvzys', 'gvgwn', '33/61/4500', 'nvzys@yndex.ua', -96168.96875, 1),
(337, 'dzrpk', 'mtmnx', '39/76/4803', 'dzrpk@yndex.ua', -19034.90820, 0),
(338, 'zygvy', 'klzys', '49/13/9209', 'zygvy@yndex.ua', -56635.01172, 0),
(339, 'ggycb', 'ylpgl', '06/11/7112', 'ggycb@yndex.ua', -39085.73438, 0),
(340, 'ytrnc', 'sncpt', '98/48/6732', 'ytrnc@yndex.ua', -69210.89062, 1),
(341, 'htdpg', 'tysgr', '28/67/7406', 'htdpg@yndex.ua', 79424.23438, 0),
(342, 'bvwxn', 'xzxzd', '17/06/1094', 'bvwxn@yndex.ua', -675.39203, 0),
(343, 'thhfp', 'yccml', '19/51/7857', 'thhfp@yndex.ua', 74719.31250, 1),
(344, 'ztwfh', 'bnzjv', '78/10/8833', 'ztwfh@yndex.ua', 79548.26562, 0),
(345, 'wcgcd', 'nywsl', '28/64/9500', 'wcgcd@yndex.ua', 29176.33203, 0),
(346, 'zswrt', 'kdwvn', '08/00/4464', 'zswrt@yndex.ua', 51609.30859, 1),
(347, 'ynpwn', 'djdhn', '49/23/7617', 'ynpwn@yndex.ua', -79432.92188, 0),
(348, 'gwhpk', 'zlbsv', '97/90/3236', 'gwhpk@yndex.ua', 47376.33594, 0),
(349, 'ktcsh', 'pknbx', '32/10/2435', 'ktcsh@yndex.ua', 91503.42188, 1),
(350, 'ltjsd', 'byzpb', '63/28/2652', 'ltjsd@yndex.ua', -22649.27930, 0),
(351, 'zrxsz', 'nwvjj', '00/50/0826', 'zrxsz@yndex.ua', 48247.68359, 1),
(352, 'xsmjn', 'cwwvm', '87/00/4162', 'xsmjn@yndex.ua', 96946.52344, 1),
(353, 'nvvpf', 'lwxxc', '03/36/9315', 'nvvpf@yndex.ua', -97758.84375, 1),
(354, 'cdzdy', 'kpzks', '96/93/7970', 'cdzdy@yndex.ua', 35138.21094, 0),
(355, 'zfxwp', 'xffsz', '34/74/7795', 'zfxwp@yndex.ua', -12576.83887, 0),
(356, 'zxfzw', 'mxpsk', '60/82/3645', 'zxfzw@yndex.ua', 59561.94141, 1),
(357, 'zxmvp', 'hzpkf', '43/46/3582', 'zxmvp@yndex.ua', 60933.80859, 0),
(358, 'nmxpf', 'dfmjr', '38/37/1561', 'nmxpf@yndex.ua', -23297.66016, 0),
(359, 'bwsyl', 'tbyzc', '43/88/2568', 'bwsyl@yndex.ua', 15561.78711, 1),
(360, 'fpyvy', 'jswpr', '69/50/2197', 'fpyvy@yndex.ua', 58463.83203, 0),
(361, 'wdhnp', 'sytdw', '84/71/4259', 'wdhnp@yndex.ua', -23571.64844, 0),
(362, 'lwdgn', 'xwbpm', '02/82/6737', 'lwdgn@yndex.ua', 9249.52539, 1),
(363, 'hfwcf', 'tzfjj', '69/33/6447', 'hfwcf@yndex.ua', 67525.57031, 1),
(364, 'dyyhz', 'hkgry', '07/26/5930', 'dyyhz@yndex.ua', -6874.42480, 1),
(365, 'srhkg', 'jhkvd', '49/45/7668', 'srhkg@yndex.ua', 7705.57422, 0),
(366, 'jyydr', 'vghvy', '20/41/6811', 'jyydr@yndex.ua', -14318.45117, 1),
(367, 'xxcyy', 'bdpxt', '26/34/3874', 'xxcyy@yndex.ua', -93780.42969, 0),
(368, 'lbsrn', 'xcyxw', '25/42/3017', 'lbsrn@yndex.ua', 45007.01562, 1),
(369, 'dnrmt', 'vstlg', '61/80/4111', 'dnrmt@yndex.ua', 15746.62207, 0),
(370, 'lvxyc', 'kyymc', '26/67/3935', 'lvxyc@yndex.ua', 62925.35156, 0),
(371, 'knzph', 'gsfhz', '56/11/5772', 'knzph@yndex.ua', -25460.86133, 0),
(372, 'smyyh', 'hlzmz', '26/11/9931', 'smyyh@yndex.ua', 87206.95312, 0),
(373, 'kmmld', 'gtygs', '41/18/7952', 'kmmld@yndex.ua', 90827.31250, 1),
(374, 'hcpgm', 'jnzkb', '32/52/9411', 'hcpgm@yndex.ua', 85102.65625, 1),
(375, 'nhfrl', 'ysfdt', '51/08/4653', 'nhfrl@yndex.ua', -84796.90625, 0),
(376, 'pltvw', 'rbccm', '44/75/5834', 'pltvw@yndex.ua', -66771.25781, 0),
(377, 'mclls', 'vpnhf', '33/62/8202', 'mclls@yndex.ua', 65361.88672, 1),
(378, 'cmdgn', 'jvfpx', '79/48/7483', 'cmdgn@yndex.ua', -95283.68750, 0),
(379, 'wgwhm', 'jvscn', '73/27/4660', 'wgwhm@yndex.ua', 94101.97656, 0),
(380, 'szgyt', 'nnxgz', '10/56/5928', 'szgyt@yndex.ua', -3756.34961, 0),
(381, 'dldzx', 'bxstj', '49/55/1374', 'dldzx@yndex.ua', 41390.44531, 1),
(382, 'lngzv', 'lfcsw', '72/58/9363', 'lngzv@yndex.ua', 36470.46094, 0),
(383, 'lnzcn', 'zrwfn', '36/91/5116', 'lnzcn@yndex.ua', 77607.11719, 0),
(384, 'dhpjt', 'czysr', '46/68/0447', 'dhpjt@yndex.ua', -22563.45508, 1),
(385, 'ysswy', 'cfbsv', '02/18/7401', 'ysswy@yndex.ua', -72237.33594, 0),
(386, 'yxzry', 'hlhjy', '51/25/8383', 'yxzry@yndex.ua', 28005.33008, 1),
(387, 'njwtg', 'bjfdl', '52/52/2132', 'njwtg@yndex.ua', 66638.73438, 0),
(388, 'pzkhx', 'zrjyb', '76/33/4612', 'pzkhx@yndex.ua', 54324.79297, 0),
(389, 'mmgbx', 'dfstd', '34/74/0715', 'mmgbx@yndex.ua', 69114.75781, 1),
(390, 'gfzjn', 'mdzdk', '30/50/6656', 'gfzjn@yndex.ua', 76301.68750, 0),
(391, 'fsyhs', 'dnlng', '62/12/6142', 'fsyhs@yndex.ua', 83315.04688, 0),
(392, 'dftvw', 'jnwtt', '12/92/7865', 'dftvw@yndex.ua', 13473.50977, 1),
(393, 'xywgy', 'hlvpz', '77/47/1639', 'xywgy@yndex.ua', -36454.96875, 0),
(394, 'ybwft', 'gxhtg', '41/98/6524', 'ybwft@yndex.ua', 21501.58203, 0),
(395, 'ntzxm', 'jwdms', '71/05/0267', 'ntzxm@yndex.ua', -50061.21484, 0),
(396, 'yzvzt', 'swlpm', '07/60/4301', 'yzvzt@yndex.ua', 30021.10547, 1),
(397, 'wssng', 'ddyjz', '34/68/3374', 'wssng@yndex.ua', 34379.26562, 0),
(398, 'sctvs', 'nwvvd', '16/59/0300', 'sctvs@yndex.ua', 6916.32178, 1),
(399, 'sfcsw', 'wwzdv', '39/42/6741', 'sfcsw@yndex.ua', -928.63788, 1),
(400, 'nbfbr', 'hrjsk', '52/78/7170', 'nbfbr@yndex.ua', 48401.62109, 1),
(401, 'kwldv', 'wkvph', '37/49/9085', 'kwldv@yndex.ua', -67012.88281, 1),
(402, 'pkhwz', 'rrpwt', '59/66/1115', 'pkhwz@yndex.ua', 13660.24609, 1),
(403, 'jnwvj', 'vfcrv', '41/76/8986', 'jnwvj@yndex.ua', -56290.53125, 0),
(404, 'symnt', 'dndrz', '00/48/7785', 'symnt@yndex.ua', -50836.47266, 1),
(405, 'gzpnj', 'bhlzm', '10/14/2962', 'gzpnj@yndex.ua', 66885.06250, 0),
(406, 'wfnkg', 'cwxpd', '11/53/2284', 'wfnkg@yndex.ua', -5094.46484, 0),
(407, 'nnxwb', 'tnbct', '58/00/7014', 'nnxwb@yndex.ua', -30328.04102, 0),
(408, 'kkkfp', 'ygmbz', '64/94/8370', 'kkkfp@yndex.ua', 8559.79102, 1),
(409, 'yhkzy', 'vmmds', '94/15/3459', 'yhkzy@yndex.ua', 55911.98047, 1),
(410, 'lbgcd', 'bsvcz', '96/31/4058', 'lbgcd@yndex.ua', 95302.31250, 0),
(411, 'lswlf', 'hzbpt', '62/66/5268', 'lswlf@yndex.ua', 64324.49609, 1),
(412, 'jkmmx', 'jwmcy', '77/67/2066', 'jkmmx@yndex.ua', 5770.70801, 0),
(413, 'sxlnt', 'grrsp', '02/44/5778', 'sxlnt@yndex.ua', 56632.92188, 0),
(414, 'dnkbg', 'pfxbk', '35/43/0620', 'dnkbg@yndex.ua', 4746.11084, 0),
(415, 'rgwtw', 'sspvz', '17/87/6850', 'rgwtw@yndex.ua', 62523.19531, 0),
(416, 'rsyrt', 'klgwb', '51/61/2287', 'rsyrt@yndex.ua', 93734.82812, 1),
(417, 'nxwwk', 'nvyfg', '56/55/0942', 'nxwwk@yndex.ua', 91171.27344, 1),
(418, 'zxtys', 'ymwbz', '51/91/4231', 'zxtys@yndex.ua', -56528.99219, 0),
(419, 'wfmwp', 'yglwc', '24/85/2014', 'wfmwp@yndex.ua', -75245.17188, 0),
(420, 'ywhvt', 'grxmx', '28/38/9243', 'ywhvt@yndex.ua', 95733.09375, 1),
(421, 'sxszl', 'hrpkh', '80/58/2593', 'sxszl@yndex.ua', -2840.17578, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
