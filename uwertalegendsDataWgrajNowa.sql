-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Lip 2024, 00:11
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `uwertalegends`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `accountchampions`
--

CREATE TABLE `accountchampions` (
  `id` int(11) NOT NULL,
  `AccountId` int(11) DEFAULT NULL,
  `ChampionId` int(11) DEFAULT NULL,
  `IsPurchased` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `accountchampions`
--

INSERT INTO `accountchampions` (`id`, `AccountId`, `ChampionId`, `IsPurchased`) VALUES
(5, 15, 53, b'1'),
(6, 15, 54, b'1'),
(7, 15, 56, b'0'),
(8, 15, 55, b'1'),
(9, 14, 53, b'1'),
(10, 14, 56, b'0'),
(11, 14, 55, b'0'),
(12, 16, 55, b'0'),
(13, 17, 55, b'0'),
(14, 14, 54, b'1'),
(15, 33, 54, b'0'),
(16, 33, 53, b'0'),
(17, 33, 55, b'0'),
(18, 33, 56, b'0'),
(19, 34, 54, b'0'),
(20, 34, 53, b'0'),
(21, 34, 55, b'0'),
(22, 34, 56, b'0'),
(23, 35, 54, b'0'),
(24, 35, 53, b'0'),
(25, 35, 55, b'0'),
(26, 35, 56, b'0'),
(27, 36, 54, b'0'),
(28, 36, 53, b'0'),
(29, 36, 55, b'0'),
(30, 36, 56, b'0'),
(32, 15, 0, b'0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` char(40) NOT NULL,
  `secret` char(16) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `premium_ends_at` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `creation` datetime NOT NULL DEFAULT current_timestamp(),
  `account_name` varchar(32) NOT NULL,
  `pointsOneVsOne` int(11) DEFAULT NULL,
  `chestKeys` int(11) DEFAULT NULL,
  `uwertaPoints` int(11) DEFAULT NULL,
  `uwertaMoney` int(11) DEFAULT NULL,
  `PointsOneVsOneBot` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premium_ends_at`, `email`, `creation`, `account_name`, `pointsOneVsOne`, `chestKeys`, `uwertaPoints`, `uwertaMoney`, `PointsOneVsOneBot`) VALUES
(14, '3211065', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 6, 1732587095, 'pacan123@wp.pl', '2023-09-28 14:49:28', 'Artielele', 11, 88, 1166, 1000, 0),
(15, '6151277', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 6, 1761098137, 'Opanowskiartur@gmail.com', '2023-10-23 16:32:12', 'Artie', 190, 82, 5118, 1000, 200),
(16, '32110', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 1715892458, 'pacan1234@wp.pl', '2023-12-07 01:30:43', 'Artur', 600, 0, 0, 0, 0),
(17, '615127', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 1715892458, 'pacan1234@wp.pl', '2023-12-07 02:11:02', 'Tenant', 420, 0, 0, 0, 0),
(19, 'asdasfsa', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 1715892458, 'pacan123@wp.pl', '2024-03-01 12:12:16', 'Arturro', 0, 0, 0, 0, 0),
(23, '6253442153', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 1715892458, 'pacan123213@wp.pl', '2024-03-01 12:22:29', 'Artie2', 1000, 0, 0, 0, 0),
(24, '6151272132131', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 1715892458, 'pacan12sadasd3@wp.pl', '2024-03-01 12:24:24', 'wqewqdsaasda', 1100, 0, 0, 0, 0),
(26, '615127777', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 1715892458, 'pacan123213@wp.pl', '2024-03-01 12:27:30', 'sadsafaffaasfda', 0, 0, 0, 0, 0),
(33, '2132131231231', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 0, 'opanowskiasadsadartur@gmail.com', '2024-05-13 20:34:12', 'sadsadsadasda', 0, 0, 0, 0, 0),
(34, '6151272asd', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 0, 'opanowsksadasdiartur@gmail.com', '2024-05-13 20:39:45', 'Artielelelelelelele', 0, 0, 0, 0, 0),
(36, '123456', '2fbe403f9e33b9315801d5e2295119791739c3de', NULL, 1, 0, 'PlayerAccountName@gmail.com', '2024-05-14 12:34:15', 'Player Account Name', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `accountuwertaitems`
--

CREATE TABLE `accountuwertaitems` (
  `id` int(11) NOT NULL,
  `AccountId` int(11) DEFAULT NULL,
  `ItemType` int(11) DEFAULT NULL,
  `ItemId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `accountuwertaitems`
--

INSERT INTO `accountuwertaitems` (`id`, `AccountId`, `ItemType`, `ItemId`) VALUES
(45, 34, 0, 1),
(46, 35, 0, 1),
(47, 36, 0, 1),
(68, 15, 1, 3),
(93, 14, 1, 4),
(98, 14, 1, 3),
(116, 14, 2, 1),
(118, 14, 1, 2),
(119, 14, 1, 4),
(121, 14, 2, 1),
(122, 14, 2, 2),
(123, 14, 2, 2),
(124, 14, 2, 3),
(125, 14, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_bans`
--

CREATE TABLE `account_bans` (
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_ban_history`
--

CREATE TABLE `account_ban_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_match_history`
--

CREATE TABLE `account_match_history` (
  `player_kills` int(11) NOT NULL,
  `monster_kills` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `account_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `champion_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_storage`
--

CREATE TABLE `account_storage` (
  `account_id` int(11) NOT NULL,
  `key` int(10) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_viplist`
--

CREATE TABLE `account_viplist` (
  `account_id` int(11) NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int(11) NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `notify` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `AccountId` int(11) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `AccountId`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('1b9f87f3-efbc-41f0-beac-fa49b42a98cf', 14, 'Artielele', 'ARTIELELE', 'pacan123@wp.pl', 'PACAN123@WP.PL', 1, 'AQAAAAIAAYagAAAAEMQB3Iun3uhmxtiwNs08CX/SsaNJ5t6o1dCUSj1UqDEdEn0X/1YSCJNuWroyr8Jd5Q==', '6W2MQAJ5Y3NEP2LDFEQPJ3LDT2UU2PJU', '21389349-b15e-41ad-a846-095d2ef458d9', NULL, 0, 0, NULL, 1, 0),
('24a4a686-ba76-4294-b8ca-051cc44f2d92', 24, 'wqewqdsaasda', 'WQEWQDSAASDA', 'pacan12sadasd3@wp.pl', 'PACAN12SADASD3@WP.PL', 0, 'AQAAAAEAACcQAAAAECW9Yg9REHCjO3YyLRWeW+MSEY7UiXrkC77dqzCXRd0cgdD8jdUpwLc8PG3OJshgVw==', 'W6IKEPKGW3KTKYVPFPSS2PM3H2D2K2WB', 'a6066477-d013-4a80-acef-d2e1a2587bdb', NULL, 0, 0, NULL, 1, 0),
('465e2072-c076-4da1-a7a0-9e1fda7ac55d', 33, 'sadsadsadasda', 'SADSADSADASDA', 'opanowskiasadsadartur@gmail.com', 'OPANOWSKIASADSADARTUR@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEO2t+1QOpMFY8kKFXK2dPTRkYqFd42+Dnv4tVMENfZVnFFKGZHm2noBmCR+WLmTo7Q==', 'HKBTI6NH25FUKLV7NZOL65KOSSZQR2SY', 'e5830c46-387c-4e43-b8ef-6767926bd746', NULL, 0, 0, NULL, 1, 0),
('4dd55dae-0573-43a1-9812-ed51a8517e90', 26, 'sadsafaffaasfda', 'SADSAFAFFAASFDA', 'pacan123213@wp.pl', 'PACAN123213@WP.PL', 0, 'AQAAAAEAACcQAAAAEM/y/J82VPSPBvIQCrqZwHz+SnSZOPWUhlK/uLhZy7MPqSSLaFqFAFMjT1VmAMuu+Q==', 'HQVT2FNPUXRCWZLFMETG6OBZHUUFNEJB', '41406559-c875-48b1-9869-2cf62a04527b', NULL, 0, 0, NULL, 1, 0),
('76022dcc-3e4a-4037-96a9-442c61c00fb3', 23, 'sadas', 'SADAS', 'pacan123213@wp.pl', 'PACAN123213@WP.PL', 0, 'AQAAAAEAACcQAAAAEGvBujsZldBKHzipg+ThJ9pUf7C3dgMuv7DJb5rg38apURvG8SIOtsxwp4iFs8AxLA==', 'VW3RNXUVN2BE63QEOEVX3JRADRQEGX27', '6d43caab-02c3-4ddd-95c9-60342a269af5', NULL, 0, 0, NULL, 1, 0),
('84a51b64-9793-41e9-b52b-42dd3a59e37b', 17, 'arturro', 'ARTURRO', 'pacan1234@wp.pl', 'PACAN1234@WP.PL', 0, 'AQAAAAIAAYagAAAAEIRurvldvbdVcvVjE97XUSE6D7WvPyz5vpZGdkNVUYk844g9BlnW2V+HL1As/PW/Uw==', 'UQQSAPFAJHBZYRVO3QXNXMLK5GPYVEAG', '1b663449-9282-48fa-b80a-322513c9bda8', NULL, 0, 0, NULL, 1, 0),
('8e7517b3-8248-4365-a452-a8f80dc21469', 19, '615127', '615127', 'pacan123@wp.pl', 'PACAN123@WP.PL', 0, 'AQAAAAEAACcQAAAAEB3B5PR0R51jLj3dyTT9ez1XBGen1b/gSPRR7bNVO6VwlJRSfr55iCzvdMSs/TPKYg==', 'ATOPLSFH7MLDSHQSZV2YPEKA6VVGQOWH', 'fa8112ca-54da-4b8a-9b57-3032c5213670', NULL, 0, 0, NULL, 1, 0),
('9ba001cb-5597-486a-b0ff-ec0fb54d5f1b', 36, 'Player Account Name', 'PLAYER ACCOUNT NAME', 'PlayerAccountName@gmail.com', 'PLAYERACCOUNTNAME@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEMLG7eJ2L7OIQ2K3Vhf2YsE5k6RafkOI4V+TpNRJt5PtQlKeidQIzAPVushsTAOawQ==', '5EGQML5DYFLSET2X7TL5RYVS5B3OSUC2', '376422bc-573e-4012-8566-165fcc0808a8', NULL, 0, 0, NULL, 1, 0),
('caefefac-f657-45a5-9e9f-b8e594b2ff94', 16, 'Artur', 'ARTUR', 'pacan1234@wp.pl', 'PACAN1234@WP.PL', 0, 'AQAAAAEAACcQAAAAED2jvX60Vl8LDE4yKO9YwNxOZzTnach5560g6bTRHe3mPHrOziQQWgMtDDloxXdcLw==', '4EWCLZU7QCT73Y6NCUJK6D2AJRDAAI2A', '5dea062c-e1c4-476f-abbc-3e770d449863', NULL, 0, 0, NULL, 1, 0),
('cc3bd777-f126-475a-8183-57038f308649', 15, 'Artie', 'ARTIE', 'Opanowskiartur@gmail.com', 'OPANOWSKIARTUR@GMAIL.COM', 1, 'AQAAAAIAAYagAAAAENwZBDzNlv6Pm2TdWjZ93Xr0drYODZRf7WCDZc/krcsUR1gNWWllHFqPw+WDyFru3A==', 'RD7YRS4ITUYGCXTXFWIDME6ZE6CQJ6NX', 'e1340ba7-040d-4adb-b17c-ca0b5505cbf4', NULL, 0, 0, NULL, 1, 0),
('e5d5225c-aabe-482a-b98f-bf4e2357f623', 34, 'Artielelelelelelele', 'ARTIELELELELELELELE', 'opanowsksadasdiartur@gmail.com', 'OPANOWSKSADASDIARTUR@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEHO3zXC6OtHpZdocRS7L3LnLdoBDcpaSNmY07B3/cp/XZa8wd/8v0WBxw6NLJUrQww==', 'STXVEKHTM5ZFFHENUIHMSTP7ICNYTHAK', 'eb8bdbfd-d01c-4e33-bafc-0795ebec5dac', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `champions`
--

CREATE TABLE `champions` (
  `id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modification_date` datetime NOT NULL,
  `champion_type` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `uwertaPoints` int(11) DEFAULT NULL,
  `uwertaMoney` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `champions`
--

INSERT INTO `champions` (`id`, `name`, `created_date`, `modification_date`, `champion_type`, `description`, `uwertaPoints`, `uwertaMoney`) VALUES
(53, 'Lunaris', '2023-09-07 10:04:09', '2023-09-07 10:04:09', 1, 'Lunaris, a celestial migician from the world of Uwerta, channels the power of the moon in the eternal struggle between light and shadow. Swift and deadly, he navigates the battlegrounds with grace, embodying the cosmic forces that shape the destiny of her mystical realm.', 100, 100),
(54, 'Castiele', '2023-09-13 11:16:35', '2023-09-13 11:16:35', 1, 'Castiele, Frostwave Conjurer, commands the elements of ice and water with unparalleled mastery, weaving a symphony of frigid enchantments. Clad in crystalline armor, this enigmatic sorcerer materializes barriers of frost to confound adversaries. A guardian of elemental equilibrium, Castiele\'s icy prowess shapes the battlefield, freezing time itself in a dance of arcane beauty.', 100, 100),
(55, 'Pixolino', '2023-10-18 15:08:32', '2023-10-18 15:08:32', 1, 'Pixolino, Uwerta\'s Celestial Pyromancer, swiftly navigates the eternal struggle between light and shadow. Cloaked in starlit robes, this lethal magician sets the air ablaze with ethereal flames, embodying cosmic forces that shape destiny. A luminary figure, Pixolino guards Uwerta\'s balance with transcendent fires.', 100, 100),
(56, 'Saguaron', '2023-10-20 13:05:30', '2023-10-20 13:05:30', 1, 'Saguaron, the Emberwalker, effortlessly teleports through realms, leaving searing flames in their wake. A gaze freezes foes in fiery paralysis, while whimsical gestures conjure sapling barriers, ensnaring and confining adversaries in a botanical labyrinth. In a ballet of embers, shadows, and swift teleportation, Saguaron weaves a captivating tale of control and confinement.', 100, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `champions_image`
--

CREATE TABLE `champions_image` (
  `image_id` int(11) NOT NULL,
  `filename` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `champion_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `champions_image`
--

INSERT INTO `champions_image` (`image_id`, `filename`, `description`, `champion_image_id`) VALUES
(49, 'Lunaris.png', 'q', 53),
(50, 'Castiele.png', 'test_pd_main', 54),
(51, 'Pixolino.png', 'Navini', 55),
(52, 'Saguaron.png', 'Saguaron', 56);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `champions_skill`
--

CREATE TABLE `champions_skill` (
  `skill_id` int(11) NOT NULL,
  `skill_one` varchar(30) NOT NULL,
  `description_skill_one` varchar(500) DEFAULT NULL,
  `link_one` varchar(200) NOT NULL,
  `skill_two` varchar(30) NOT NULL,
  `description_skill_two` varchar(500) DEFAULT NULL,
  `link_two` varchar(200) NOT NULL,
  `skill_three` varchar(30) NOT NULL,
  `description_skill_three` varchar(500) DEFAULT NULL,
  `link_three` varchar(200) NOT NULL,
  `skill_four` varchar(30) NOT NULL,
  `description_skill_four` varchar(500) DEFAULT NULL,
  `link_four` varchar(200) NOT NULL,
  `champion_skill_id` int(11) NOT NULL,
  `champion_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `champions_skill`
--

INSERT INTO `champions_skill` (`skill_id`, `skill_one`, `description_skill_one`, `link_one`, `skill_two`, `description_skill_two`, `link_two`, `skill_three`, `description_skill_three`, `link_three`, `skill_four`, `description_skill_four`, `link_four`, `champion_skill_id`, `champion_type`) VALUES
(36, 'Lunaris Holy Shoot', 'If you use aim well and hit the enemy directly, he will receive Lunaris holy damage. Hotkey: 1, Type: Holy Attack, Action: You have to hit the target (it shoots at the position you hit). You can see the exact operation in the video below', 'https://www.youtube.com/embed/2zbOMtSYDlg?enablejsapi=1', 'Lunaris Power Holy Shoot', 'If you use aim well and hit the enemy directly, he will receive Lunaris power holy damage. Hotkey: 2, Type: Holy Attack, Action: You have to hit the target (it shoots at the position you hit). You can see the exact operation in the video below', 'https://www.youtube.com/embed/2zbOMtSYDlg?enablejsapi=1', 'Lunaris Teleport', 'If you aim well and hit the enemy directly, he will receive Lunaris holy damage and you will teleport to position you shoot! Hotkey: 3, Type: Holy Attack and teleport, Action: You have to hit the target (it shoots at the position you hit and teleport there). You can see the exact operation in the video below', 'https://www.youtube.com/embed/oun8xcNdCKE?enablejsapi=1', 'Lunaris Ulti Shoot', 'It creates holy damage on each position from player position to aim position! Hotkey: 4, Type: Holy Attack Position, Action: You have to hit the position you want. You can see the exact operation in the video below', 'https://www.youtube.com/embed/lA74sdXJ95k?enablejsapi=1', 53, 0),
(37, 'Castiele Sea Shoot', 'It makes sea monsters attack two dirs front of you and make Castiele ice damage for each champion you hit. Also if you hit target you will get speed boost for while Hotkey: 1, \nType: Sea Monsters Attack, Action: Shooting sea monsters front of champion. You can see the exact operation in the video below', 'https://www.youtube.com/embed/O_l-FAyFCTU?enablejsapi=1', 'Castiele Storm Wall Shoot', 'It creates ice damage on each position from player position to aim position and on last three positions creates magic wall! Hotkey: 2, Type: Ice Attack Position, Action: You have to hit the position you want. You can see the exact operation in the video below', 'https://www.youtube.com/embed/ef4vyHxop7w?enablejsapi=1', 'Castiele Storm Shoot', 'It creates ice damage on each position from player position to aim position! Hotkey: 3, Type: Ice Attack Position, Action: You have to hit the position you want. You can see the exact operation in the video below', 'test_l_three', 'Castiele Blade', 'Instant: It creates teleport to 3 enemies, make damage and go back to champion previous position Hotkey: 4, Type: Ice Attack Position, Action: Instant skill looking for enemy', 'test_l_four', 54, 0),
(38, 'Pixolino Fire Shoot', 'If you use aim well and hit the enemy directly, he will receive Pixolino fire damage. Hotkey: 1, \nType: Fire Attack, Action: You have to hit the target (it shoots at the position you hit). You can see the exact operation in the video below', 'Boom', 'Pixolino Fire Teleport', 'Instant: It makes teleport and fire attack three dirs front of you and make Pixolino fire damage for champion or uwertanian monster you hit. Hotkey: 2, \nType: Fire Attack, Action: Shooting fire and teleportinf front of champion. You can see the exact operation in the video below', 'Boom', 'Pixolino Front Fire Shoot', 'It makes fire attack front of you and make Pixolino fire damage for each champion you hit. Hotkey: 3, \nType: Fire Attack, Action: Shooting fire front of champion. You can see the exact operation in the video below', 'Boom', 'Pixolino Ignite', 'If you use aim well and hit the enemy directly, he will receive Pixolino fire damage and ignite him. Hotkey: 4, \nType: Fire Attack, Action: You have to hit the target (it shoots at the position you hit). You can see the exact operation in the video below', 'Boom', 55, 0),
(39, 'Saguaron Teleport Fire Shoot', 'It teleport you to position you shoot and make ignite after you. This spell is very powerfull and make damage also for you! Hotkey: 1, Type: Fire Attack and teleport, Action: You have to hit the target (it shoots at the position you hit and teleport there). You can see the exact operation in the video below', 'Boom', 'Saguaron Trap Shoot', 'It creates trees around shooted position. Shooted position make fire Saguaron damage  Hotkey: 2, Type: Fire Attack And Trap, Action: You have to hit the position you want. You can see the exact operation in the video below', 'fist', 'Saguaron Paralyze', 'It paralyze shooted position uwertanian monster or enemy champion. Shooted position make low earth Saguaron damage Hotkey: 3, Type: Paralyze, Action: You have to hit the position you want. You can see the exact operation in the video below', 'fist', 'Saguaron Earth Power Shoot', 'If you use aim well and hit the enemy directly, he will receive Saguaron power earth damage. Hotkey: 4, Type: Earth Attack, Action: You have to hit the target (it shoots at the position you hit). You can see the exact operation in the video below', 'fist', 56, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `champions_skill_image`
--

CREATE TABLE `champions_skill_image` (
  `skill_image_id` int(11) NOT NULL,
  `filename1` varchar(32) NOT NULL,
  `filename2` varchar(32) NOT NULL,
  `filename3` varchar(32) NOT NULL,
  `filename4` varchar(32) NOT NULL,
  `champion_skill_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `champions_skill_image`
--

INSERT INTO `champions_skill_image` (`skill_image_id`, `filename1`, `filename2`, `filename3`, `filename4`, `champion_skill_image_id`) VALUES
(12, 'Lunaris1shoot.png', 'Lunaris2powerShoot.png', 'Lunaris3teleportAndShoot.png', 'Lunaris4ultiShoot.png', 36),
(13, 'Castiele1SeaShoot.png', 'Castiele2StormWallShoot.png', 'Castiele3StormShoot.png', 'Castiele4Blade.png', 37),
(14, 'Pixolino1FireShoot.png', 'Pixolino2FireTeleport.png', 'Pixolino3FrontFireShoot.png', 'Pixolino4Ignite.png', 38),
(15, 'Saguaron1TeleportFireShoot.png', 'Saguaron2TrapShoot.png', 'Saguaron3Paralyze.png', 'Saguaron4EarthPowerShoot.png', 39);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `currentgame`
--

CREATE TABLE `currentgame` (
  `id` int(11) NOT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  `gameconfigurationid` int(11) DEFAULT NULL,
  `isFinished` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `startDateTfs` bigint(20) NOT NULL DEFAULT 0,
  `finishDate` datetime DEFAULT NULL,
  `finishDateTfs` bigint(20) NOT NULL DEFAULT 0,
  `gameType` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `devicecodes`
--

CREATE TABLE `devicecodes` (
  `UserCode` varchar(200) NOT NULL,
  `DeviceCode` varchar(200) NOT NULL,
  `SubjectId` varchar(200) DEFAULT NULL,
  `SessionId` varchar(100) DEFAULT NULL,
  `ClientId` varchar(200) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `CreationTime` datetime(6) NOT NULL,
  `Expiration` datetime(6) NOT NULL,
  `Data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `globaluwertastorage`
--

CREATE TABLE `globaluwertastorage` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `uwertaPoints` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `itemId` int(11) DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `itemType` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `globaluwertastorage`
--

INSERT INTO `globaluwertastorage` (`id`, `userId`, `uwertaPoints`, `userName`, `itemId`, `itemName`, `itemType`) VALUES
(54, 14, 2, 'Artielele', 1, '30 Premium Days', 2),
(58, 15, 1, 'Artie', 1, 'Lunaris', 1),
(60, 15, 1, 'Artie', 2, 'Pixolino', 1),
(62, 15, 3, 'Artie', 1, 'Lunaris', 1),
(64, 14, 2, 'Artielele', 1, '30 Premium Days', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guilds`
--

CREATE TABLE `guilds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Wyzwalacze `guilds`
--
DELIMITER $$
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds` FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('the Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('a Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('a Member', 1, NEW.`id`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guildwar_kills`
--

CREATE TABLE `guildwar_kills` (
  `id` int(11) NOT NULL,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int(11) NOT NULL DEFAULT 0,
  `targetguild` int(11) NOT NULL DEFAULT 0,
  `warid` int(11) NOT NULL DEFAULT 0,
  `time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guild_invites`
--

CREATE TABLE `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `guild_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guild_membership`
--

CREATE TABLE `guild_membership` (
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guild_wars`
--

CREATE TABLE `guild_wars` (
  `id` int(11) NOT NULL,
  `guild1` int(11) NOT NULL DEFAULT 0,
  `guild2` int(11) NOT NULL DEFAULT 0,
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `started` bigint(20) NOT NULL DEFAULT 0,
  `ended` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warnings` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 0,
  `bid` int(11) NOT NULL DEFAULT 0,
  `bid_end` int(11) NOT NULL DEFAULT 0,
  `last_bid` int(11) NOT NULL DEFAULT 0,
  `highest_bidder` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `beds` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `beds`) VALUES
(1, 0, 0, 0, 'Rhyves Flats 14', 0, 2, 0, 0, 0, 0, 25, 1),
(2, 0, 0, 0, 'Rhyves Flats 15', 0, 2, 0, 0, 0, 0, 27, 1),
(3, 0, 0, 0, 'Rhyves Flats 16', 0, 2, 0, 0, 0, 0, 20, 1),
(4, 0, 0, 0, 'Baraganor Boulevard 1', 0, 3, 0, 0, 0, 0, 41, 1),
(5, 0, 0, 0, 'Saund Top 1', 0, 5, 0, 0, 0, 0, 24, 1),
(6, 0, 0, 0, 'Kazgal Close 1', 0, 3, 0, 0, 0, 0, 43, 1),
(7, 0, 0, 0, 'Tower Flat', 0, 2, 0, 0, 0, 0, 19, 1),
(8, 0, 0, 0, 'Castle Street 1', 0, 2, 0, 0, 0, 0, 40, 1),
(9, 0, 0, 0, 'Seaview 2', 0, 2, 0, 0, 0, 0, 59, 2),
(10, 0, 0, 0, 'Seaview 1', 0, 2, 0, 0, 0, 0, 40, 1),
(11, 0, 0, 0, 'Hill Hut 1', 0, 2, 0, 0, 0, 0, 35, 1),
(12, 0, 0, 0, 'Hill Hut 2', 0, 2, 0, 0, 0, 0, 35, 1),
(13, 0, 0, 0, 'Farm Lane 1', 0, 2, 0, 0, 0, 0, 31, 1),
(14, 0, 0, 0, 'Farm Lane 2', 0, 2, 0, 0, 0, 0, 54, 1),
(15, 0, 0, 0, 'Church Avenue 1', 0, 2, 0, 0, 0, 0, 29, 1),
(16, 0, 0, 0, 'Church Avenue 2', 0, 2, 0, 0, 0, 0, 29, 1),
(17, 0, 0, 0, 'Church Avenue 3', 0, 2, 0, 0, 0, 0, 49, 1),
(18, 0, 0, 0, 'Church Avenue 4', 0, 2, 0, 0, 0, 0, 36, 1),
(19, 0, 0, 0, 'Church Avenue 5', 0, 2, 0, 0, 0, 0, 28, 1),
(20, 0, 0, 0, 'Church Avenue 7', 0, 2, 0, 0, 0, 0, 32, 1),
(23, 0, 0, 0, 'City Walls 1', 0, 2, 0, 0, 0, 0, 36, 1),
(24, 0, 0, 0, 'City Walls 2', 0, 2, 0, 0, 0, 0, 36, 1),
(25, 0, 0, 0, 'City Walls 3', 0, 2, 0, 0, 0, 0, 46, 1),
(26, 0, 0, 0, 'City Walls 4', 0, 2, 0, 0, 0, 0, 46, 1),
(27, 0, 0, 0, 'Hilltop 1', 0, 2, 0, 0, 0, 0, 42, 1),
(28, 0, 0, 0, 'Hilltop 2', 0, 2, 0, 0, 0, 0, 48, 1),
(29, 0, 0, 0, 'Hilltop 3', 0, 2, 0, 0, 0, 0, 62, 1),
(30, 0, 0, 0, 'Hilltop Hall', 0, 2, 0, 0, 0, 0, 242, 2),
(31, 0, 0, 0, 'Rhyves Flats 1', 0, 2, 0, 0, 0, 0, 20, 1),
(32, 0, 0, 0, 'Rhyves Flats 2', 0, 2, 0, 0, 0, 0, 20, 1),
(33, 0, 0, 0, 'Rhyves Flats 3', 0, 2, 0, 0, 0, 0, 20, 1),
(34, 0, 0, 0, 'Rhyves Flats 4', 0, 2, 0, 0, 0, 0, 20, 1),
(35, 0, 0, 0, 'Rhyves Flats 5', 0, 2, 0, 0, 0, 0, 19, 1),
(36, 0, 0, 0, 'Rhyves Flats 6', 0, 2, 0, 0, 0, 0, 19, 1),
(37, 0, 0, 0, 'Rhyves Flats 7', 0, 2, 0, 0, 0, 0, 19, 1),
(38, 0, 0, 0, 'Rhyves Flats 8', 0, 2, 0, 0, 0, 0, 20, 1),
(39, 0, 0, 0, 'Rhyves Flats 9', 0, 2, 0, 0, 0, 0, 19, 1),
(40, 0, 0, 0, 'Rhyves Flats 10', 0, 2, 0, 0, 0, 0, 19, 1),
(41, 0, 0, 0, 'Rhyves Flats 11', 0, 2, 0, 0, 0, 0, 19, 1),
(42, 0, 0, 0, 'Rhyves Flats 13', 0, 2, 0, 0, 0, 0, 24, 1),
(43, 0, 0, 0, 'Rhyves Flats 12', 0, 2, 0, 0, 0, 0, 20, 1),
(44, 0, 0, 0, 'Baraganor Boulevard 2', 0, 3, 0, 0, 0, 0, 46, 1),
(45, 0, 0, 0, 'Baraganor Boulevard 3', 0, 3, 0, 0, 0, 0, 44, 1),
(46, 0, 0, 0, 'Baraganor Boulevard 4', 0, 3, 0, 0, 0, 0, 41, 1),
(47, 0, 0, 0, 'Baraganor Boulevard 5', 0, 3, 0, 0, 0, 0, 41, 1),
(48, 0, 0, 0, 'Baraganor Boulevard 6', 0, 3, 0, 0, 0, 0, 41, 1),
(49, 0, 0, 0, 'Baraganor Boulevard 7', 0, 3, 0, 0, 0, 0, 43, 1),
(50, 0, 0, 0, 'Baraganor Boulevard 8', 0, 3, 0, 0, 0, 0, 47, 1),
(51, 0, 0, 0, 'Kazgal Close 2', 0, 3, 0, 0, 0, 0, 42, 1),
(52, 0, 0, 0, 'Kazgal Close 3', 0, 3, 0, 0, 0, 0, 42, 1),
(53, 0, 0, 0, 'Kazgal Close 4', 0, 3, 0, 0, 0, 0, 44, 1),
(54, 0, 0, 0, 'Kazgal Close 5', 0, 3, 0, 0, 0, 0, 43, 1),
(55, 0, 0, 0, 'Kazgal Close6', 0, 3, 0, 0, 0, 0, 43, 1),
(56, 0, 0, 0, 'Kazgal Close 7', 0, 3, 0, 0, 0, 0, 43, 1),
(57, 0, 0, 0, 'Kazgal Close 8', 0, 3, 0, 0, 0, 0, 43, 1),
(58, 0, 0, 0, 'Hammersmith Hall', 0, 3, 0, 0, 0, 0, 278, 4),
(59, 0, 0, 0, 'Varnack\'s Cavern', 0, 3, 0, 0, 0, 0, 289, 4),
(60, 0, 0, 0, 'Saund Street 1', 0, 5, 0, 0, 0, 0, 20, 1),
(61, 0, 0, 0, 'Saund Street 2', 0, 5, 0, 0, 0, 0, 25, 1),
(62, 0, 0, 0, 'Saund Street 3', 0, 5, 0, 0, 0, 0, 19, 1),
(63, 0, 0, 0, 'Saund Street 4', 0, 5, 0, 0, 0, 0, 25, 1),
(64, 0, 0, 0, 'Saund Street 5', 0, 5, 0, 0, 0, 0, 19, 1),
(65, 0, 0, 0, 'Saund Top 2', 0, 5, 0, 0, 0, 0, 24, 1),
(66, 0, 0, 0, 'Saund Top 3', 0, 5, 0, 0, 0, 0, 24, 2),
(67, 0, 0, 0, 'Dock Street 1', 0, 4, 0, 0, 0, 0, 30, 1),
(68, 0, 0, 0, 'Dock Street 2', 0, 4, 0, 0, 0, 0, 35, 1),
(69, 0, 0, 0, 'Dock Street 3', 0, 4, 0, 0, 0, 0, 68, 1),
(70, 0, 0, 0, 'Nomad Hill 1', 0, 4, 0, 0, 0, 0, 27, 1),
(71, 0, 0, 0, 'Nomad Hill 2', 0, 4, 0, 0, 0, 0, 31, 1),
(72, 0, 0, 0, 'Nomad Hill 3', 0, 4, 0, 0, 0, 0, 52, 2),
(73, 0, 0, 0, 'Great Hall 1', 0, 4, 0, 0, 0, 0, 38, 1),
(74, 0, 0, 0, 'Great Hall 2', 0, 4, 0, 0, 0, 0, 43, 2),
(75, 0, 0, 0, 'Tarat Road 1', 0, 4, 0, 0, 0, 0, 36, 1),
(76, 0, 0, 0, 'Temple Terrace 1', 0, 4, 0, 0, 0, 0, 47, 1),
(77, 0, 0, 0, 'Temple Terrace 2', 0, 4, 0, 0, 0, 0, 41, 1),
(78, 0, 0, 0, 'Temple Terrace 3', 0, 4, 0, 0, 0, 0, 41, 1),
(79, 0, 0, 0, 'Tarat Road 2', 0, 4, 0, 0, 0, 0, 36, 1),
(80, 0, 0, 0, 'Tarat Road 3', 0, 4, 0, 0, 0, 0, 49, 1),
(81, 0, 0, 0, 'Tarat Road 4', 0, 4, 0, 0, 0, 0, 35, 1),
(82, 0, 0, 0, 'Tarat Road 6', 0, 4, 0, 0, 0, 0, 68, 2),
(83, 0, 0, 0, 'Tarat Road 7', 0, 4, 0, 0, 0, 0, 24, 1),
(84, 0, 0, 0, 'Tarat Road 8', 0, 4, 0, 0, 0, 0, 39, 1),
(85, 0, 0, 0, 'Tarat Road 9', 0, 4, 0, 0, 0, 0, 35, 2),
(86, 0, 0, 0, 'Smith Lane 1', 0, 4, 0, 0, 0, 0, 36, 1),
(87, 0, 0, 0, 'Smith Lane 2', 0, 4, 0, 0, 0, 0, 42, 1),
(88, 0, 0, 0, 'Smith Lane 3', 0, 4, 0, 0, 0, 0, 49, 2),
(89, 0, 0, 0, 'Smith Lane 4', 0, 4, 0, 0, 0, 0, 40, 1),
(90, 0, 0, 0, 'Smith Lane 5', 0, 4, 0, 0, 0, 0, 30, 1),
(91, 0, 0, 0, 'Smith Lane 6', 0, 4, 0, 0, 0, 0, 44, 2),
(92, 0, 0, 0, 'Smith Lane 7', 0, 4, 0, 0, 0, 0, 44, 1),
(93, 0, 0, 0, 'Smith Lane Shop', 0, 4, 0, 0, 0, 0, 52, 1),
(94, 0, 0, 0, 'Snowcapped Street 1', 0, 4, 0, 0, 0, 0, 35, 1),
(95, 0, 0, 0, 'Snowcapped Street 2', 0, 4, 0, 0, 0, 0, 30, 1),
(96, 0, 0, 0, 'Snowcapped Street 3', 0, 4, 0, 0, 0, 0, 30, 1),
(97, 0, 0, 0, 'Wall Flat 1', 0, 4, 0, 0, 0, 0, 27, 1),
(98, 0, 0, 0, 'Wall Flat 2', 0, 4, 0, 0, 0, 0, 27, 1),
(99, 0, 0, 0, 'Wall Flat 3', 0, 4, 0, 0, 0, 0, 49, 1),
(100, 0, 0, 0, 'Wall Flat 4', 0, 4, 0, 0, 0, 0, 19, 1),
(101, 0, 0, 0, 'Farm Lane 3', 0, 2, 0, 0, 0, 0, 40, 2),
(102, 0, 0, 0, 'Farm Lane 4', 0, 2, 0, 0, 0, 0, 54, 1),
(103, 0, 0, 0, 'The Square 1', 0, 2, 0, 0, 0, 0, 35, 1),
(104, 0, 0, 0, 'The Square 2 (Shop)', 0, 2, 0, 0, 0, 0, 52, 2),
(105, 0, 0, 0, 'Central Hall', 0, 2, 0, 0, 0, 0, 236, 8),
(106, 0, 0, 0, 'The Square 3', 0, 2, 0, 0, 0, 0, 29, 1),
(107, 0, 0, 0, 'The Square 4 (Shop)', 0, 2, 0, 0, 0, 0, 61, 1),
(108, 0, 0, 0, 'Church Avenue 6', 0, 2, 0, 0, 0, 0, 35, 1),
(109, 0, 0, 0, 'Castle Street 2', 0, 2, 0, 0, 0, 0, 36, 1),
(110, 0, 0, 0, 'Castle Street 3', 0, 2, 0, 0, 0, 0, 41, 1),
(111, 0, 0, 0, 'Armory Flat 1', 0, 2, 0, 0, 0, 0, 35, 2),
(112, 0, 0, 0, 'Armory Flat 2', 0, 2, 0, 0, 0, 0, 35, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `house_lists`
--

CREATE TABLE `house_lists` (
  `house_id` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ip_bans`
--

CREATE TABLE `ip_bans` (
  `ip` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `keys`
--

CREATE TABLE `keys` (
  `Id` varchar(255) NOT NULL,
  `Version` int(11) NOT NULL,
  `Created` datetime(6) NOT NULL,
  `Use` varchar(255) DEFAULT NULL,
  `Algorithm` varchar(100) NOT NULL,
  `IsX509Certificate` tinyint(1) NOT NULL,
  `DataProtected` tinyint(1) NOT NULL,
  `Data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `keys`
--

INSERT INTO `keys` (`Id`, `Version`, `Created`, `Use`, `Algorithm`, `IsX509Certificate`, `DataProtected`, `Data`) VALUES
('55698C60A675B850229B89672BA00975', 1, '2023-09-28 11:24:28.541091', 'signing', 'RS256', 0, 1, 'CfDJ8OccupOiMadKtguvtJjjBMV9mt5LiCgqzlJsXVN-Hx1suL3LHbDCm8lRrOyJt9wHUI0fWzjDW8H0c-lwWn1EYW7xs8qdvselk8jKDWRpifGca9bwGPLGS1VbvhhLq8v_7lu3QcxJ9kaSp0yJjMmKsdB08j5L66OraQDt9sZnpsQQPr9B1tDLCqp1dRquz5Llyru9LKP2PRzxXKu3isTNlhHUO1HfzPGhCp_4cWy18_8rWh20LxrtwyaLYHbxjz-cr1kPm8-D6hbywWvdWp4jTyFPzHvlVeHCBdJVHQBmbYN0kCLfl_eY340kOf5j9G-v3l_DrOa_rqYPeNi4-e8c9vgrCAuLCMAjM_kgdMjYFiklRqIdVZ6zRh6Pu2U3JGsaw0ab0vJz6-Ws3LKt9YGTGechs3xoqOc8VX2B4SpwaqU46gkuvh4t7CzqpIISFrDHjgXogvjgdfn39DDN9UmYRSCver6bidDReYk290dcgmV_EKF35cjg9tsoL9Kfl1z98YKNhvROf21cF9G8uaihX3fXpgV8XyknVXAF-eocA4Kc-9bPJdkctsfMxTvmfMF69I4RtOx3TWq6cMGZYUH7Ha7NGWVVfiA4fITolcA_CR-QjlZvEw9jCN55cigHj1sGhzQ05aE3bQUcq5jOR_RS9vTJO0wxxKbgUJI576Smys09g29VHb6lfZ-rKtyexac__CrsgnN2mZp5nC93Z_p_Qwn8SlZ9eY8FWFE1IpAiXv76yr0-6LkPd861nmNAevpBBvDUrnTMYOAXcseS1F9dArNEkRXADKYyx5Evb75qKiMdUY9HSKQNaAol37IUBbWuBv4R16w9ZF87vpHWxDfpGLh2RjGqQvLBOEq3WqEg3j64hoknD0wWeAVznpJFBBQg--Zea_oWUheV5sg-nCAR29otTT1nJeE1PRGZtW5B7OXDZch-N2xDKAoofOgdyTUelDxRHJeef4hUk-3-RbVjJaVjCDSTNP3tA84x1nOLqnDZZcurEHlwSVrfKzjgy0CuX6TOPdQGp5ZXM8tql9Jf1f497u5-SnYvXD2RTYkwAHnIdanFGT_P4mA4ijwHVQKwlhC0tRSDYQLKocafOnOdl9DP4n8XTUeVTuccafVXBDSxiA9PnPvXQg8kKIUmGcw7Fho5gFn5NEbmrrRXpsFXkGEng7-sySnYRjfrVAr1vdllgIEzT1SM6VzhhsEM5K1gn5zpMwXeRGPLX3lABAuyFWzqDvLAV-V7WmliiTfoRKcG4T5XPTzBScTNVkwSXTqjrAS-NH98gsbmH4_W7v_fE8zVVt7Z80RBbWgZnotW5jRsLdHQuxWGACjuwIjxV6FRUjq7p0V1vQTuxflNtAwhPqVhAgY2YPlIALWj9Y3aRypnKWghI6hEw9d2-G1agfc4E7duu4cmeaxZ62y3xmuWjEtZ2jmtlQ3E5djRVlk7gKD0bXlTAKyAu9yiVHbi2QoMPaUYUNz3Iil8XFCTcUSS4lhPrGF0PqmqkQgDcAsDFuK_q8k7pd4WmOm8Fw7XmN8wz4aYNAyCmiszZ-3P8k5bB7DMs5NHzq12M1Dd-r5y1qGqg3QSrn9VFdcuXOBR28TG0GMMD7JVJi_-wfuymiRaJw4TuC62himBBOaGpj-fyAEK0F8ZxOhDeTpU_a3QtPPzV8UxnKN3OnKdCsGnNP9aTLwrDEwhHliGM8VfvzFxvj7ODj_13xRov1OZ5VDCxBH1MP3iKjPMcwNxxQCVnhR0xmAU0y8CjmhOo78oA-j1Ieq5t9c_qINXfL4Obs4ivKUgxkDECdSmd0QhdLvzekMxmAHjx63bavDl9iHprFY75T0HSwU-6MD0AImNIqla0h5QJr1_iajOPBHB5gN_Drbt29fFrEHHRZukqyC2cns-rhGPgvKvg1aN3UYpf_Ktunu9FcSVYTFBYBxCjbq_2TaB7ah4SyckanayJQrk8FGNnmxOUDDCl10L_A6AKSHfXq0st63h298dCOPzzfnh37_DY-TwXx95NEx3boAaf2CyCsypgrcBeL7vzP47kinevPjkDERNvUKXIw2axSvIJPfhpryQj7W1E8OisJp1dydE6uT1YpAUQXnewyAc7gRHo0fUBLvi0rlt2MyL0AMwI3-otQWbTqoJU1V_HVLA0WJYMZAhBlO4wC20OXzSjhvkNzCKZQ0eooaFFjrocVl9TZgbSyjLrWootKwe2eNxuTXsRMZAzz4wgLRWNHG_81sGcoTD7vl9dySY4XY-L7dy_aFlz7lg2b5tk1TAgQQd2S5pgdW0EYodG_lPIUDCDoHPrZo2NgpHF-eC5NP_rN9BIK66F6PjBTuJbciXhI2tzvOSx7ei9hBNbyuoUdPmMSuB0R-JYdZ1oNXd5wSRGSeT73fcIqPs0K1WVjkR0uECHvBN0usupF4rFxibOr9uIUwE5nj-NEYhqwb5Jopc2P1SQlu3yTte1c1MEoQ_Icfn1hVo514w');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `market_history`
--

CREATE TABLE `market_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(4) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires_at` bigint(20) UNSIGNED NOT NULL,
  `inserted` bigint(20) UNSIGNED NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `market_offers`
--

CREATE TABLE `market_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(4) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `created` bigint(20) UNSIGNED NOT NULL,
  `anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descriptionOne` varchar(2000) NOT NULL,
  `descriptionTwo` varchar(500) NOT NULL,
  `descriptionThree` varchar(500) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `newsType` int(11) DEFAULT 1,
  `creationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `modificationDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `title`, `descriptionOne`, `descriptionTwo`, `descriptionThree`, `author`, `newsType`, `creationDate`, `modificationDate`) VALUES
(1, 'How to play', '\nExploring the exciting world Uwerta of Legends Moba Game based on tibia source.\nFirst and foremost, you need to register an account. To do this, go to the \'Register\' tab, fill out the form, and create your account. Your account name will be unique and assigned to the champion you create for each match.\n\nFor more information about champions, you can visit the \'Champions\' tab. The next step is to download the Uwerta of Legends client from the \'downloads\' tab so you can log in once your game starts.\n\nI\'ve developed my own web client, allowing you to start a game by going to the \'Start new game\' tab, finding your opponent, and selecting the game mode (currently, only 1vs1 is available, with work underway for 2v2, 3v3, and 5v5).', 'Nice', 'Nice', 'Artie', 1, '2023-11-21 00:38:11', '2023-11-21 00:38:11'),
(2, 'About game', '\"Uwerta of Legends\" is a dynamic 2D MOBA game set in the world of Tibia OTS engine. In this game, players embody powerful characters known as \"Champions\" each assigned to either the blue or red team, competing on an arena to destroy the opponent\'s base, either the \"Uwerta Blue Base\" or \"Uwerta Red Base.\" The game maintains key elements of the MOBA genre while offering unique features and challenges.\n\nDistinctive features of \"Uwerta of Legends\":\n\nChampions: Players choose from a diverse pool of champions, each possessing unique skills, abilities, and roles on the battlefield. Some characters may be more tank-oriented, while others focus on long-range damage or healing allies.\n\nArena Map: The 1v1 and future 2v2 \"Uwerta of Legends\" arena consists of a single lane leading from one team\'s base to the other. Along the route, there are defensive towers, the \"Red Tower\" and \"Blue Tower,\" which players must overcome to reach the enemy base.\n\nObjective: The main goal is to destroy the opponent\'s base, requiring teamwork, tactics, and skillful use of character abilities. Players must also defend their base against enemy attacks.\n\nExperience and Gold: Players gain experience by defeating enemies and completing various tasks on the map. Uwerta money accumulates during the game and can be used to purchase items that enhance character abilities.\n\nRespawn and Rebirth: Upon death, players respawn at their team\'s base after a short period, ready to return to the battlefield.\n\nUpdates and Development: \"Uwerta of Legends\" receives regular updates introducing new characters, balancing existing ones, and offering new tactical and strategic possibilities for players.\n\n\"Uwerta of Legends\" is an exciting and engaging 2D MOBA game that attracts both new and experienced players, providing intense competition and action-packed battles on the arena.', 'Uwerta of Legends', 'Uwerta of Legends', 'Artie', 1, '2023-11-21 01:05:54', '2023-11-21 01:05:54'),
(3, 'Uwerta Items', 'An assortment of A-grade items serves as customizable enhancements readily equipped by players within the game, typically attainable through the expenditure of esteemed Uwerta currency. These items are frequently crafted to resemble artifacts steeped in the rich tapestry of Runeterran mythology, harmonizing seamlessly with the game\'s immersive backdrop. Accessible via the in-game shop, these items offer players a myriad of strategic possibilities to amplify their gameplay experience.', 'Uwerta Items', 'Uwerta Items', 'Artie', 1, '2023-11-21 01:22:58', '2023-11-21 01:22:58'),
(4, 'How to play', 'If you want to play Uwerta of Legends you need download our client', 'If you want to play Uwerta of Legends you need download our client', 'If you want to play Uwerta of Legends you need download our client', 'Artie', 1, '2023-12-01 01:16:54', '2023-12-01 01:16:54'),
(5, 'About game', 'If you want to play Uwerta of Legends you need download our client', 'If you want to play Uwerta of Legends you need download our client', 'If you want to play Uwerta of Legends you need download our client', 'Artie', 1, '2023-12-01 01:40:38', '2023-12-01 01:40:38'),
(6, 'Uwerta Items', 'Our own items system with champions, skins and avatars', 'Our own items system with champions, skins and avatars', 'Our own items system with champions, skins and avatars', 'Artie', 1, '2023-12-01 10:06:32', '2023-12-01 10:06:32'),
(7, 'How to play', 'Our own items system with champions, skins and avatars', 'Our own items system with champions, skins and avatars', 'Our own items system with champions, skins and avatars', 'Artie', 1, '2023-12-01 10:14:04', '2023-12-01 10:14:04'),
(8, 'Uwerta Items', 'If you want to play Uwerta of Legends you need download our client', 'If you want to play Uwerta of Legends you need download our client', 'If you want to play Uwerta of Legends you need download our client', 'Artie', 1, '2023-12-01 10:14:48', '2023-12-01 10:14:48');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `newsimage`
--

CREATE TABLE `newsimage` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `newsImageType` int(11) DEFAULT 1,
  `newsid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `newsimage`
--

INSERT INTO `newsimage` (`id`, `filename`, `description`, `newsImageType`, `newsid`) VALUES
(1, '85c1a1a0-00a3-4148-8940-6fcc840852dd.png', 'Boom', 0, 1),
(2, '0841bfe6-62f8-4bad-bde9-25d60d188931.png', 'Boom', 0, 2),
(3, 'bf0b6449-6ef1-4d4f-98d4-400b42ec2319.png', 'Boom', 0, 3),
(4, '22572c20-1b38-4ffd-9ee4-bf0ccc6573f2.png', 'How to play', 0, 4),
(5, '1b62e9f2-a4d6-4f5a-87e1-ed5509e3009b.png', 'About game', 0, 5),
(6, '80bab7eb-5508-4311-b92f-0b0c939e1ec3.png', 'Uwerta Items', 0, 6),
(7, '0d091c8d-93ea-4b48-84c1-046974b24682.png', 'Our own items system with champions, skins and avatars', 0, 7),
(8, '48d7e698-e8c8-42c6-adca-236cd23f6a7c.png', 'Uwerta Items', 0, 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `newslink`
--

CREATE TABLE `newslink` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `newsid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `persistedgrants`
--

CREATE TABLE `persistedgrants` (
  `Key` varchar(200) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `SubjectId` varchar(200) DEFAULT NULL,
  `SessionId` varchar(100) DEFAULT NULL,
  `ClientId` varchar(200) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `CreationTime` datetime(6) NOT NULL,
  `Expiration` datetime(6) DEFAULT NULL,
  `ConsumedTime` datetime(6) DEFAULT NULL,
  `Data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `persistedgrants`
--

INSERT INTO `persistedgrants` (`Key`, `Type`, `SubjectId`, `SessionId`, `ClientId`, `Description`, `CreationTime`, `Expiration`, `ConsumedTime`, `Data`) VALUES
('A7taAbI3LeAjDuMetfAlfJPdwhokaDF/fnT4xFOZa4Q=', 'authorization_code', '505b587e-d40e-469b-95fc-c0ab4970f27f', '6308D5B197E7E6A9C1C9C77A913F0C55', 'UwertaWebLegends.Client', NULL, '2023-09-28 18:49:20.000000', '2023-09-28 18:54:20.000000', NULL, '{\"PersistentGrantDataContainerVersion\":1,\"DataProtected\":true,\"Payload\":\"CfDJ8OccupOiMadKtguvtJjjBMVsIZguwe1tYo_pPoPCaMssh8oUqjLmL78abMQzYzyl2cagfYi0vsoDKW-jC1gkd-MO_Gi9-ok6AzkCCgiacOae23CSp5d0KfcU2UxvgFDAK0Xho0fpdcwkWTdh8fStEIwzsyUKdGVeJt_BqrUa-VOIebjKBmjSdaaff8IMzZ4oXU8_tR4MXPK3qf0PayYYK14jdvsZxNTE83P59BXjOfA4SSWdrjX6pH9YH7THAtgGBKwMeBdAWVuEms96DHC5CHi4qKuwm1ir5i7c-0vGFMnrkzU130Rtx56goh2LDQUxsPRxwovgHfDxE5wzQtkS8fBxF-F8mQzXFVCGQRyBNF0wxxFf93Ftx2MbwXa2CL5fm8bLIhU3mjoJl5FpyR506M0RhhMCqjbs-L8ojDesCmf4jx-Nj3oXK-bo8B6LZk0L6pkIg3hd975bT6w6tneO1PrzXApsQo6Gv5D_n46oinqzoFyMYuqgNXEMxsQHIqMMasT-t1FGrAwI61QXwzpphB7RiKvmhXpTarKLgz4yG_792roZPRlfLoq6e6h0vp_9Ud2Fbix1C29LmH-y9QYsGjqiep2GVFFqOvBhk22htNBSsJ2FDqEjd8Cnc6uR5ZYiwWvsZDl64tsYrgqqn1fXpF4hH-bJZa7Mh6ZWLg9J6yTPbpkaq7AcwTClZzVnroM0kvgIKylTWzaMgLeybERk9uxjzfNbBeQQoq8a-0QBjfBGpXAtvMX1w5-YBHfwqZWTmVPwnUAylxdKtw4bdLALsydJLiwLx404GT9pth-CUKsde1BhfAXgKUa0qDCtcxfGEmkwbTSk_Vswcw3b9Bsh3dDZHdBXd3gRRCBUYO3uBP8vgRIof42R-xratjPFiJPG8D3EJC1M1vif6n3o5kjoNYg6wRrcwT-5UPBBVmEiDoEyyZSnhO-fhQOV_DNjojIwFF7veeUn5613w-F48woDxseiyyczUufRnckmp8KFHg7_20ai7gQ7iZewjub3CAqo9nQ2w1jXvIK0u8X-N1Bm_RSpwm3LFxZBFfU2_L_jBoA_DEA6kvSFRFUKGMu1DEfNsp_-SNW-JmBechfqvLQ5eYjmg8nPoGtnv7y5yz5E5SFTdn2Lmmarpp8qhGrMHQg6cXo2qvOVs3PNhz3Wjz2oo4XxPbPWhZZJaatczSKTp52L0sgYjL5JgJKlhF6d6WgGAmbingzG83FG5aZNDUu26CEk0KlgdbEg8dyVtN4xl517a8d6vBALpxRkZr-0w_zPM149vubtbteIsahhfij3E-9bv4dvyLVsfREvr6YfmL5MxappX0lZ31CyFot-sBxoRNfG9ERNYmHNpuXsu8qX4bjWoHD5AHDdzyL1KIio5BS31g2PTkFtOKvhOA0t0FvIpIZUkd4aVJ7yVoVCNvVMd3eCBZsN_5bMA5rB0ilkktjHkCCue4cFnsZ_mTl7QAcZGrur46yij75wUiybNFcYwh5DJ8ZD6PLfQivBtT6iu0Wfb7j1IdSXm2yjOuJmXPvuDECv6bfj2Ro6VTaFIFdUE3IYeYAockiQfPDF4GNJdRVS7A3QsoPAvDJ20rSn8aMxXD6u3lIJSKTXWbZY2JDklGyD4RSNoiry4sNNFeA5sOFqJtHe6CV1lLaahBhwhN0yesRLrC2311UG6-91TqJ31LZnmXW1eSJfFFzKaBp-qK_1fVJadADQQey_v4BxXpttZA\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `playergame`
--

CREATE TABLE `playergame` (
  `id` int(11) NOT NULL,
  `playerid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `currentGameId` int(11) DEFAULT NULL,
  `championId` int(11) DEFAULT NULL,
  `playerType` int(11) DEFAULT NULL,
  `enemyName` varchar(255) DEFAULT NULL,
  `logged` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT 1,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `champion_id` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `vocation` int(11) NOT NULL DEFAULT 0,
  `health` int(11) NOT NULL DEFAULT 150,
  `healthmax` int(11) NOT NULL DEFAULT 150,
  `experience` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `direction` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `mana` int(11) NOT NULL DEFAULT 0,
  `manamax` int(11) NOT NULL DEFAULT 0,
  `manaspent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `soul` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 1,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0,
  `conditions` blob DEFAULT NULL,
  `cap` int(11) NOT NULL DEFAULT 400,
  `sex` int(11) NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `save` tinyint(4) NOT NULL DEFAULT 1,
  `skull` tinyint(4) NOT NULL DEFAULT 0,
  `skulltime` bigint(20) NOT NULL DEFAULT 0,
  `lastlogout` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `blessings` tinyint(4) NOT NULL DEFAULT 0,
  `onlinetime` bigint(20) NOT NULL DEFAULT 0,
  `deletion` bigint(20) NOT NULL DEFAULT 0,
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `offlinetraining_time` smallint(5) UNSIGNED NOT NULL DEFAULT 43200,
  `offlinetraining_skill` int(11) NOT NULL DEFAULT -1,
  `stamina` smallint(5) UNSIGNED NOT NULL DEFAULT 2520,
  `skill_fist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_club` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_club_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_sword` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_sword_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_axe` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_axe_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_dist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_dist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_shielding` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_shielding_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_fishing` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fishing_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lookmount` int(11) NOT NULL DEFAULT 0,
  `lookmounthead` int(11) NOT NULL DEFAULT 0,
  `lookmountbody` int(11) NOT NULL DEFAULT 0,
  `lookmountlegs` int(11) NOT NULL DEFAULT 0,
  `lookmountfeet` int(11) NOT NULL DEFAULT 0,
  `randomizemount` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `champion_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `direction`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `lookmount`, `lookmounthead`, `lookmountbody`, `lookmountlegs`, `lookmountfeet`, `randomizemount`) VALUES
(1, 'GM Artie', 6, 14, 0, 1, 0, 150, 150, 0, 107, 0, 76, 76, 746, 3, 3, 36, 0, 0, 0, 100, 1, 263, 19, 7, '', 687, 1, 1722218564, 16777343, 1, 0, 0, 1722218570, 63, 3971083, 0, 9580, 43200, -1, 2520, 10, 29, 10, 0, 10, 0, 10, 0, 10, 0, 10, 9, 10, 0, 0, 0, 0, 0, 0, 0);

--
-- Wyzwalacze `players`
--
DELIMITER $$
CREATE TRIGGER `ondelete_players` BEFORE DELETE ON `players` FOR EACH ROW BEGIN
    UPDATE `houses` SET `owner` = 0 WHERE `owner` = OLD.`id`;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `playersforcopy`
--

CREATE TABLE `playersforcopy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT 1,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `champion_id` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `vocation` int(11) NOT NULL DEFAULT 0,
  `health` int(11) NOT NULL DEFAULT 150,
  `healthmax` int(11) NOT NULL DEFAULT 150,
  `experience` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `direction` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `mana` int(11) NOT NULL DEFAULT 0,
  `manamax` int(11) NOT NULL DEFAULT 0,
  `manaspent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `soul` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 1,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0,
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT 400,
  `sex` int(11) NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `save` int(11) NOT NULL DEFAULT 1,
  `skull` int(11) NOT NULL DEFAULT 0,
  `skulltime` bigint(20) NOT NULL DEFAULT 0,
  `lastlogout` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `blessings` int(11) NOT NULL DEFAULT 0,
  `onlinetime` int(11) NOT NULL DEFAULT 0,
  `deletion` bigint(20) NOT NULL DEFAULT 0,
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `offlinetraining_time` smallint(5) UNSIGNED NOT NULL DEFAULT 43200,
  `offlinetraining_skill` int(11) NOT NULL DEFAULT -1,
  `stamina` smallint(5) UNSIGNED NOT NULL DEFAULT 2520,
  `skill_fist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_club` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_club_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_sword` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_sword_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_axe` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_axe_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_dist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_dist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_shielding` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_shielding_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_fishing` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fishing_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lookmount` int(11) NOT NULL DEFAULT 0,
  `lookmounthead` int(11) NOT NULL DEFAULT 0,
  `lookmountbody` int(11) NOT NULL DEFAULT 0,
  `lookmountlegs` int(11) NOT NULL DEFAULT 0,
  `lookmountfeet` int(11) NOT NULL DEFAULT 0,
  `randomizemount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `playersforcopy`
--

INSERT INTO `playersforcopy` (`id`, `name`, `group_id`, `account_id`, `champion_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `direction`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `lookmount`, `lookmounthead`, `lookmountbody`, `lookmountlegs`, `lookmountfeet`, `randomizemount`) VALUES
(1, 'Lunaris', 1, 1, 0, 1, 9, 600, 600, 0, 0, 0, 95, 95, 853, 3, 1, 8, 385, 385, 25112180, 200, 1, 1142, 1152, 7, '', 0, 1, 0, 16777343, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2514, 12, 45, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0),
(2, 'Castiele', 1, 1, 0, 1, 10, 600, 600, 0, 113, 0, 77, 95, 733, 3, 1, 8, 385, 385, 25112180, 200, 1, 1142, 1152, 7, '', 0, 1, 0, 16777343, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2514, 12, 45, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0),
(3, 'Pixolino', 1, 1, 0, 1, 11, 600, 600, 0, 113, 0, 49, 95, 619, 3, 1, 8, 385, 385, 25112180, 200, 1, 1142, 1152, 7, '', 0, 1, 0, 16777343, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2514, 12, 45, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0),
(4, 'Saguaron', 1, 1, 0, 1, 12, 600, 600, 0, 113, 0, 49, 95, 610, 3, 1, 8, 385, 385, 25112180, 200, 1, 1142, 1152, 7, '', 0, 1, 0, 16777343, 1, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2514, 12, 45, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `players_online`
--

CREATE TABLE `players_online` (
  `player_id` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_deaths`
--

CREATE TABLE `player_deaths` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(4) NOT NULL DEFAULT 1,
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(4) NOT NULL DEFAULT 0,
  `unjustified` tinyint(4) NOT NULL DEFAULT 0,
  `mostdamage_unjustified` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_depotitems`
--

CREATE TABLE `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `count` smallint(6) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_inboxitems`
--

CREATE TABLE `player_inboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `count` smallint(6) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_items`
--

CREATE TABLE `player_items` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `count` smallint(6) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL,
  `id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_namelocks`
--

CREATE TABLE `player_namelocks` (
  `player_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint(20) NOT NULL,
  `namelocked_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_spells`
--

CREATE TABLE `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_storage`
--

CREATE TABLE `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `key` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(1, 1013, 1719424859);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_storeinboxitems`
--

CREATE TABLE `player_storeinboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` smallint(5) UNSIGNED NOT NULL,
  `count` smallint(6) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `server_config`
--

CREATE TABLE `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('db_version', '30'),
('motd_hash', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
('motd_num', '2'),
('players_record', '4');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `uwertaPoints` int(11) DEFAULT 0,
  `uwertaMoney` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `shop`
--

INSERT INTO `shop` (`id`, `name`, `created_date`, `modification_date`, `description`, `uwertaPoints`, `uwertaMoney`, `type`) VALUES
(1, 'Premium Account 30 days', '2024-05-09 23:39:39', '2024-05-09 23:39:39', 'Adding to your account 30 days of premium', 50, 60, 1),
(2, 'Premium Account 60 days', '2024-05-09 23:50:13', '2024-05-09 23:50:13', 'Adding to your account 60 days of premium', 60, 70, 2),
(3, 'Premium Account 90 days', '2024-05-09 23:50:58', '2024-05-09 23:50:58', 'Adding to your account 90 days of premium', 60, 60, 3),
(4, 'One Chest Key', '2024-05-09 23:53:02', '2024-05-09 23:53:02', 'Chest Key to open Chest from your storage', 50, 60, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shop_image`
--

CREATE TABLE `shop_image` (
  `image_id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `shop_image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `shop_image`
--

INSERT INTO `shop_image` (`image_id`, `filename`, `description`, `shop_image_id`) VALUES
(1, 'Premium.png', 'premium30days', 1),
(2, 'Premium.png', NULL, 2),
(3, 'Premium.png', 'dsadas', 3),
(4, '4c4f61c9-07ec-4fa7-b9d1-4303aedd84a1.png', NULL, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tile_store`
--

CREATE TABLE `tile_store` (
  `house_id` int(11) NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towns`
--

CREATE TABLE `towns` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `towns`
--

INSERT INTO `towns` (`id`, `name`, `posx`, `posy`, `posz`) VALUES
(1, '1v1 group 1,2 town 1', 21, 69, 7),
(2, '1v1 group 1,2 town 2', 75, 15, 7),
(3, '1v1 group 1,2 town 3', 117, 69, 7),
(4, '1v1 group 1,2 town 4', 171, 15, 7),
(5, '1v1 group 1,2 town 5', 213, 69, 7),
(6, '1v1 group 1,2 town 6', 267, 15, 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uwerta_attributes`
--

CREATE TABLE `uwerta_attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `uwerta_items_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `uwerta_attributes`
--

INSERT INTO `uwerta_attributes` (`id`, `name`, `value`, `uwerta_items_id`) VALUES
(20, 'Level', 1, 17),
(21, 'Level', 10, 18),
(22, 'Magic', 1, 18),
(26, 'Level', 15, 21),
(27, 'Magic', 2, 21),
(28, 'Level', 25, 22),
(33, 'Level', 1, 25),
(34, 'Magic', 1, 25),
(35, 'Level', 10, 26),
(36, 'Magic', 2, 26),
(37, 'Level', 15, 27),
(38, 'Magic', 3, 27),
(41, 'Level', 1, 28),
(42, 'Magic', 1, 28),
(43, 'Level', 1, 30),
(44, 'Magic', 1, 30),
(45, 'Level', 10, 31),
(46, 'Magic', 2, 31),
(47, 'Level', 15, 32),
(48, 'Magic', 3, 32),
(49, 'Level', 25, 33),
(50, 'Magic', 4, 33),
(51, 'Level', 1, 34),
(52, 'Magic', 1, 34),
(53, 'Level', 5, 35),
(54, 'Magic', 2, 35),
(55, 'Level', 20, 36),
(56, 'Magic', 3, 36),
(57, 'Level', 25, 37),
(58, 'Magic', 4, 37),
(59, 'Level', 1, 38),
(60, 'speed', 25, 38),
(61, 'Level', 1, 39),
(62, 'Magic', 1, 39),
(63, 'Level', 1, 40),
(64, 'Magic', 1, 40),
(65, 'Level', 10, 41),
(66, 'Magic', 2, 41),
(67, 'Level', 15, 42),
(68, 'Magic', 3, 42),
(69, 'Level', 25, 43),
(70, 'Magic', 4, 43);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uwerta_items`
--

CREATE TABLE `uwerta_items` (
  `id` int(11) NOT NULL,
  `item_type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `uwerta_items`
--

INSERT INTO `uwerta_items` (`id`, `item_type`, `name`, `item_price`) VALUES
(17, 1, 'Basic Uwerta Wand', 175),
(18, 1, 'Timeless Uwerta Wand', 525),
(21, 1, 'Dreaming Uwerta Wand', 1050),
(22, 1, 'Enigmatic Uwerta Wand', 1600),
(25, 2, 'Basic Uwerta Armor', 200),
(26, 2, 'Deathless Uwerta Armor', 550),
(27, 2, 'Prickly Uwerta Armor', 1100),
(28, 2, 'Magic Uwerta Armor', 1650),
(30, 3, 'Basic Uwerta Legs', 185),
(31, 3, 'Deathless Uwerta Legs', 540),
(32, 3, 'Prickly Uwerta Legs', 1060),
(33, 3, 'Magic Uwerta Legs', 1700),
(34, 4, 'Basic Uwerta Helmet', 160),
(35, 4, 'Deathless Uwerta Helmet', 480),
(36, 4, 'Prickly Uwerta Helmet', 900),
(37, 4, 'Magic Uwerta Helmet', 1400),
(38, 6, 'Uwerta Fast Boots', 350),
(39, 6, 'Uwerta Magic Boots', 430),
(40, 5, 'Basic Uwerta Shield', 160),
(41, 5, 'Deathless Uwerta Shield', 480),
(42, 5, 'Prickly Uwerta Shield', 900),
(43, 5, 'Magic Uwerta Shield', 1400);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uwerta_item_image`
--

CREATE TABLE `uwerta_item_image` (
  `image_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uwerta_items_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `uwerta_item_image`
--

INSERT INTO `uwerta_item_image` (`image_id`, `filename`, `description`, `uwerta_items_id`) VALUES
(6, 'Basic Uwerta Wand.png', 'Basic Uwerta Wand', 17),
(7, 'Timeless Uwerta Wand.png', 'Timeless Uwerta Wand', 18),
(9, 'Dreaming Uwerta Wand.png', 'Dreaming Uwerta Wand', 21),
(10, 'Enigmatic Uwerta Wand.png', 'Enigmatic Uwerta Wand', 22),
(12, 'Basic Uwerta Armor.png', 'Basic Uwerta Armor', 25),
(13, 'Deathless Uwerta Armor.png', 'Deathless Uwerta Armor', 26),
(14, 'Prickly Uwerta Armor.png', 'Prickly Uwerta Armor', 27),
(15, 'Magic Uwerta Armor.png', 'Magic Uwerta Armor', 28),
(17, 'Basic Uwerta Legs.png', 'Basic Uwerta Legs', 30),
(18, 'Deathless Uwerta Legs.png', 'Deathless Uwerta Legs', 31),
(19, 'Prickly Uwerta Legs.png', 'Prickly Uwerta Legs', 32),
(20, 'Magic Uwerta Legs.png', 'Magic Uwerta Legs', 33),
(21, 'Basic Uwerta Helmet.png', 'Basic Uwerta Helmet', 34),
(22, 'Deathless Uwerta Helmet.png', 'Deathless Uwerta Helmet', 35),
(23, 'Prickly Uwerta Helmet.png', 'Prickly Uwerta Helmet', 36),
(24, 'Magic Uwerta Helmet.png', 'Magic Uwerta Helmet', 37),
(25, 'Uwerta Fast Boots.png', 'Uwerta Fast Boots', 38),
(26, 'Uwerta Magic Boots.png', 'Uwerta Magic Boots', 39),
(27, 'Basic Uwerta Shield.png', 'Basic Uwerta Shield', 40),
(28, 'Deathless Uwerta Shield.png', 'Deathless Uwerta Shield', 41),
(29, 'Prickly Uwerta Shield.png', 'Prickly Uwerta Shield', 42),
(30, 'Magic Uwerta Shield.png', 'Magic Uwerta Shield', 43);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20230928110741_Account', '7.0.11');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `accountchampions`
--
ALTER TABLE `accountchampions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `name_2` (`name`),
  ADD KEY `account_name` (`account_name`);

--
-- Indeksy dla tabeli `accountuwertaitems`
--
ALTER TABLE `accountuwertaitems`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `account_bans`
--
ALTER TABLE `account_bans`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indeksy dla tabeli `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indeksy dla tabeli `account_match_history`
--
ALTER TABLE `account_match_history`
  ADD PRIMARY KEY (`name`),
  ADD KEY `account_match_history_ibfk_1` (`account_name`),
  ADD KEY `champion_name` (`champion_name`);

--
-- Indeksy dla tabeli `account_storage`
--
ALTER TABLE `account_storage`
  ADD PRIMARY KEY (`account_id`,`key`);

--
-- Indeksy dla tabeli `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indeksy dla tabeli `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indeksy dla tabeli `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indeksy dla tabeli `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indeksy dla tabeli `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indeksy dla tabeli `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indeksy dla tabeli `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`),
  ADD KEY `IX_AspNetUsers_AccountId` (`AccountId`);

--
-- Indeksy dla tabeli `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indeksy dla tabeli `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indeksy dla tabeli `champions_image`
--
ALTER TABLE `champions_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `champions_image_ibfk_1` (`champion_image_id`);

--
-- Indeksy dla tabeli `champions_skill`
--
ALTER TABLE `champions_skill`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `champions_ibfk_1` (`champion_skill_id`);

--
-- Indeksy dla tabeli `champions_skill_image`
--
ALTER TABLE `champions_skill_image`
  ADD PRIMARY KEY (`skill_image_id`),
  ADD KEY `champions_skill_image_ibfk_1` (`champion_skill_image_id`);

--
-- Indeksy dla tabeli `currentgame`
--
ALTER TABLE `currentgame`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `devicecodes`
--
ALTER TABLE `devicecodes`
  ADD PRIMARY KEY (`UserCode`),
  ADD UNIQUE KEY `IX_DeviceCodes_DeviceCode` (`DeviceCode`),
  ADD KEY `IX_DeviceCodes_Expiration` (`Expiration`);

--
-- Indeksy dla tabeli `globaluwertastorage`
--
ALTER TABLE `globaluwertastorage`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ownerid` (`ownerid`);

--
-- Indeksy dla tabeli `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warid` (`warid`);

--
-- Indeksy dla tabeli `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD PRIMARY KEY (`player_id`,`guild_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indeksy dla tabeli `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indeksy dla tabeli `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indeksy dla tabeli `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild1` (`guild1`),
  ADD KEY `guild2` (`guild2`);

--
-- Indeksy dla tabeli `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `town_id` (`town_id`);

--
-- Indeksy dla tabeli `house_lists`
--
ALTER TABLE `house_lists`
  ADD KEY `house_id` (`house_id`);

--
-- Indeksy dla tabeli `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indeksy dla tabeli `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Keys_Use` (`Use`);

--
-- Indeksy dla tabeli `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`,`sale`);

--
-- Indeksy dla tabeli `market_offers`
--
ALTER TABLE `market_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale` (`sale`,`itemtype`),
  ADD KEY `created` (`created`),
  ADD KEY `player_id` (`player_id`);

--
-- Indeksy dla tabeli `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `newsimage`
--
ALTER TABLE `newsimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newsid` (`newsid`);

--
-- Indeksy dla tabeli `newslink`
--
ALTER TABLE `newslink`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newsid` (`newsid`);

--
-- Indeksy dla tabeli `persistedgrants`
--
ALTER TABLE `persistedgrants`
  ADD PRIMARY KEY (`Key`),
  ADD KEY `IX_PersistedGrants_ConsumedTime` (`ConsumedTime`),
  ADD KEY `IX_PersistedGrants_Expiration` (`Expiration`),
  ADD KEY `IX_PersistedGrants_SubjectId_ClientId_Type` (`SubjectId`,`ClientId`,`Type`),
  ADD KEY `IX_PersistedGrants_SubjectId_SessionId_Type` (`SubjectId`,`SessionId`,`Type`);

--
-- Indeksy dla tabeli `playergame`
--
ALTER TABLE `playergame`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currentGameId` (`currentGameId`);

--
-- Indeksy dla tabeli `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `vocation` (`vocation`);

--
-- Indeksy dla tabeli `playersforcopy`
--
ALTER TABLE `playersforcopy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `players_online`
--
ALTER TABLE `players_online`
  ADD PRIMARY KEY (`player_id`);

--
-- Indeksy dla tabeli `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `killed_by` (`killed_by`),
  ADD KEY `mostdamage_by` (`mostdamage_by`);

--
-- Indeksy dla tabeli `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indeksy dla tabeli `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indeksy dla tabeli `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Indeksy dla tabeli `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `namelocked_by` (`namelocked_by`);

--
-- Indeksy dla tabeli `player_spells`
--
ALTER TABLE `player_spells`
  ADD KEY `player_id` (`player_id`);

--
-- Indeksy dla tabeli `player_storage`
--
ALTER TABLE `player_storage`
  ADD PRIMARY KEY (`player_id`,`key`);

--
-- Indeksy dla tabeli `player_storeinboxitems`
--
ALTER TABLE `player_storeinboxitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indeksy dla tabeli `server_config`
--
ALTER TABLE `server_config`
  ADD PRIMARY KEY (`config`);

--
-- Indeksy dla tabeli `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shop_image`
--
ALTER TABLE `shop_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `shop_image_id` (`shop_image_id`);

--
-- Indeksy dla tabeli `tile_store`
--
ALTER TABLE `tile_store`
  ADD KEY `house_id` (`house_id`);

--
-- Indeksy dla tabeli `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `uwerta_attributes`
--
ALTER TABLE `uwerta_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uwerta_items_id` (`uwerta_items_id`);

--
-- Indeksy dla tabeli `uwerta_items`
--
ALTER TABLE `uwerta_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uwerta_item_image`
--
ALTER TABLE `uwerta_item_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `uwerta_items_id` (`uwerta_items_id`);

--
-- Indeksy dla tabeli `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `accountchampions`
--
ALTER TABLE `accountchampions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT dla tabeli `accountuwertaitems`
--
ALTER TABLE `accountuwertaitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT dla tabeli `account_ban_history`
--
ALTER TABLE `account_ban_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `champions`
--
ALTER TABLE `champions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `champions_image`
--
ALTER TABLE `champions_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT dla tabeli `champions_skill`
--
ALTER TABLE `champions_skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT dla tabeli `champions_skill_image`
--
ALTER TABLE `champions_skill_image`
  MODIFY `skill_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `currentgame`
--
ALTER TABLE `currentgame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT dla tabeli `globaluwertastorage`
--
ALTER TABLE `globaluwertastorage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT dla tabeli `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `guild_ranks`
--
ALTER TABLE `guild_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `guild_wars`
--
ALTER TABLE `guild_wars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT dla tabeli `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `market_offers`
--
ALTER TABLE `market_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `newsimage`
--
ALTER TABLE `newsimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `newslink`
--
ALTER TABLE `newslink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `playergame`
--
ALTER TABLE `playergame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT dla tabeli `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT dla tabeli `playersforcopy`
--
ALTER TABLE `playersforcopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `shop_image`
--
ALTER TABLE `shop_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `towns`
--
ALTER TABLE `towns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uwerta_attributes`
--
ALTER TABLE `uwerta_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT dla tabeli `uwerta_items`
--
ALTER TABLE `uwerta_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT dla tabeli `uwerta_item_image`
--
ALTER TABLE `uwerta_item_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_ban_history_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `account_match_history`
--
ALTER TABLE `account_match_history`
  ADD CONSTRAINT `account_match_history_ibfk_1` FOREIGN KEY (`account_name`) REFERENCES `accounts` (`account_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_match_history_ibfk_2` FOREIGN KEY (`champion_name`) REFERENCES `champions` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `account_storage`
--
ALTER TABLE `account_storage`
  ADD CONSTRAINT `account_storage_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD CONSTRAINT `FK_AspNetUsers_accounts_AccountId` FOREIGN KEY (`AccountId`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `champions_image`
--
ALTER TABLE `champions_image`
  ADD CONSTRAINT `champions_image_ibfk_1` FOREIGN KEY (`champion_image_id`) REFERENCES `champions` (`id`);

--
-- Ograniczenia dla tabeli `champions_skill`
--
ALTER TABLE `champions_skill`
  ADD CONSTRAINT `champions_ibfk_1` FOREIGN KEY (`champion_skill_id`) REFERENCES `champions` (`id`);

--
-- Ograniczenia dla tabeli `champions_skill_image`
--
ALTER TABLE `champions_skill_image`
  ADD CONSTRAINT `champions_skill_image_ibfk_1` FOREIGN KEY (`champion_skill_image_id`) REFERENCES `champions_skill` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_ibfk_1` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_3` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD CONSTRAINT `ip_bans_ibfk_1` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `market_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `newsimage`
--
ALTER TABLE `newsimage`
  ADD CONSTRAINT `newsimage_ibfk_1` FOREIGN KEY (`newsid`) REFERENCES `news` (`id`);

--
-- Ograniczenia dla tabeli `newslink`
--
ALTER TABLE `newslink`
  ADD CONSTRAINT `newslink_ibfk_1` FOREIGN KEY (`newsid`) REFERENCES `news` (`id`);

--
-- Ograniczenia dla tabeli `playergame`
--
ALTER TABLE `playergame`
  ADD CONSTRAINT `playergame_ibfk_1` FOREIGN KEY (`currentGameId`) REFERENCES `currentgame` (`id`);

--
-- Ograniczenia dla tabeli `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD CONSTRAINT `player_inboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_ibfk_2` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `player_storeinboxitems`
--
ALTER TABLE `player_storeinboxitems`
  ADD CONSTRAINT `player_storeinboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `shop_image`
--
ALTER TABLE `shop_image`
  ADD CONSTRAINT `shop_image_ibfk_1` FOREIGN KEY (`shop_image_id`) REFERENCES `shop` (`id`);

--
-- Ograniczenia dla tabeli `tile_store`
--
ALTER TABLE `tile_store`
  ADD CONSTRAINT `tile_store_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `uwerta_attributes`
--
ALTER TABLE `uwerta_attributes`
  ADD CONSTRAINT `uwerta_attributes_ibfk_1` FOREIGN KEY (`uwerta_items_id`) REFERENCES `uwerta_items` (`id`);

--
-- Ograniczenia dla tabeli `uwerta_item_image`
--
ALTER TABLE `uwerta_item_image`
  ADD CONSTRAINT `uwerta_item_image_ibfk_1` FOREIGN KEY (`uwerta_items_id`) REFERENCES `uwerta_items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
