-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 09:51 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masterdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `approver_log`
--

CREATE TABLE `approver_log` (
  `logged_approver` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checklist_master_data`
--

CREATE TABLE `checklist_master_data` (
  `SEQUENCE` int(11) NOT NULL,
  `CHECKLIST_CODE` varchar(25) NOT NULL,
  `CHECKLIST_NAME` varchar(50) NOT NULL,
  `PROCEDURES` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `current_logged`
--

CREATE TABLE `current_logged` (
  `logged` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_customer`
--

CREATE TABLE `dmc_customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `CUSTOMER_INITIAL` varchar(11) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(50) DEFAULT NULL,
  `DIVISION_CODE` varchar(50) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(50) DEFAULT NULL,
  `GROUP_CODE` int(11) DEFAULT NULL,
  `INSERT_DATETIME` varchar(50) DEFAULT NULL,
  `INSERT_USER` varchar(50) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(50) DEFAULT NULL,
  `UPDATE_USER` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_defect_code`
--

CREATE TABLE `dmc_defect_code` (
  `DEFECT_ID` int(11) NOT NULL,
  `DEFECT_CODE` varchar(25) NOT NULL,
  `DIVISION_CODE` varchar(25) DEFAULT NULL,
  `DEFECT_GROUP` varchar(25) DEFAULT NULL,
  `DEFECT_NAME` varchar(25) DEFAULT NULL,
  `INSERT_DATETIME` varchar(25) DEFAULT NULL,
  `INSERT_USER` varchar(25) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(25) DEFAULT NULL,
  `UPDATE_USER` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_division_code`
--

CREATE TABLE `dmc_division_code` (
  `DIVISION_ID` int(11) NOT NULL,
  `DIVISION_CODE` varchar(60) DEFAULT NULL,
  `DIVISION_NAME` varchar(60) DEFAULT NULL,
  `SAP_DIVISION_CODE` varchar(70) DEFAULT NULL,
  `INSERT_DATETIME` varchar(50) DEFAULT NULL,
  `INSERT_USER` varchar(50) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(50) DEFAULT NULL,
  `UPDATE_USER` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_item_list`
--

CREATE TABLE `dmc_item_list` (
  `ITEM_ID` int(11) NOT NULL,
  `DIVISION_CODE` varchar(50) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(50) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(50) DEFAULT NULL,
  `BARCODE` varchar(4) DEFAULT NULL,
  `ITEM_CODE` varchar(50) NOT NULL,
  `ITEM_NAME` varchar(50) DEFAULT NULL,
  `MODEL` varchar(50) DEFAULT NULL,
  `ITEM_PRINTCODE` varchar(50) DEFAULT NULL,
  `GROUP_CODE` varchar(50) DEFAULT NULL,
  `PACK_QTY` int(100) NOT NULL,
  `DANPLA_QTY` int(100) NOT NULL,
  `LABEL_TYPE` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `INSERT_DATETIME` varchar(50) DEFAULT NULL,
  `INSERT_USER` varchar(50) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(50) DEFAULT NULL,
  `UPDATE_USER` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_item_mold_matching`
--

CREATE TABLE `dmc_item_mold_matching` (
  `NO` int(11) NOT NULL,
  `BARCODE` varchar(5) NOT NULL,
  `ITEM_CODE` varchar(50) DEFAULT NULL,
  `ITEM_NAME` varchar(250) DEFAULT NULL,
  `MODEL` varchar(80) DEFAULT NULL,
  `ITEM_PRINTCODE` varchar(80) DEFAULT NULL,
  `TOOL_NUMBER` varchar(50) DEFAULT NULL,
  `MACHINE_CODE` varchar(50) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(20) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(250) DEFAULT NULL,
  `CAVITY` varchar(50) DEFAULT NULL,
  `INSERT_DATETIME` varchar(50) DEFAULT NULL,
  `INSERT_USER` varchar(50) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(50) DEFAULT NULL,
  `UPDATE_USER` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_machine_list`
--

CREATE TABLE `dmc_machine_list` (
  `MACHINE_ID` int(11) NOT NULL,
  `MACHINE_CODE` varchar(60) NOT NULL,
  `MACHINE_MAKER` varchar(60) DEFAULT NULL,
  `TONNAGE` varchar(60) DEFAULT NULL,
  `MACHINE_GROUP` varchar(60) DEFAULT NULL,
  `ASSET_NUMBER` varchar(60) DEFAULT NULL,
  `INSERT_DATETIME` varchar(60) DEFAULT NULL,
  `INSERT_USER` varchar(60) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(60) DEFAULT NULL,
  `UPDATE_USER` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_mold_list`
--

CREATE TABLE `dmc_mold_list` (
  `MOLD_ID` int(11) NOT NULL,
  `MOLD_CODE` varchar(25) DEFAULT NULL,
  `TOOL_NUMBER` varchar(25) DEFAULT NULL,
  `ITEM_CODE` varchar(25) DEFAULT NULL,
  `ITEM_NAME` varchar(60) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(25) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(50) DEFAULT NULL,
  `APPROVAL_DATE` varchar(60) DEFAULT NULL,
  `DRAWING_REVISION` varchar(25) DEFAULT NULL,
  `GUARANTEE_SHOT` varchar(25) DEFAULT NULL,
  `MOLD_SHOT` int(11) DEFAULT NULL,
  `CAVITY` int(25) DEFAULT NULL,
  `MOLD_REMARKS` varchar(25) DEFAULT NULL,
  `ASSET_NUMBER` varchar(25) NOT NULL,
  `INSERT_DATETIME` varchar(60) DEFAULT NULL,
  `INSERT_USER` varchar(60) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(60) DEFAULT NULL,
  `UPDATE_USER` varchar(25) DEFAULT NULL,
  `TRANSFER_DATE` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_packing_list`
--

CREATE TABLE `dmc_packing_list` (
  `NO` int(11) NOT NULL,
  `ITEM_CODE` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MODEL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ITEM_PRINTCODE` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CUSTOMER_CODE` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CUSTOMER_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PACK_QTY` int(11) DEFAULT NULL,
  `DANPLA_QTY` int(11) DEFAULT NULL,
  `LABEL_TYPE` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_user_authority`
--

CREATE TABLE `dmc_user_authority` (
  `AUTHORITY_ID` int(11) NOT NULL,
  `AUTHORITY_CODE` varchar(25) DEFAULT NULL,
  `USER_AUTHORITY` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmc_user_info`
--

CREATE TABLE `dmc_user_info` (
  `NO` int(11) NOT NULL,
  `USER_ID` varchar(50) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `USER_PASSWORD` varchar(64) DEFAULT NULL,
  `USER_AUTHORITY` varchar(50) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(50) DEFAULT NULL,
  `TOKEN` varchar(100) DEFAULT NULL,
  `INSERT_USER` varchar(50) DEFAULT NULL,
  `INSERT_DATETIME` varchar(50) DEFAULT NULL,
  `UPDATE_USER` varchar(50) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jo_update_hist`
--

CREATE TABLE `jo_update_hist` (
  `JO_HIST_ID` int(11) NOT NULL,
  `JOB_ORDER_NO` varchar(70) DEFAULT NULL,
  `JO_DATE` varchar(70) DEFAULT NULL,
  `ITEM_CODE` varchar(70) DEFAULT NULL,
  `ITEM_NAME` varchar(70) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(70) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(70) DEFAULT NULL,
  `MACHINE_CODE` varchar(70) DEFAULT NULL,
  `PLAN_QTY` varchar(70) DEFAULT NULL,
  `DATE_UPLOADED` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdm_machine_history`
--

CREATE TABLE `mdm_machine_history` (
  `MACHINE_HISTORY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdm_machine_pm`
--

CREATE TABLE `mdm_machine_pm` (
  `MACHINE_PM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mis_product`
--

CREATE TABLE `mis_product` (
  `ID` int(11) NOT NULL,
  `NO` varchar(60) NOT NULL,
  `JO_BARCODE` varchar(70) NOT NULL,
  `JO_NUM` varchar(70) NOT NULL,
  `PRINT_DATE` varchar(70) NOT NULL,
  `ITEM_CODE` varchar(70) NOT NULL,
  `ITEM_NAME` varchar(70) NOT NULL,
  `CUST_CODE` varchar(70) NOT NULL,
  `CUST_NAME` varchar(60) NOT NULL,
  `PRINT_QTY` varchar(70) NOT NULL,
  `DANPLA` varchar(70) NOT NULL,
  `ACTUAL_QTY` varchar(70) NOT NULL,
  `DATE_` date NOT NULL,
  `TOOL_NUM` varchar(70) NOT NULL,
  `SHIFT` varchar(70) NOT NULL,
  `LOT_NUM` varchar(70) NOT NULL,
  `PACKING_NUMBER` varchar(70) NOT NULL,
  `PRINTED_BY` varchar(70) NOT NULL,
  `MACHINE_CODE` varchar(70) DEFAULT NULL,
  `SAP_TRANSFER_STATUS` varchar(70) DEFAULT NULL,
  `SHIP_STATUS` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mis_prod_plan_dl`
--

CREATE TABLE `mis_prod_plan_dl` (
  `ID` int(11) NOT NULL,
  `NO` varchar(60) DEFAULT NULL,
  `DATE_` date DEFAULT NULL,
  `JOB_ORDER_NO` varchar(60) NOT NULL,
  `ITEM_CODE` varchar(60) NOT NULL,
  `ITEM_NAME` varchar(60) DEFAULT NULL,
  `MACHINE_CODE` varchar(60) NOT NULL,
  `MACHINE_MAKER` varchar(60) DEFAULT NULL,
  `TONNAGE` varchar(60) DEFAULT NULL,
  `MACHINE_GROUP` varchar(60) DEFAULT NULL,
  `CYCLE_TIME` varchar(70) DEFAULT NULL,
  `TOOL_NUMBER` varchar(60) DEFAULT NULL,
  `PRIORITY` varchar(60) DEFAULT NULL,
  `PLAN_QTY` varchar(60) NOT NULL,
  `PROD_RESULT` varchar(60) DEFAULT NULL,
  `ACHIEVE_RATE` varchar(60) DEFAULT NULL,
  `DEFECT_RATE` varchar(60) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(60) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(60) NOT NULL,
  `PROD_OUTPUT_STATUS` varchar(50) DEFAULT NULL,
  `SALES_ORDER` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mis_summarize_results`
--

CREATE TABLE `mis_summarize_results` (
  `NO` int(11) NOT NULL,
  `JOB_ORDER_NO` varchar(70) NOT NULL,
  `PROD_RESULT` varchar(70) NOT NULL,
  `ACHIEVE_RATE` varchar(70) NOT NULL,
  `DEFECT_RATE` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mmc_mold_fabrication`
--

CREATE TABLE `mmc_mold_fabrication` (
  `MOLD_FABRICATION_ID` int(11) NOT NULL,
  `ORDER_NO` int(11) NOT NULL,
  `MANUFACTURE_DATE` varchar(50) NOT NULL,
  `MOLD_CODE` varchar(50) NOT NULL,
  `CUSTOMER_CODE` varchar(50) NOT NULL,
  `CUSTOMER_NAME` varchar(50) NOT NULL,
  `CURRENT_PROCESS` varchar(50) NOT NULL,
  `DESIGN-1` varchar(50) NOT NULL,
  `DESIGN-1_OPERATOR` varchar(50) NOT NULL,
  `DESIGN-2` varchar(50) NOT NULL,
  `DESIGN-2_OPERATOR` varchar(50) NOT NULL,
  `DESIGN-3` varchar(50) NOT NULL,
  `DESIGN-3_OPERATOR` varchar(50) NOT NULL,
  `RADIAL-1` varchar(50) NOT NULL,
  `RADIAL-1_OPERATOR` varchar(50) NOT NULL,
  `LATHER-1` varchar(50) NOT NULL,
  `LATHER-1_OPERATOR` varchar(50) NOT NULL,
  `BANDSAW` varchar(50) NOT NULL,
  `BANDSAW_OPERATOR` varchar(50) NOT NULL,
  `ML` varchar(50) NOT NULL,
  `ML_OPERATOR` varchar(50) NOT NULL,
  `GS-1` varchar(50) NOT NULL,
  `GS-1_OPERATOR` varchar(50) NOT NULL,
  `GS-2` varchar(50) NOT NULL,
  `GS-2_OPERATOR` varchar(50) NOT NULL,
  `HSM` varchar(50) NOT NULL,
  `HSM_OPERATOR` varchar(50) NOT NULL,
  `HSM-1` varchar(50) NOT NULL,
  `HSM-1_OPERATOR` varchar(50) NOT NULL,
  `HSM-2` varchar(50) NOT NULL,
  `HSM-2_OPERATOR` varchar(50) NOT NULL,
  `WEDM` varchar(50) NOT NULL,
  `WEDM_OPERATOR` varchar(50) NOT NULL,
  `M-EDM` varchar(50) NOT NULL,
  `M-EDM_OPERATOR` varchar(50) NOT NULL,
  `EDM` varchar(50) NOT NULL,
  `EDM_OPERATOR` varchar(50) NOT NULL,
  `ASSEMBLE-1` varchar(50) NOT NULL,
  `ASSEMBLE-1_OPERATOR` varchar(50) NOT NULL,
  `POLISHING-1` varchar(50) NOT NULL,
  `POLISHING-1_OPERATOR` varchar(50) NOT NULL,
  `DELIVERY_PLAN` varchar(50) NOT NULL,
  `FINISHED_DATE` varchar(50) NOT NULL,
  `OPERATOR` varchar(50) NOT NULL,
  `INSERT_USER` varchar(50) NOT NULL,
  `INSERT_DATETIME` varchar(50) NOT NULL,
  `UPDATE_USER` varchar(50) NOT NULL,
  `UPDATE_DATETIME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mmc_mold_fabrication_process`
--

CREATE TABLE `mmc_mold_fabrication_process` (
  `MOLD_PROCESS_ID` int(11) NOT NULL,
  `PROCESS_NAME` varchar(50) NOT NULL,
  `INSERT_USER` varchar(50) NOT NULL,
  `INSERT_DATETIME` varchar(50) NOT NULL,
  `UPDATE_USER` varchar(50) NOT NULL,
  `UPDATE_DATETIME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mmc_mold_history`
--

CREATE TABLE `mmc_mold_history` (
  `MOLD_HISTORY_ID` int(11) NOT NULL,
  `MOLD_CODE` varchar(50) NOT NULL,
  `REQUEST_DATE` varchar(50) NOT NULL,
  `REPAIR_DATE` varchar(50) NOT NULL,
  `MOLD_SHOT` int(11) NOT NULL,
  `INSERT_USER` varchar(50) NOT NULL,
  `INSERT_DATETIME` varchar(50) NOT NULL,
  `UPDATE_USER` varchar(50) NOT NULL,
  `UPDATE_DATETIME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mmc_mold_repair`
--

CREATE TABLE `mmc_mold_repair` (
  `MOLD_REPAIR_ID` int(11) NOT NULL,
  `INSERT_DATETIME` varchar(50) DEFAULT NULL,
  `REQUEST_DATE` varchar(50) DEFAULT NULL,
  `MOLD_REPAIR_CONTROL_NO` int(5) UNSIGNED ZEROFILL NOT NULL,
  `MOLD_CODE` varchar(50) DEFAULT NULL,
  `TOOL_NUMBER` varchar(50) DEFAULT NULL,
  `ITEM_NAME` varchar(60) DEFAULT NULL,
  `ITEM_CODE` varchar(50) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(100) NOT NULL,
  `MOLD_SHOT` int(11) NOT NULL,
  `MACHINE_CODE` varchar(50) DEFAULT NULL,
  `DATE_REQUIRED` varchar(50) DEFAULT NULL,
  `TIME_REQUIRED` varchar(50) DEFAULT NULL,
  `DEFECT_NAME` varchar(50) DEFAULT NULL,
  `REPAIR_REMARKS` varchar(50) DEFAULT NULL,
  `USER_REQUEST` varchar(100) NOT NULL,
  `USER_UPDATE` varchar(100) NOT NULL,
  `APPROVER` varchar(50) DEFAULT NULL,
  `MOLD_STATUS` varchar(50) NOT NULL,
  `MRI001` varchar(11) DEFAULT NULL,
  `MRI002` varchar(11) DEFAULT NULL,
  `MRI003` varchar(11) DEFAULT NULL,
  `MRI004` varchar(11) DEFAULT NULL,
  `MRI005` varchar(11) DEFAULT NULL,
  `MRI006` varchar(11) DEFAULT NULL,
  `MRI007` varchar(11) DEFAULT NULL,
  `MRI008` varchar(11) DEFAULT NULL,
  `MRI009` varchar(100) NOT NULL,
  `MRI010` varchar(100) NOT NULL,
  `MRI011` varchar(100) NOT NULL,
  `MRI012` varchar(100) NOT NULL,
  `MRI013` varchar(100) NOT NULL,
  `MRI014` varchar(100) NOT NULL,
  `MRI015` varchar(100) NOT NULL,
  `MRI016` varchar(100) NOT NULL,
  `MRI017` varchar(100) NOT NULL,
  `MRI018` varchar(100) NOT NULL,
  `MRI019` varchar(100) NOT NULL,
  `MRI020` varchar(100) NOT NULL,
  `ACTION_TAKEN` varchar(255) NOT NULL,
  `UPDATE_DATETIME` varchar(50) NOT NULL,
  `APPROVE_DATETIME` varchar(50) NOT NULL,
  `CHECK_DATETIME` varchar(50) NOT NULL,
  `CHECKER` varchar(50) NOT NULL,
  `QC_APPROVER` varchar(50) NOT NULL,
  `QC_APPROVE_DATETIME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mmc_mold_scheduling`
--

CREATE TABLE `mmc_mold_scheduling` (
  `MOLD_SCHED_ID` int(11) NOT NULL,
  `NO` int(11) NOT NULL,
  `MOLD_PM_CONTROL_NO` varchar(50) NOT NULL,
  `MOLD_CODE` varchar(25) NOT NULL,
  `TOOL_NUMBER` varchar(50) NOT NULL,
  `ITEM_CODE` varchar(50) NOT NULL,
  `ITEM_NAME` varchar(50) NOT NULL,
  `CUSTOMER_CODE` varchar(50) NOT NULL,
  `CUSTOMER_NAME` varchar(50) NOT NULL,
  `MACHINE_CODE` varchar(50) NOT NULL,
  `MAINTENANCE_DATE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pathtable`
--

CREATE TABLE `pathtable` (
  `pathID` int(11) NOT NULL,
  `PathString` varchar(90) NOT NULL,
  `TabName` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qmd_danpla_tempstore`
--

CREATE TABLE `qmd_danpla_tempstore` (
  `TEMP_ID` int(10) NOT NULL,
  `DANPLA_SERIAL` varchar(255) NOT NULL,
  `JO_NUM` varchar(100) NOT NULL,
  `ITEM_CODE` varchar(255) NOT NULL,
  `ITEM_NAME` varchar(255) NOT NULL,
  `QUANTITY` int(10) NOT NULL,
  `MACHINE_CODE` varchar(255) NOT NULL,
  `LOT_JUDGEMENT` varchar(255) NOT NULL DEFAULT 'PENDING',
  `DEFECT_QTY` int(100) NOT NULL,
  `REMARKS` varchar(255) NOT NULL,
  `JUDGE_BY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qmd_defect_dl`
--

CREATE TABLE `qmd_defect_dl` (
  `LOT_DEFECT_ID` int(10) NOT NULL,
  `DIVISION_CODE` varchar(10) DEFAULT NULL,
  `JOB_ORDER_NO` varchar(255) NOT NULL,
  `LOT_NUMBER` varchar(255) DEFAULT NULL,
  `ITEM_CODE` varchar(50) DEFAULT NULL,
  `ITEM_NAME` varchar(100) DEFAULT NULL,
  `PROD_DATE` varchar(100) DEFAULT NULL,
  `DEFECT_CODE` varchar(100) DEFAULT NULL,
  `DEFECT_NAME` varchar(100) NOT NULL,
  `DEF_QUANTITY` int(11) NOT NULL,
  `LOT_QTY` int(100) DEFAULT NULL,
  `REJECTION_REMARKS` varchar(80) NOT NULL DEFAULT 'PENDING',
  `INSERT_DATETIME` varchar(100) DEFAULT NULL,
  `INSERT_USER` varchar(100) DEFAULT NULL,
  `UPDATE_DATETIME` varchar(100) DEFAULT NULL,
  `UPDATE_USER` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qmd_lot_create`
--

CREATE TABLE `qmd_lot_create` (
  `LOT_ID` int(11) NOT NULL,
  `PROD_DATE` varchar(255) NOT NULL,
  `LOT_NUMBER` varchar(255) NOT NULL,
  `JO_NUM` varchar(255) DEFAULT NULL,
  `LOT_QTY` int(255) NOT NULL,
  `LOT_CREATOR` varchar(255) DEFAULT NULL,
  `ITEM_CODE` varchar(255) DEFAULT NULL,
  `ITEM_NAME` varchar(255) DEFAULT NULL,
  `MACHINE_CODE` varchar(255) NOT NULL,
  `LOT_JUDGEMENT` varchar(255) DEFAULT 'PENDING',
  `DEFECT_QTY` int(255) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT '---',
  `JUDGE_BY` varchar(255) DEFAULT '---',
  `JUDGEMENT_DATE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qmd_lot_rework`
--

CREATE TABLE `qmd_lot_rework` (
  `LOT_JUDGE_ID` int(11) NOT NULL,
  `PROD_DATE` varchar(255) DEFAULT NULL,
  `LOT_NUMBER` varchar(255) DEFAULT NULL,
  `REWORK_ID` int(255) NOT NULL,
  `LOT_QTY` int(10) DEFAULT NULL,
  `DEFECT_QTY` int(10) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `JUDGE_BY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testing_table`
--

CREATE TABLE `testing_table` (
  `ID` int(11) NOT NULL,
  `DATE_` date NOT NULL,
  `JOB_ORDER_NO` varchar(90) NOT NULL,
  `ITEM_CODE` varchar(90) NOT NULL,
  `ITEM_NAME` varchar(90) NOT NULL,
  `CUSTOMER_CODE` varchar(90) NOT NULL,
  `CUSTOMER_NAME` varchar(90) NOT NULL,
  `MACHINE_CODE` varchar(90) NOT NULL,
  `PLAN_QTY` varchar(90) NOT NULL,
  `SALES_ORDER` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checklist_master_data`
--
ALTER TABLE `checklist_master_data`
  ADD PRIMARY KEY (`SEQUENCE`);

--
-- Indexes for table `dmc_customer`
--
ALTER TABLE `dmc_customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD UNIQUE KEY `CUSTOMER_CODE` (`CUSTOMER_CODE`);

--
-- Indexes for table `dmc_defect_code`
--
ALTER TABLE `dmc_defect_code`
  ADD PRIMARY KEY (`DEFECT_ID`),
  ADD UNIQUE KEY `DEFECT_CODE` (`DEFECT_CODE`);

--
-- Indexes for table `dmc_division_code`
--
ALTER TABLE `dmc_division_code`
  ADD PRIMARY KEY (`DIVISION_ID`),
  ADD UNIQUE KEY `DIVISION_CODE` (`DIVISION_CODE`),
  ADD UNIQUE KEY `SAP_DIVISION_CODE` (`SAP_DIVISION_CODE`);

--
-- Indexes for table `dmc_item_list`
--
ALTER TABLE `dmc_item_list`
  ADD PRIMARY KEY (`ITEM_ID`),
  ADD UNIQUE KEY `ITEM_CODE` (`ITEM_CODE`);

--
-- Indexes for table `dmc_item_mold_matching`
--
ALTER TABLE `dmc_item_mold_matching`
  ADD PRIMARY KEY (`NO`);

--
-- Indexes for table `dmc_machine_list`
--
ALTER TABLE `dmc_machine_list`
  ADD PRIMARY KEY (`MACHINE_ID`),
  ADD UNIQUE KEY `MACHINE_CODE` (`MACHINE_CODE`);

--
-- Indexes for table `dmc_mold_list`
--
ALTER TABLE `dmc_mold_list`
  ADD PRIMARY KEY (`MOLD_ID`),
  ADD UNIQUE KEY `MOLD_CODE` (`MOLD_CODE`);

--
-- Indexes for table `dmc_packing_list`
--
ALTER TABLE `dmc_packing_list`
  ADD PRIMARY KEY (`NO`),
  ADD UNIQUE KEY `ITEM_CODE` (`ITEM_CODE`),
  ADD KEY `NO` (`NO`);

--
-- Indexes for table `dmc_user_authority`
--
ALTER TABLE `dmc_user_authority`
  ADD PRIMARY KEY (`AUTHORITY_ID`),
  ADD UNIQUE KEY `AUTHORITY_CODE` (`AUTHORITY_CODE`);

--
-- Indexes for table `dmc_user_info`
--
ALTER TABLE `dmc_user_info`
  ADD PRIMARY KEY (`NO`),
  ADD UNIQUE KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `jo_update_hist`
--
ALTER TABLE `jo_update_hist`
  ADD PRIMARY KEY (`JO_HIST_ID`);

--
-- Indexes for table `mdm_machine_history`
--
ALTER TABLE `mdm_machine_history`
  ADD PRIMARY KEY (`MACHINE_HISTORY_ID`);

--
-- Indexes for table `mdm_machine_pm`
--
ALTER TABLE `mdm_machine_pm`
  ADD PRIMARY KEY (`MACHINE_PM_ID`);

--
-- Indexes for table `mis_product`
--
ALTER TABLE `mis_product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mis_prod_plan_dl`
--
ALTER TABLE `mis_prod_plan_dl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mis_summarize_results`
--
ALTER TABLE `mis_summarize_results`
  ADD PRIMARY KEY (`NO`);

--
-- Indexes for table `mmc_mold_fabrication`
--
ALTER TABLE `mmc_mold_fabrication`
  ADD PRIMARY KEY (`MOLD_FABRICATION_ID`);

--
-- Indexes for table `mmc_mold_fabrication_process`
--
ALTER TABLE `mmc_mold_fabrication_process`
  ADD PRIMARY KEY (`MOLD_PROCESS_ID`);

--
-- Indexes for table `mmc_mold_history`
--
ALTER TABLE `mmc_mold_history`
  ADD PRIMARY KEY (`MOLD_HISTORY_ID`);

--
-- Indexes for table `mmc_mold_repair`
--
ALTER TABLE `mmc_mold_repair`
  ADD PRIMARY KEY (`MOLD_REPAIR_ID`),
  ADD UNIQUE KEY `MOLD_REPAIR_CONTROL_NO` (`MOLD_REPAIR_CONTROL_NO`);

--
-- Indexes for table `mmc_mold_scheduling`
--
ALTER TABLE `mmc_mold_scheduling`
  ADD PRIMARY KEY (`MOLD_SCHED_ID`),
  ADD UNIQUE KEY `MOLD_CODE` (`MOLD_CODE`),
  ADD UNIQUE KEY `ITEM_CODE` (`ITEM_CODE`),
  ADD KEY `CC_MS` (`CUSTOMER_CODE`),
  ADD KEY `McC_MS` (`MACHINE_CODE`);

--
-- Indexes for table `pathtable`
--
ALTER TABLE `pathtable`
  ADD PRIMARY KEY (`pathID`);

--
-- Indexes for table `qmd_danpla_tempstore`
--
ALTER TABLE `qmd_danpla_tempstore`
  ADD PRIMARY KEY (`TEMP_ID`);

--
-- Indexes for table `qmd_defect_dl`
--
ALTER TABLE `qmd_defect_dl`
  ADD PRIMARY KEY (`LOT_DEFECT_ID`);

--
-- Indexes for table `qmd_lot_create`
--
ALTER TABLE `qmd_lot_create`
  ADD PRIMARY KEY (`LOT_ID`);

--
-- Indexes for table `qmd_lot_rework`
--
ALTER TABLE `qmd_lot_rework`
  ADD PRIMARY KEY (`LOT_JUDGE_ID`);

--
-- Indexes for table `testing_table`
--
ALTER TABLE `testing_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dmc_customer`
--
ALTER TABLE `dmc_customer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `dmc_defect_code`
--
ALTER TABLE `dmc_defect_code`
  MODIFY `DEFECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `dmc_division_code`
--
ALTER TABLE `dmc_division_code`
  MODIFY `DIVISION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dmc_item_list`
--
ALTER TABLE `dmc_item_list`
  MODIFY `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `dmc_item_mold_matching`
--
ALTER TABLE `dmc_item_mold_matching`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=774;

--
-- AUTO_INCREMENT for table `dmc_machine_list`
--
ALTER TABLE `dmc_machine_list`
  MODIFY `MACHINE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `dmc_mold_list`
--
ALTER TABLE `dmc_mold_list`
  MODIFY `MOLD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `dmc_packing_list`
--
ALTER TABLE `dmc_packing_list`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `dmc_user_authority`
--
ALTER TABLE `dmc_user_authority`
  MODIFY `AUTHORITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dmc_user_info`
--
ALTER TABLE `dmc_user_info`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `jo_update_hist`
--
ALTER TABLE `jo_update_hist`
  MODIFY `JO_HIST_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdm_machine_pm`
--
ALTER TABLE `mdm_machine_pm`
  MODIFY `MACHINE_PM_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mis_product`
--
ALTER TABLE `mis_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1145;

--
-- AUTO_INCREMENT for table `mis_prod_plan_dl`
--
ALTER TABLE `mis_prod_plan_dl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1540;

--
-- AUTO_INCREMENT for table `mis_summarize_results`
--
ALTER TABLE `mis_summarize_results`
  MODIFY `NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `mmc_mold_fabrication`
--
ALTER TABLE `mmc_mold_fabrication`
  MODIFY `MOLD_FABRICATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mmc_mold_fabrication_process`
--
ALTER TABLE `mmc_mold_fabrication_process`
  MODIFY `MOLD_PROCESS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mmc_mold_history`
--
ALTER TABLE `mmc_mold_history`
  MODIFY `MOLD_HISTORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mmc_mold_repair`
--
ALTER TABLE `mmc_mold_repair`
  MODIFY `MOLD_REPAIR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `mmc_mold_scheduling`
--
ALTER TABLE `mmc_mold_scheduling`
  MODIFY `MOLD_SCHED_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pathtable`
--
ALTER TABLE `pathtable`
  MODIFY `pathID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qmd_danpla_tempstore`
--
ALTER TABLE `qmd_danpla_tempstore`
  MODIFY `TEMP_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `qmd_defect_dl`
--
ALTER TABLE `qmd_defect_dl`
  MODIFY `LOT_DEFECT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `qmd_lot_create`
--
ALTER TABLE `qmd_lot_create`
  MODIFY `LOT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `qmd_lot_rework`
--
ALTER TABLE `qmd_lot_rework`
  MODIFY `LOT_JUDGE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `testing_table`
--
ALTER TABLE `testing_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mmc_mold_scheduling`
--
ALTER TABLE `mmc_mold_scheduling`
  ADD CONSTRAINT `CC_MS` FOREIGN KEY (`CUSTOMER_CODE`) REFERENCES `dmc_customer` (`CUSTOMER_CODE`),
  ADD CONSTRAINT `IC_MS` FOREIGN KEY (`ITEM_CODE`) REFERENCES `dmc_item_list` (`ITEM_CODE`),
  ADD CONSTRAINT `MC_MS` FOREIGN KEY (`MOLD_CODE`) REFERENCES `dmc_mold_list` (`MOLD_CODE`),
  ADD CONSTRAINT `McC_MS` FOREIGN KEY (`MACHINE_CODE`) REFERENCES `dmc_machine_list` (`MACHINE_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
