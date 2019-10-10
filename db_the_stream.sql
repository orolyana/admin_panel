-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2017 at 01:39 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_stream`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cid`, `category_name`, `category_image`) VALUES
(32, 'Entertainment', '3455-2017-04-13.png'),
(33, 'Sports', '2277-2017-04-13.png'),
(34, 'Education', '6094-2017-04-13.png'),
(35, 'Music', '7102-2017-04-13.png'),
(36, 'News', '2999-2017-04-20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_channel`
--

CREATE TABLE `tbl_channel` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `channel_name` varchar(255) NOT NULL,
  `channel_image` varchar(255) NOT NULL,
  `channel_url` varchar(255) NOT NULL,
  `channel_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_channel`
--

INSERT INTO `tbl_channel` (`id`, `category_id`, `channel_name`, `channel_image`, `channel_url`, `channel_description`) VALUES
(80, 32, 'RCTI', '7877-2017-04-20.jpg', 'http://live.metube.id/tv/channel3000004/index512.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(81, 32, 'SCTV', '1000-2017-04-20.jpg', 'https://livestream-hybrid.akamaized.net/live/smil:sctv.smil/chunklist_b846000.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(82, 32, 'Indosiar', '2805-2017-04-20.jpg', 'https://livestream-hybrid.akamaized.net/live/smil:indosiar.smil/chunklist_b846000.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(83, 32, 'Global TV', '9463-2017-04-20.jpg', 'http://live.metube.id/tv/channel2000041/index512.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(84, 32, 'ANTV', '4791-2017-04-20.jpg', 'https://livestream-hybrid.akamaized.net/live/smil:antv.smil/chunklist_b471000.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(85, 32, 'Metro TV', '0848-2017-04-20.jpg', 'http://edge.metrotvnews.com:1935/live-edge/smil:metro.smil/chunklist_w213916581_b500000_sleng.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(86, 32, 'MNCTV', '1446-2017-04-20.jpg', 'http://live.metube.id/tv/channel2000022/index512.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(87, 33, 'FOX Sports', '0517-2017-04-20.jpg', 'http://ball4fun.redirectme.net:1935/ballsod365-4/0x777_foxsport1_360p/chunklist_w1392383928.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(88, 36, 'TVRI', '3676-2017-04-20.jpg', 'http://ott.tvri.co.id/Content/HLS/Live/Channel(TVRINasional)/Stream(04)/index.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(89, 34, 'Rodja TV', '2972-2017-04-20.jpg', 'http://vids.rodja.tv:1935/live/rodja/chunklist_w1534883362.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n'),
(90, 36, 'Berita Satu', '3160-2017-04-20.jpg', 'http://edge.linknetott.swiftserve.com/live/BsNew/amlst:bsnew/chunklist_b2121000.m3u8', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Effluit igitur voluptas corporis et prima quaeque avolat saepiusque relinquit causam paenitendi quam recordandi. Duo Reges: constructio interrete. Illis videtur, qui illud non dubitant bonum dicere -; Expectoque quid ad id, quod quaerebam, respondeas.</p>\r\n\r\n<p>Quem ad modum quis ambulet, sedeat, qui ductus oris, qui vultus in quoque sit? Iam id ipsum absurdum, maximum malum neglegi. Cur post Tarentum ad Archytam? Si quicquam extra virtutem habeatur in bonis. Quid enim possumus hoc agere divinius? Aliter homines, aliter philosophos loqui putas oportere? Tu vero, inquam, ducas licet, si sequetur; Videsne quam sit magna dissensio? Erit enim mecum, si tecum erit. Theophrasti igitur, inquit, tibi liber ille placet de beata vita? Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</p>\r\n\r\n<p>Odium autem et invidiam facile vitabis. Bonum liberi: misera orbitas. Minime vero, inquit ille, consentit. Quae hic rei publicae vulnera inponebat, eadem ille sanabat.</p>\r\n\r\n<p>Ea possunt paria non esse. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Teneo, inquit, finem illi videri nihil dolere. Quid ergo attinet dicere: Nihil haberem, quod reprehenderem, si finitas cupiditates haberent? Inde igitur, inquit, ordiendum est.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_api_key`
--

CREATE TABLE `tbl_fcm_api_key` (
  `id` int(11) NOT NULL,
  `app_fcm_key` text NOT NULL,
  `api_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fcm_api_key`
--

INSERT INTO `tbl_fcm_api_key` (`id`, `app_fcm_key`, `api_key`) VALUES
(1, 'AAAAfnogzUM:APA91bGXfRmWMIp7vsofpqokkK2Hf-Rl_r-uoZsxwUKHQnS13weketm3NGFYLCuIQmP9i2C4G80lwQ2h7zzEQKGiEosTFnugxt64naeOjLoyzGYmHgMzuIXpEDDczkFNZPCPaOQe6uMB5K6BP0Qy9Q93eHs6UQZ5Dw', 'cda11uT8cBLzm6a1YvsiUWOEgrFowk95K2DM3tHAPRCX4ypGjN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_template`
--

CREATE TABLE `tbl_fcm_template` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fcm_template`
--

INSERT INTO `tbl_fcm_template` (`id`, `message`, `image`) VALUES
(21, 'Hello world!!', ''),
(22, 'This is The Stream App', '7391-2017-04-23.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm_token`
--

CREATE TABLE `tbl_fcm_token` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_role` enum('100','101','102') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `user_role`) VALUES
(1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'developer.solodroid@gmail.com', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_channel`
--
ALTER TABLE `tbl_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_api_key`
--
ALTER TABLE `tbl_fcm_api_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_template`
--
ALTER TABLE `tbl_fcm_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_channel`
--
ALTER TABLE `tbl_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `tbl_fcm_api_key`
--
ALTER TABLE `tbl_fcm_api_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_fcm_template`
--
ALTER TABLE `tbl_fcm_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_fcm_token`
--
ALTER TABLE `tbl_fcm_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
