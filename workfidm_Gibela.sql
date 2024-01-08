-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2024 at 03:34 PM
-- Server version: 10.5.23-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workfidm_Gibela`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activity`
--

CREATE TABLE `Activity` (
  `ActivityID` int(11) NOT NULL,
  `ActivityName` text NOT NULL,
  `ActivityType` enum('System','User') NOT NULL DEFAULT 'User',
  `AcitivityDescription` text NOT NULL,
  `Stage` int(11) NOT NULL,
  `InputID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Activity`
--

INSERT INTO `Activity` (`ActivityID`, `ActivityName`, `ActivityType`, `AcitivityDescription`, `Stage`, `InputID`) VALUES
(1, 'Train Added', 'User', 'Train Added', 1, 6),
(2, 'Upload Routine Test Report', 'User', 'Upload Routine Test Report', 1, 4),
(3, 'Approve Routine Test Report', 'User', 'Approve Routine Test Report', 1, 5),
(4, 'Send Routine Test to PRASA', 'System', 'Send Routine Test to PRASA', 1, 6),
(5, 'Ready for PC10 day', 'User', 'Ready for PC10 day', 1, 2),
(6, 'Send PC10 Invite Notification ', 'System', 'Send PC10 Invite Notification ', 1, 6),
(7, 'PC10 Ready?', 'User', 'PC10 Ready?', 1, 3),
(8, 'PC10 Inspection', 'User', 'PC10 Inspection (Oil document, must also record the date in which the Oil was performed).. Be able to capture snag and number of the snags.', 2, 4),
(9, 'Upload new train acceptance documents ', 'User', 'Upload new train acceptance documents (Work Test Readiness review, delivery readiness review, acceptance test readiness review, acceptance readiness review). Mali must upload 4 documents, PRASA signs and approves (timestamp signature)', 2, 4),
(11, 'PRASA approves the train acceptance documents', 'User', 'PRASA approves the train acceptance documents', 2, 5),
(12, 'Upload and Approve Routine Test Report (Document Control)', 'User', 'Upload and Approve Routine Test Report (Document Control)', 2, 4),
(13, 'System generate Routine Test Report email and send it for validation', 'System', 'Validation of Routine Test Report and autoemail to PRASA (Email is PC10GO)', 2, 6),
(14, 'Validate Routine Test Report email', 'User', 'Validation of Routine Test Report and autoemail to PRASA (Email is PC10GO)', 2, 5),
(15, 'Approve Routine Test Report email', 'User', 'Validation of Routine Test Report and autoemail to PRASA (Email is PC10GO)', 2, 5),
(16, 'System emails Routine Test report to PRASA (Email is PC10GO)', 'System', 'Validation of Routine Test Report and autoemail to PRASA (Email is PC10GO)', 2, 6),
(17, 'Upload Datababook_A0', 'User', 'Upload Datababook_A0', 3, 4),
(18, 'Validate that Oil/Snag Items/ Defect Report are Closed', 'User', 'Validate that Oil/Snag Items/ Defect Report are Closed', 3, 1),
(19, 'Upload Work Test Certificate by PRASA', 'User', 'Upload Work Test Certificate by PRASA (System must trigger)', 3, 4),
(20, 'Upload Delivery Readiness Certificate by PRASA ', 'User', 'Upload Delivery Readiness Certificate by PRASA (System must trigger)', 3, 6),
(21, 'Record Expected Train Departure Date', 'User', '1) Record Expected Train Departure Date <br/> 2. Generate Ready to Move Letter and Issue Train movement request letter <br/> 3. Validate the ready to move letter <br/>4.Issue ready to move letter to PRASA Movement', 3, 4),
(22, 'Generate Ready to Move Letter (including email) ', 'User', 'Generate Ready to Move Letter (including email) ', 3, 6),
(23, 'Validate the ready to move letter', 'User', 'Validate the ready to move letter', 3, 5),
(24, 'Approve ready to move letter', 'User', 'Approve ready to move letter', 3, 5),
(25, 'System Issue ready to move letter to PRASA Movement', 'System', 'Issue ready to move letter to PRASA Movement', 3, 6),
(26, 'Upload YQ Report', 'User', 'Upload YQ Report', 3, 3),
(27, 'Generate Acceptance Test Letter (including email) ', 'System', 'Generate Acceptance Test Letter (including email) ', 3, 4),
(28, 'Approve Acceptance Test letter (Suraya)', 'User', 'Approve Acceptance Test letter (Suraya)', 3, 5),
(29, 'Validate Acceptance Test  letter', 'User', 'Validate Acceptance Test  letter', 3, 5),
(30, 'Issue Acceptance Test letter to PRASA', 'System', 'Issue Acceptance Test letter to PRASA', 3, 6),
(31, 'Perform predeparture quality inspection', 'User', '1) Perform predeparture quality inspection: Quality <br/> 2. Approve Predeparture quality review (Suraya)', 3, 2),
(32, 'Approve Predeparture quality review (Suraya)', 'User', '1) Perform predeparture quality inspection: Quality <br/> 2. Approve Predeparture quality review (Suraya)', 3, 5),
(33, 'Record Train Actual Departure Date', 'User', 'Record Train Actual Departure Date', 3, 1),
(34, 'Capture Train Arrival in Wolmerton', 'User', 'Capture Train Arrival in Wolmerton', 4, 2),
(35, 'Upload Train Delivered to Wolmerton Certificate', 'User', 'Upload Train Delivered to Wolmerton Certificate', 5, 4),
(36, 'Upload High speed test report ', 'User', 'High Speed Test Done? (Upload this document must go to PRASA for Approval)', 6, 3),
(37, 'PRASA approve High Speed Test Report', 'User', 'High Speed Test Done? (Upload this document must go to PRASA for Approval)', 6, 5),
(38, 'Mali Upload Acceptance Test on Customer Track Report', 'User', 'Mali Upload Acceptance Test on Customer Track Report', 6, 4),
(39, 'PRASA approves Acceptance Test on Customer Track Report', 'User', 'PRASA approves Acceptance Test on Customer Track Report', 6, 5),
(40, 'Upload the summary Report ', 'User', 'Upload the summary Report ', 6, 4),
(41, 'Send Summary report to PRASA (No Validation Required) ', 'System', 'Send Summary report to PRASA (No Validation Required) ', 6, 6),
(42, 'PRE PC11 Inspection and upload the PrePC11 oil', 'User', 'PRE PC11 Inspection and upload the PrePC11 oil', 6, 4),
(43, 'Confirm Closed Oil(tick)', 'User', 'Confirm Closed Oil(tick)', 6, 3),
(44, 'PC11 Physical Inspection', 'User', 'PC11 Physical Inspection', 6, 4),
(45, 'Upload PC11 documentation (Upload Consolidated Open Issue List and Acceptance readiness report)', 'User', 'Upload PC11 documentation: 1) Upload Consolidated Open Issue List , and Acceptance readiness report) After upload documents must sent to PRASA for approval (Serial approval: NIC (1st) and Devren[2nd])', 6, 3),
(46, 'NIC PRASA approve PC11 Documents ', 'User', 'Send PC11 Documents to NIC PRASA for approval', 6, 6),
(47, 'Devren PRASA approve PC11 Documents ', 'User', 'Send PC11 Documents to Devren PRASA for approval once NIC has approved', 6, 5),
(48, 'Upload Keys Handover Form', 'User', 'Upload Keys Handover Form and automatically send to PRASA for approval  (Serial approval: Mali (1st) and Vuyi[2nd])', 6, 4),
(49, 'Mali approve key handover form', 'User', 'Mali approve key handover form', 6, 4),
(50, 'Vuyi PRASA approve key handover form', 'User', 'Vuyi PRASA approve key handover form', 6, 5),
(51, 'Upload DatabookA1 and PC11GO', 'User', 'Upload DatabookA1 and PC11GO', 6, 4),
(52, 'Generate PAC request letter (Including email) ', 'System', '1) Generarte PAC request letter \r\n2) Suraya approve PAC letter\r\n3) Todani validates the email and email gets sent to PRASA', 7, 6),
(53, 'Suraya approve PAC letter', 'User', 'Suraya approve PAC letter', 7, 5),
(54, 'Todani validates the email', 'User', 'Todani validates the email', 7, 5),
(55, 'System send PAC letter to PRASA', 'System', 'System send PAC letter to PRASA', 7, 6),
(56, 'Upload PAC and Capture PAC Date', 'User', 'Upload PAC and Capture PAC Date', 8, 4),
(57, 'Upload Payment Certficate', 'User', 'Issued Payment Certficate', 8, 2),
(58, 'Upload Final Acceptance Certificate and Capture FAC Date', 'User', 'Upload Final Acceptance Certificate and Capture FAC Date', 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ActivityButton`
--

CREATE TABLE `ActivityButton` (
  `ActivityButtonID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `ButtonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ActivityButton`
--

INSERT INTO `ActivityButton` (`ActivityButtonID`, `ActivityID`, `ButtonID`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 11, 1),
(5, 11, 2),
(6, 11, 3),
(7, 15, 1),
(8, 15, 2),
(9, 15, 3),
(13, 24, 1),
(14, 24, 2),
(15, 24, 3),
(16, 28, 1),
(17, 28, 2),
(18, 28, 3),
(19, 32, 1),
(20, 32, 2),
(21, 32, 3),
(22, 37, 1),
(23, 37, 2),
(24, 37, 3),
(25, 39, 1),
(26, 39, 2),
(27, 39, 3),
(28, 46, 1),
(29, 46, 2),
(30, 46, 3),
(31, 47, 1),
(32, 47, 2),
(33, 47, 3),
(34, 49, 1),
(35, 49, 2),
(36, 49, 3),
(37, 50, 1),
(38, 50, 2),
(39, 50, 3),
(40, 53, 1),
(41, 53, 2),
(42, 53, 3),
(43, 14, 1),
(44, 14, 2),
(45, 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ActivityDraftEmails`
--

CREATE TABLE `ActivityDraftEmails` (
  `ActivityDraftEmailsID` int(11) NOT NULL,
  `EmailBody` text NOT NULL,
  `EmailSubject` varchar(300) NOT NULL,
  `EmailReceipent` text NOT NULL,
  `TrainActivityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ActivityDraftEmails`
--

INSERT INTO `ActivityDraftEmails` (`ActivityDraftEmailsID`, `EmailBody`, `EmailSubject`, `EmailReceipent`, `TrainActivityID`) VALUES
(20, 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 001 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 001for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Train: TS 001 | Activity: Routine Test Report Attached', 'mletshaba@gmail.com, prasa@workflowapproval.co.za', 979),
(21, 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 006 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 006for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Train: TS 006 | Activity: Routine Test Report Attached', 'mletshaba@gmail.com, prasa@workflowapproval.co.za', 1002),
(22, 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 013 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 013for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Train: TS 013 | Activity: Routine Test Report Attached', 'mletshaba@gmail.com, prasa@workflowapproval.co.za', 1040),
(23, 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 026 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 026for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Train: TS 026 | Activity: Routine Test Report Attached', 'mletshaba@gmail.com, prasa@workflowapproval.co.za', 1056);

-- --------------------------------------------------------

--
-- Table structure for table `ActivityNotification`
--

CREATE TABLE `ActivityNotification` (
  `ActivityNotificationID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `NotifyType` enum('Notify for next','Notify Completed') NOT NULL DEFAULT 'Notify Completed'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ActivityNotification`
--

INSERT INTO `ActivityNotification` (`ActivityNotificationID`, `ActivityID`, `RoleID`, `NotifyType`) VALUES
(2, 9, 6, 'Notify for next'),
(3, 14, 3, 'Notify for next');

-- --------------------------------------------------------

--
-- Table structure for table `Approval`
--

CREATE TABLE `Approval` (
  `ApprovalID` int(11) NOT NULL,
  `TrainID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `ButtonID` int(11) NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Approval`
--

INSERT INTO `Approval` (`ApprovalID`, `TrainID`, `ActivityID`, `UserID`, `Date`, `ButtonID`, `Comment`) VALUES
(1, 1, 3, 54, '2024-01-03 09:37:20', 1, ''),
(2, 1, 11, 54, '2024-01-03 12:44:47', 1, 'Approved'),
(3, 1, 11, 47, '2024-01-03 13:20:23', 1, ''),
(4, 2, 3, 47, '2024-01-03 13:50:01', 1, 'I approve'),
(5, 1, 14, 47, '2024-01-03 17:29:19', 1, 'I approve as a first approver'),
(6, 1, 14, 47, '2024-01-03 17:32:58', 1, 'I approve as firstt approver'),
(7, 1, 15, 47, '2024-01-03 17:40:01', 2, ''),
(8, 1, 14, 47, '2024-01-03 18:37:41', 1, ''),
(9, 1, 15, 47, '2024-01-03 18:37:54', 1, ''),
(10, 1, 14, 47, '2024-01-03 18:47:46', 1, ''),
(11, 1, 15, 47, '2024-01-03 18:47:51', 1, ''),
(12, 1, 14, 47, '2024-01-03 18:50:38', 1, ''),
(13, 1, 15, 47, '2024-01-03 18:50:57', 1, 'Seconnd approver yes'),
(14, 1, 14, 47, '2024-01-03 19:15:04', 1, ''),
(15, 1, 15, 47, '2024-01-03 19:15:11', 1, ''),
(16, 1, 14, 47, '2024-01-03 19:21:44', 1, ''),
(17, 1, 15, 47, '2024-01-03 19:21:48', 1, ''),
(18, 1, 14, 47, '2024-01-03 19:23:28', 1, ''),
(19, 1, 15, 47, '2024-01-03 19:23:32', 1, ''),
(20, 1, 14, 47, '2024-01-03 19:28:21', 1, ''),
(21, 1, 15, 47, '2024-01-03 19:28:26', 1, ''),
(22, 1, 14, 47, '2024-01-03 19:48:32', 1, ''),
(23, 1, 15, 47, '2024-01-03 19:48:36', 1, ''),
(24, 4, 3, 47, '2024-01-03 19:50:21', 1, 'I approve'),
(25, 6, 3, 47, '2024-01-03 19:55:38', 1, 'I approve'),
(26, 1, 14, 47, '2024-01-03 20:03:46', 1, ''),
(27, 1, 15, 47, '2024-01-03 20:03:50', 1, ''),
(28, 8, 3, 47, '2024-01-03 20:07:42', 1, 'I approve'),
(29, 6, 3, 47, '2024-01-04 13:35:09', 1, ''),
(30, 6, 3, 47, '2024-01-04 13:45:49', 1, 'I approve'),
(31, 6, 11, 47, '2024-01-04 14:04:14', 1, ''),
(32, 6, 14, 47, '2024-01-04 14:05:24', 1, ''),
(33, 6, 15, 47, '2024-01-04 14:05:29', 1, ''),
(34, 10, 3, 47, '2024-01-04 15:53:40', 1, 'I approve'),
(35, 12, 3, 47, '2024-01-04 16:34:57', 1, ''),
(36, 14, 3, 47, '2024-01-04 20:20:17', 1, 'I approve'),
(37, 13, 3, 47, '2024-01-04 20:26:55', 1, 'AAA'),
(38, 13, 11, 47, '2024-01-04 20:29:30', 1, 'AAA'),
(39, 13, 14, 47, '2024-01-04 20:30:30', 1, ''),
(40, 13, 15, 47, '2024-01-04 20:30:36', 1, ''),
(41, 26, 3, 47, '2024-01-05 15:06:59', 1, 'i approve'),
(42, 26, 11, 47, '2024-01-05 15:23:04', 1, 'I approve'),
(43, 26, 14, 47, '2024-01-05 15:25:48', 1, 'I approve the email'),
(44, 26, 15, 47, '2024-01-05 15:26:13', 1, 'I also approve the email');

-- --------------------------------------------------------

--
-- Table structure for table `ApprovalButton`
--

CREATE TABLE `ApprovalButton` (
  `ApprovalButtonID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ApprovalButton`
--

INSERT INTO `ApprovalButton` (`ApprovalButtonID`, `ActivityID`) VALUES
(1, 3),
(2, 11),
(3, 15),
(4, 15),
(5, 24),
(6, 28),
(7, 32),
(8, 37),
(9, 39),
(10, 46),
(11, 47),
(12, 49),
(13, 50),
(14, 53);

-- --------------------------------------------------------

--
-- Table structure for table `Audit_Log`
--

CREATE TABLE `Audit_Log` (
  `logID` int(11) NOT NULL,
  `ActivityID` varchar(100) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ActivityDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Audit_Log`
--

INSERT INTO `Audit_Log` (`logID`, `ActivityID`, `UserID`, `ActivityDate`) VALUES
(1, '1007', 53, '2024-01-02 15:15:54'),
(2, '', 1001, '2024-01-02 15:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `Button`
--

CREATE TABLE `Button` (
  `ButtonID` int(11) NOT NULL,
  `ButtonName` enum('Approve','Approve with Conditions','Decline','Yes','No','Go','No-Go') NOT NULL,
  `ButtonClass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Button`
--

INSERT INTO `Button` (`ButtonID`, `ButtonName`, `ButtonClass`) VALUES
(1, 'Approve', 'primary'),
(2, 'Approve with Conditions', 'info'),
(3, 'Decline', 'link'),
(4, 'Yes', 'success'),
(5, 'No', 'danger'),
(6, 'No-Go', 'danger'),
(7, 'Go', 'primary');

-- --------------------------------------------------------

--
-- Table structure for table `Dependency`
--

CREATE TABLE `Dependency` (
  `DepID` int(11) NOT NULL,
  `CurActID` int(11) NOT NULL,
  `PrevActID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Dependency`
--

INSERT INTO `Dependency` (`DepID`, `CurActID`, `PrevActID`) VALUES
(1, 11, 9),
(2, 39, 38),
(3, 46, 45),
(4, 47, 45),
(5, 50, 48);

-- --------------------------------------------------------

--
-- Table structure for table `EmailQueue`
--

CREATE TABLE `EmailQueue` (
  `EmailQueueID` int(11) NOT NULL,
  `ToEmail` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Message` text NOT NULL,
  `Status` enum('Pending','Sent','Failed') NOT NULL DEFAULT 'Pending',
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `TrainActivityID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `EmailQueue`
--

INSERT INTO `EmailQueue` (`EmailQueueID`, `ToEmail`, `Subject`, `Message`, `Status`, `CreatedAt`, `UpdateAt`, `TrainActivityID`) VALUES
(30, 'mletshaba@gmail.com', 'Train: TS 026 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 026 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 026for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Sent', '2024-01-05 13:27:09', '2024-01-05 13:30:13', 1056),
(31, ' prasa@workflowapproval.co.za', 'Train: TS 026 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 026 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 026for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Sent', '2024-01-05 13:27:09', '2024-01-05 13:30:13', 1056),
(29, ' prasa@workflowapproval.co.za', 'Train: TS 013 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 013 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 013for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Sent', '2024-01-04 18:31:05', '2024-01-04 18:40:06', 1040),
(28, 'mletshaba@gmail.com', 'Train: TS 013 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 013 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 013for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Sent', '2024-01-04 18:31:05', '2024-01-04 18:40:13', 1040),
(27, ' prasa@workflowapproval.co.za', 'Train: TS 006 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 006 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 006for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Sent', '2024-01-04 12:06:01', '2024-01-04 12:10:03', 1002),
(25, ' prasa@workflowapproval.co.za', 'Train: TS 001 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 001 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 001for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', '', '2024-01-03 18:04:26', '2024-01-03 18:05:26', 979),
(26, 'mletshaba@gmail.com', 'Train: TS 006 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 006 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 006for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', 'Sent', '2024-01-04 12:06:01', '2024-01-04 12:10:09', 1002),
(24, 'mletshaba@gmail.com', 'Train: TS 001 | Activity: Routine Test Report Attached', 'Dear <b>PRASA</b><br/><br/> \r\n \r\n      <b>Train: TS 001 | Activity: Routine Test Report Attached</b><br/><br/>\r\n      \r\n      Herewith the attached Routine Test Report for  train TS 001for your information. <br/><br/>\r\n      \r\n      Thank you <br/><br/>\r\n      \r\n      Gibela - Workflow Approval System', '', '2024-01-03 18:04:26', '2024-01-03 18:05:28', 979);

-- --------------------------------------------------------

--
-- Table structure for table `Input`
--

CREATE TABLE `Input` (
  `InputID` int(11) NOT NULL,
  `InputName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Input`
--

INSERT INTO `Input` (`InputID`, `InputName`) VALUES
(1, 'text'),
(2, 'date'),
(3, 'checkbox'),
(4, 'file'),
(5, 'Button'),
(6, 'System');

-- --------------------------------------------------------

--
-- Table structure for table `RoleActivity`
--

CREATE TABLE `RoleActivity` (
  `Ra_ID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `RoleActivity`
--

INSERT INTO `RoleActivity` (`Ra_ID`, `RoleID`, `ActivityID`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 5, 3),
(4, 9, 4),
(5, 4, 5),
(6, 9, 6),
(7, 4, 7),
(8, 4, 8),
(9, 4, 9),
(11, 6, 11),
(12, 5, 12),
(13, 9, 13),
(14, 4, 14),
(15, 3, 15),
(16, 9, 16),
(17, 4, 17),
(18, 4, 18),
(19, 6, 19),
(20, 6, 20),
(21, 4, 21),
(22, 9, 22),
(23, 4, 23),
(24, 3, 24),
(25, 9, 25),
(26, 4, 26),
(27, 9, 27),
(28, 1, 28),
(29, 4, 29),
(30, 3, 30),
(31, 4, 31),
(32, 1, 32),
(33, 4, 33),
(34, 4, 34),
(35, 4, 35),
(36, 4, 36),
(37, 6, 37),
(38, 4, 38),
(39, 6, 39),
(40, 4, 40),
(41, 9, 41),
(42, 4, 42),
(43, 4, 43),
(44, 4, 44),
(45, 4, 45),
(46, 6, 46),
(47, 6, 47),
(48, 4, 48),
(49, 4, 49),
(50, 6, 50),
(51, 4, 51),
(52, 9, 52),
(53, 1, 53),
(54, 5, 54),
(55, 9, 55),
(56, 4, 56),
(57, 4, 57),
(58, 4, 58),
(59, 10, 1),
(60, 10, 2),
(61, 10, 3),
(62, 10, 4),
(63, 10, 5),
(64, 10, 6),
(65, 10, 7),
(66, 10, 8),
(67, 10, 9),
(68, 10, 11),
(69, 10, 12),
(70, 10, 13),
(71, 10, 14),
(72, 10, 15),
(73, 10, 16),
(74, 10, 17),
(75, 10, 18),
(76, 10, 19),
(77, 10, 20),
(78, 10, 21),
(79, 10, 22),
(80, 10, 23),
(81, 10, 24),
(82, 10, 25),
(83, 10, 26),
(84, 10, 27),
(85, 10, 28),
(86, 10, 29),
(87, 10, 30),
(88, 10, 31),
(89, 10, 32),
(90, 10, 33),
(91, 10, 34),
(92, 10, 35),
(93, 10, 36),
(94, 10, 37),
(95, 10, 38),
(96, 10, 39),
(97, 10, 40),
(98, 10, 41),
(99, 10, 42),
(100, 10, 43),
(101, 10, 44),
(102, 10, 45),
(103, 10, 46),
(104, 10, 47),
(105, 10, 48),
(106, 10, 49),
(107, 10, 50),
(108, 10, 51),
(109, 10, 52),
(110, 10, 53),
(111, 10, 54),
(112, 10, 55),
(113, 10, 56),
(114, 10, 57),
(115, 10, 58);

-- --------------------------------------------------------

--
-- Table structure for table `Roles`
--

CREATE TABLE `Roles` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(50) NOT NULL,
  `Company` enum('PRASA','Gibela') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Roles`
--

INSERT INTO `Roles` (`RoleID`, `RoleName`, `Company`) VALUES
(1, 'Suraya Dept', 'Gibela'),
(3, 'Contracts', 'Gibela'),
(4, 'ProjectQuality', 'Gibela'),
(5, 'DocumentControl', 'Gibela'),
(6, 'PRASA', 'PRASA'),
(9, 'System', 'Gibela'),
(10, 'superuser', 'Gibela');

-- --------------------------------------------------------

--
-- Table structure for table `Stage`
--

CREATE TABLE `Stage` (
  `StageID` int(11) NOT NULL,
  `StageName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Stage`
--

INSERT INTO `Stage` (`StageID`, `StageName`) VALUES
(1, 'PC10 Ready'),
(2, 'PC10'),
(3, 'Ready to Move'),
(4, 'In Transit'),
(5, 'Ready for High Speed Test'),
(6, 'PC11'),
(7, 'PAC Request'),
(8, 'PAC'),
(12, 'FAC');

-- --------------------------------------------------------

--
-- Table structure for table `SystemActivity`
--

CREATE TABLE `SystemActivity` (
  `SystemActivityID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `Function` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `SystemActivity`
--

INSERT INTO `SystemActivity` (`SystemActivityID`, `ActivityID`, `Function`) VALUES
(1, 4, 'SendRoutineTesttoPRASA'),
(5, 13, 'GenerateRoutineTestReportEmail'),
(6, 6, 'SendPC10Invite'),
(7, 16, 'SendSecondRoutineToPRASA');

-- --------------------------------------------------------

--
-- Table structure for table `Tokens`
--

CREATE TABLE `Tokens` (
  `TokenID` int(11) NOT NULL,
  `Pin` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Tokens`
--

INSERT INTO `Tokens` (`TokenID`, `Pin`, `UserID`) VALUES
(3, 8081, 40),
(4, 9214, 1),
(5, 8118, 1),
(6, 5852, 1),
(7, 6542, 1),
(8, 7887, 1),
(9, 6593, 40),
(10, 4650, 47);

-- --------------------------------------------------------

--
-- Table structure for table `TrainActivity`
--

CREATE TABLE `TrainActivity` (
  `TrainActivityID` int(11) NOT NULL,
  `TrainID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Comments` text NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `TrainActivity`
--

INSERT INTO `TrainActivity` (`TrainActivityID`, `TrainID`, `ActivityID`, `DateTime`, `Comments`, `UserID`) VALUES
(1, 1, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(2, 2, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(3, 3, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(4, 4, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(5, 5, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(6, 6, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(7, 7, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(8, 8, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(9, 9, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(10, 10, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(11, 11, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(12, 12, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(13, 13, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(14, 14, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(15, 15, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(16, 16, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(17, 17, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(18, 18, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(19, 19, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(20, 20, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(21, 21, 1, '2024-01-03 07:35:46', 'Train Added', 47),
(22, 22, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(23, 23, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(24, 24, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(25, 25, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(26, 26, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(27, 27, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(28, 28, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(29, 29, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(30, 30, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(31, 31, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(32, 32, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(33, 33, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(34, 34, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(35, 35, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(36, 36, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(37, 37, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(38, 38, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(39, 39, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(40, 40, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(41, 41, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(42, 42, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(43, 43, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(44, 44, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(45, 45, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(46, 46, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(47, 47, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(48, 48, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(49, 49, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(50, 50, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(51, 51, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(52, 52, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(53, 53, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(54, 54, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(55, 55, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(56, 56, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(57, 57, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(58, 58, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(59, 59, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(60, 60, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(61, 61, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(62, 62, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(63, 63, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(64, 64, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(65, 65, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(66, 66, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(67, 67, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(68, 68, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(69, 69, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(70, 70, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(71, 71, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(72, 72, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(73, 73, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(74, 74, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(75, 75, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(76, 76, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(77, 77, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(78, 78, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(79, 79, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(80, 80, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(81, 81, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(82, 82, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(83, 83, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(84, 84, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(85, 85, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(86, 86, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(87, 87, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(88, 88, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(89, 89, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(90, 90, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(91, 91, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(92, 92, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(93, 93, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(94, 94, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(95, 95, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(96, 96, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(97, 97, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(98, 98, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(99, 99, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(100, 100, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(101, 101, 1, '2023-12-16 11:02:04', 'Uploaded by Administrator during development', 21),
(102, 102, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(103, 103, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(104, 104, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(105, 105, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(106, 106, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(107, 107, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(108, 108, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(109, 109, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(110, 110, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(111, 111, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(112, 112, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(113, 113, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(114, 114, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(115, 115, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(116, 116, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(117, 117, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(118, 118, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(119, 119, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(120, 120, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(121, 121, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(122, 122, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(123, 123, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(124, 124, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(125, 125, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(126, 126, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(127, 127, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(128, 128, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(129, 129, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(130, 130, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(131, 131, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(132, 132, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(133, 133, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(134, 134, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(135, 135, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(136, 136, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(137, 137, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(138, 138, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(139, 139, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(140, 140, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(141, 141, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(142, 142, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(143, 143, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(144, 144, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(145, 145, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(146, 146, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(147, 147, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(148, 148, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(149, 149, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(150, 150, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(151, 151, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(152, 152, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(153, 153, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(154, 154, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(155, 155, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(156, 156, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(157, 157, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(158, 158, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(159, 159, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(160, 160, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(161, 161, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(162, 162, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(163, 163, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(164, 164, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(165, 165, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(166, 166, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(167, 167, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(168, 168, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(169, 169, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(170, 170, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(171, 171, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(172, 172, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(173, 173, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(174, 174, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(175, 175, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(176, 176, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(177, 177, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(178, 178, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(179, 179, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(180, 180, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(181, 181, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(182, 182, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(183, 183, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(184, 184, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(185, 185, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(186, 186, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(187, 187, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(188, 188, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(189, 189, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(190, 190, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(191, 191, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(192, 192, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(193, 193, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(194, 194, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(195, 195, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(196, 196, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(197, 197, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(198, 198, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(199, 199, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(200, 200, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(201, 201, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(202, 202, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(203, 203, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(204, 204, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(205, 205, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(206, 206, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(207, 207, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(208, 208, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(209, 209, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(210, 210, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(211, 211, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(212, 212, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(213, 213, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(214, 214, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(215, 215, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(216, 216, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(217, 217, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(218, 218, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(219, 219, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(220, 220, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(221, 221, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(222, 222, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(223, 223, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(224, 224, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(225, 225, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(226, 226, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(227, 227, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(228, 228, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(229, 229, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(230, 230, 1, '2023-12-16 11:02:05', 'Uploaded by Administrator during development', 21),
(231, 231, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(232, 232, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(233, 233, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(234, 234, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(235, 235, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(236, 236, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(237, 237, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(238, 238, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(239, 239, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(240, 240, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(241, 241, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(242, 242, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(243, 243, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(244, 244, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(245, 245, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(246, 246, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(247, 247, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(248, 248, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(249, 249, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(250, 250, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(251, 251, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(252, 252, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(253, 253, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(254, 254, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(255, 255, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(256, 256, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(257, 257, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(258, 258, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(259, 259, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(260, 260, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(261, 261, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(262, 262, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(263, 263, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(264, 264, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(265, 265, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(266, 266, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(267, 267, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(268, 268, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(269, 269, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(270, 270, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(271, 271, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(272, 272, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(273, 273, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(274, 274, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(275, 275, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(276, 276, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(277, 277, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(278, 278, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(279, 279, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(280, 280, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(281, 281, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(282, 282, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(283, 283, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(284, 284, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(285, 285, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(286, 286, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(287, 287, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(288, 288, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(289, 289, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(290, 290, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(291, 291, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(292, 292, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(293, 293, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(294, 294, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(295, 295, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(296, 296, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(297, 297, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(298, 298, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(299, 299, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(300, 300, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(301, 301, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(302, 302, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(303, 303, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(304, 304, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(305, 305, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(306, 306, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(307, 307, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(308, 308, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(309, 309, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(310, 310, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(311, 311, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(312, 312, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(313, 313, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(314, 314, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(315, 315, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(316, 316, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(317, 317, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(318, 318, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(319, 319, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(320, 320, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(321, 321, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(322, 322, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(323, 323, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(324, 324, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(325, 325, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(326, 326, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(327, 327, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(328, 328, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(329, 329, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(330, 330, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(331, 331, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(332, 332, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(333, 333, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(334, 334, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(335, 335, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(336, 336, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(337, 337, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(338, 338, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(339, 339, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(340, 340, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(341, 341, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(342, 342, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(343, 343, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(344, 344, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(345, 345, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(346, 346, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(347, 347, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(348, 348, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(349, 349, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(350, 350, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(351, 351, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(352, 352, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(353, 353, 1, '2023-12-16 11:02:06', 'Uploaded by Administrator during development', 21),
(354, 354, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(355, 355, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(356, 356, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(357, 357, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(358, 358, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(359, 359, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(360, 360, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(361, 361, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(362, 362, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(363, 363, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(364, 364, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(365, 365, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(366, 366, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(367, 367, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(368, 368, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(369, 369, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(370, 370, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(371, 371, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(372, 372, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(373, 373, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(374, 374, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(375, 375, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(376, 376, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(377, 377, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(378, 378, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(379, 379, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(380, 380, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(381, 381, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(382, 382, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(383, 383, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(384, 384, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(385, 385, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(386, 386, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(387, 387, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(388, 388, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(389, 389, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(390, 390, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(391, 391, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(392, 392, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(393, 393, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(394, 394, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(395, 395, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(396, 396, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(397, 397, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(398, 398, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(399, 399, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(400, 400, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(401, 401, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(402, 402, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(403, 403, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(404, 404, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(405, 405, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(406, 406, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(407, 407, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(408, 408, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(409, 409, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(410, 410, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(411, 411, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(412, 412, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(413, 413, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(414, 414, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(415, 415, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(416, 416, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(417, 417, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(418, 418, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(419, 419, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(420, 420, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(421, 421, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(422, 422, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(423, 423, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(424, 424, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(425, 425, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(426, 426, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(427, 427, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(428, 428, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(429, 429, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(430, 430, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(431, 431, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(432, 432, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(433, 433, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(434, 434, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(435, 435, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(436, 436, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(437, 437, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(438, 438, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(439, 439, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(440, 440, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(441, 441, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(442, 442, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(443, 443, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(444, 444, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(445, 445, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(446, 446, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(447, 447, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(448, 448, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(449, 449, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(450, 450, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(451, 451, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(452, 452, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(453, 453, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(454, 454, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(455, 455, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(456, 456, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(457, 457, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(458, 458, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(459, 459, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(460, 460, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(461, 461, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(462, 462, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(463, 463, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(464, 464, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(465, 465, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(466, 466, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(467, 467, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(468, 468, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(469, 469, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(470, 470, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(471, 471, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(472, 472, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(473, 473, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(474, 474, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(475, 475, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(476, 476, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(477, 477, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(478, 478, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(479, 479, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(480, 480, 1, '2023-12-16 11:02:07', 'Uploaded by Administrator during development', 21),
(481, 481, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(482, 482, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(483, 483, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(484, 484, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(485, 485, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(486, 486, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(487, 487, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(488, 488, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(489, 489, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(490, 490, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(491, 491, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(492, 492, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(493, 493, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(494, 494, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(495, 495, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(496, 496, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(497, 497, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(498, 498, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(499, 499, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(500, 500, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(501, 501, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(502, 502, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(503, 503, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(504, 504, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(505, 505, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(506, 506, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(507, 507, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(508, 508, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(509, 509, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(510, 510, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(511, 511, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(512, 512, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(513, 513, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(514, 514, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(515, 515, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(516, 516, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(517, 517, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(518, 518, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(519, 519, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(520, 520, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(521, 521, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(522, 522, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(523, 523, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(524, 524, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(525, 525, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(526, 526, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(527, 527, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(528, 528, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(529, 529, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(530, 530, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(531, 531, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(532, 532, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(533, 533, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(534, 534, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(535, 535, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(536, 536, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(537, 537, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(538, 538, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(539, 539, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(540, 540, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(541, 541, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(542, 542, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(543, 543, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(544, 544, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(545, 545, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(546, 546, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(547, 547, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(548, 548, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(549, 549, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(550, 550, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(551, 551, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(552, 552, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(553, 553, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(554, 554, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(555, 555, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(556, 556, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(557, 557, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(558, 558, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(559, 559, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(560, 560, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(561, 561, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(562, 562, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(563, 563, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(564, 564, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(565, 565, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(566, 566, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(567, 567, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(568, 568, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(569, 569, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21);
INSERT INTO `TrainActivity` (`TrainActivityID`, `TrainID`, `ActivityID`, `DateTime`, `Comments`, `UserID`) VALUES
(570, 570, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(571, 571, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(572, 572, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(573, 573, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(574, 574, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(575, 575, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(576, 576, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(577, 577, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(578, 578, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(579, 579, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(580, 580, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(581, 581, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(582, 582, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(583, 583, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(584, 584, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(585, 585, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(586, 586, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(587, 587, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(588, 588, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(589, 589, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(590, 590, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(591, 591, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(592, 592, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(593, 593, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(594, 594, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(595, 595, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(596, 596, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(597, 597, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(598, 598, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(599, 599, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(600, 600, 1, '2023-12-16 11:02:08', 'Uploaded by Administrator during development', 21),
(876, 1, 2, '2024-01-03 07:37:12', 'File uploaded', 21),
(877, 1, 3, '2024-01-03 07:37:21', '', 54),
(892, 1, 4, '2024-01-03 08:04:03', 'The system sent Routine Test to PRASA successfully', 21),
(893, 1, 5, '2024-01-03 08:36:48', '2024-02-07', 21),
(903, 1, 6, '2024-01-03 09:34:03', 'The System sent provisional PC10 notification to PRASA', 21),
(904, 1, 7, '2024-01-03 09:35:13', 'on', 21),
(905, 1, 8, '2024-01-03 10:34:45', 'File uploaded', 21),
(907, 1, 9, '2024-01-03 10:39:23', 'File uploaded', 21),
(909, 1, 11, '2024-01-03 11:20:23', '', 47),
(910, 2, 2, '2024-01-03 11:49:50', 'File uploaded', 47),
(911, 2, 3, '2024-01-03 11:50:01', 'I approve', 47),
(912, 2, 4, '2024-01-03 11:50:04', 'The system sent Routine Test to PRASA successfully', 21),
(979, 1, 12, '2024-01-03 18:03:17', 'File uploaded', 47),
(980, 1, 13, '2024-01-03 18:03:30', 'Generated the Routine Test Report email successfully', 47),
(981, 1, 14, '2024-01-03 18:03:46', '', 47),
(982, 1, 15, '2024-01-03 18:03:50', '', 47),
(983, 1, 16, '2024-01-03 18:04:26', 'Sent Routine Test to PRASA', 47),
(984, 8, 2, '2024-01-03 18:07:32', 'File uploaded', 47),
(985, 8, 3, '2024-01-03 18:07:42', 'I approve', 47),
(986, 8, 4, '2024-01-03 18:08:54', 'The system sent Routine Test to PRASA successfully', 47),
(992, 6, 2, '2024-01-04 11:45:25', 'File uploaded', 47),
(993, 6, 3, '2024-01-04 11:45:49', 'I approve', 47),
(994, 6, 4, '2024-01-04 11:46:08', 'The system sent Routine Test to PRASA successfully', 21),
(995, 6, 5, '2024-01-04 11:46:47', '2024-01-25', 47),
(996, 6, 6, '2024-01-04 11:47:02', 'The System sent provisional PC10 notification to PRASA', 21),
(997, 6, 7, '2024-01-04 11:52:02', 'on', 47),
(998, 6, 8, '2024-01-04 11:52:26', 'File uploaded', 47),
(999, 6, 9, '2024-01-04 11:52:45', 'File uploaded', 47),
(1000, 6, 9, '2024-01-04 11:52:59', 'File uploaded', 47),
(1001, 6, 11, '2024-01-04 12:04:14', '', 47),
(1002, 6, 12, '2024-01-04 12:04:46', 'File uploaded', 47),
(1003, 6, 13, '2024-01-04 12:05:03', 'Generated the Routine Test Report email successfully', 21),
(1004, 6, 14, '2024-01-04 12:05:24', '', 47),
(1005, 6, 15, '2024-01-04 12:05:29', '', 47),
(1006, 6, 16, '2024-01-04 12:06:01', 'Sent Routine Test to PRASA', 21),
(1007, 10, 2, '2024-01-04 13:53:31', 'File uploaded', 47),
(1008, 10, 3, '2024-01-04 13:53:40', 'I approve', 47),
(1009, 10, 4, '2024-01-04 13:54:11', 'The system sent Routine Test to PRASA successfully', 21),
(1010, 10, 5, '2024-01-04 13:55:25', '2024-01-19', 47),
(1011, 10, 6, '2024-01-04 13:56:04', 'The System sent provisional PC10 notification to PRASA', 21),
(1012, 10, 7, '2024-01-04 13:56:15', 'on', 47),
(1013, 10, 8, '2024-01-04 13:56:39', 'File uploaded', 47),
(1014, 10, 9, '2024-01-04 13:56:50', 'File uploaded', 47),
(1015, 12, 2, '2024-01-04 14:34:51', 'File uploaded', 47),
(1016, 12, 3, '2024-01-04 14:34:57', '', 47),
(1017, 12, 4, '2024-01-04 14:35:12', 'The system sent Routine Test to PRASA successfully', 21),
(1018, 12, 5, '2024-01-04 14:49:24', '2024-01-18', 47),
(1019, 12, 6, '2024-01-04 14:50:06', 'The System sent provisional PC10 notification to PRASA', 21),
(1020, 12, 7, '2024-01-04 14:52:51', 'on', 47),
(1021, 12, 8, '2024-01-04 14:53:12', 'File uploaded', 47),
(1022, 12, 9, '2024-01-04 14:53:21', 'File uploaded', 47),
(1023, 14, 2, '2024-01-04 18:19:58', 'File uploaded', 47),
(1024, 14, 3, '2024-01-04 18:20:17', 'I approve', 47),
(1025, 14, 4, '2024-01-04 18:21:12', 'The system sent Routine Test to PRASA successfully', 21),
(1026, 14, 5, '2024-01-04 18:21:18', '2024-01-20', 47),
(1027, 14, 6, '2024-01-04 18:22:05', 'The System sent provisional PC10 notification to PRASA', 21),
(1028, 14, 7, '2024-01-04 18:22:14', 'on', 47),
(1029, 14, 8, '2024-01-04 18:22:28', 'File uploaded', 47),
(1030, 14, 9, '2024-01-04 18:22:59', 'File uploaded', 47),
(1031, 13, 2, '2024-01-04 18:26:47', 'File uploaded', 47),
(1032, 13, 3, '2024-01-04 18:26:56', 'AAA', 47),
(1033, 13, 4, '2024-01-04 18:27:12', 'The system sent Routine Test to PRASA successfully', 21),
(1034, 13, 5, '2024-01-04 18:27:19', '2024-01-12', 47),
(1035, 13, 6, '2024-01-04 18:28:06', 'The System sent provisional PC10 notification to PRASA', 21),
(1036, 13, 7, '2024-01-04 18:28:14', 'on', 47),
(1037, 13, 8, '2024-01-04 18:28:40', 'File uploaded', 47),
(1038, 13, 9, '2024-01-04 18:29:01', 'File uploaded', 47),
(1039, 13, 11, '2024-01-04 18:29:30', 'AAA', 47),
(1040, 13, 12, '2024-01-04 18:29:38', 'File uploaded', 47),
(1041, 13, 13, '2024-01-04 18:30:07', 'Generated the Routine Test Report email successfully', 21),
(1042, 13, 14, '2024-01-04 18:30:30', '', 47),
(1043, 13, 15, '2024-01-04 18:30:36', '', 47),
(1044, 13, 16, '2024-01-04 18:31:06', 'Sent Routine Test to PRASA', 21),
(1045, 14, 2, '2024-01-04 18:46:28', 'File uploaded', 47),
(1046, 7, 2, '2024-01-05 09:25:44', 'File uploaded', 47),
(1047, 26, 2, '2024-01-05 13:06:49', 'File uploaded', 47),
(1048, 26, 3, '2024-01-05 13:06:59', 'i approve', 47),
(1049, 26, 4, '2024-01-05 13:07:12', 'The system sent Routine Test to PRASA successfully', 21),
(1050, 26, 5, '2024-01-05 13:07:46', '2024-02-08', 47),
(1051, 26, 6, '2024-01-05 13:08:04', 'The System sent provisional PC10 notification to PRASA', 21),
(1052, 26, 7, '2024-01-05 13:08:50', 'on', 47),
(1053, 26, 8, '2024-01-05 13:09:46', 'File uploaded', 47),
(1054, 26, 9, '2024-01-05 13:10:18', 'File uploaded', 47),
(1055, 26, 11, '2024-01-05 13:23:04', 'I approve', 47),
(1056, 26, 12, '2024-01-05 13:23:23', 'File uploaded', 47),
(1057, 26, 13, '2024-01-05 13:24:05', 'Generated the Routine Test Report email successfully', 21),
(1058, 26, 14, '2024-01-05 13:25:48', 'I approve the email', 47),
(1059, 26, 15, '2024-01-05 13:26:13', 'I also approve the email', 47),
(1060, 26, 16, '2024-01-05 13:27:09', 'Sent Routine Test to PRASA', 21);

-- --------------------------------------------------------

--
-- Table structure for table `TrainDelay`
--

CREATE TABLE `TrainDelay` (
  `TrainDelayID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TrainID` int(11) NOT NULL,
  `DelayCategory` enum(' Electrical Problems','Mechanical Issues','Material Defects','Misplaced Parts','Ordered Parts','Safety Concerns') NOT NULL,
  `Comments` text NOT NULL,
  `TrainDelayTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Trains`
--

CREATE TABLE `Trains` (
  `Tr_ID` int(11) NOT NULL,
  `Tr_Number` varchar(100) NOT NULL,
  `Tr_Type` varchar(100) NOT NULL,
  `Tr_size` varchar(100) NOT NULL,
  `RegimeCategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Trains`
--

INSERT INTO `Trains` (`Tr_ID`, `Tr_Number`, `Tr_Type`, `Tr_size`, `RegimeCategory`) VALUES
(1, 'TS 001', '', '', ''),
(2, 'TS 002', '', '', ''),
(3, 'TS 003', '', '', ''),
(4, 'TS 004', '', '', ''),
(5, 'TS 005', '', '', ''),
(6, 'TS 006', '', '', ''),
(7, 'TS 007', '', '', ''),
(8, 'TS 008', '', '', ''),
(9, 'TS 009', '', '', ''),
(10, 'TS 010', '', '', ''),
(11, 'TS 011', '', '', ''),
(12, 'TS 012', '', '', ''),
(13, 'TS 013', '', '', ''),
(14, 'TS 014', '', '', ''),
(15, 'TS 015', '', '', ''),
(16, 'TS 016', '', '', ''),
(17, 'TS 017', '', '', ''),
(18, 'TS 018', '', '', ''),
(19, 'TS 019', '', '', ''),
(20, 'TS 020', '', '', ''),
(21, 'TS 021', '', '', ''),
(22, 'TS 022', '', '', ''),
(23, 'TS 023', '', '', ''),
(24, 'TS 024', '', '', ''),
(25, 'TS 025', '', '', ''),
(26, 'TS 026', '', '', ''),
(27, 'TS 027', '', '', ''),
(28, 'TS 028', '', '', ''),
(29, 'TS 029', '', '', ''),
(30, 'TS 030', '', '', ''),
(31, 'TS 031', '', '', ''),
(32, 'TS 032', '', '', ''),
(33, 'TS 033', '', '', ''),
(34, 'TS 034', '', '', ''),
(35, 'TS 035', '', '', ''),
(36, 'TS 036', '', '', ''),
(37, 'TS 037', '', '', ''),
(38, 'TS 038', '', '', ''),
(39, 'TS 039', '', '', ''),
(40, 'TS 040', '', '', ''),
(41, 'TS 041', '', '', ''),
(42, 'TS 042', '', '', ''),
(43, 'TS 043', '', '', ''),
(44, 'TS 044', '', '', ''),
(45, 'TS 045', '', '', ''),
(46, 'TS 046', '', '', ''),
(47, 'TS 047', '', '', ''),
(48, 'TS 048', '', '', ''),
(49, 'TS 049', '', '', ''),
(50, 'TS 050', '', '', ''),
(51, 'TS 051', '', '', ''),
(52, 'TS 052', '', '', ''),
(53, 'TS 053', '', '', ''),
(54, 'TS 054', '', '', ''),
(55, 'TS 055', '', '', ''),
(56, 'TS 056', '', '', ''),
(57, 'TS 057', '', '', ''),
(58, 'TS 058', '', '', ''),
(59, 'TS 059', '', '', ''),
(60, 'TS 060', '', '', ''),
(61, 'TS 061', '', '', ''),
(62, 'TS 062', '', '', ''),
(63, 'TS 063', '', '', ''),
(64, 'TS 064', '', '', ''),
(65, 'TS 065', '', '', ''),
(66, 'TS 066', '', '', ''),
(67, 'TS 067', '', '', ''),
(68, 'TS 068', '', '', ''),
(69, 'TS 069', '', '', ''),
(70, 'TS 070', '', '', ''),
(71, 'TS 071', '', '', ''),
(72, 'TS 072', '', '', ''),
(73, 'TS 073', '', '', ''),
(74, 'TS 074', '', '', ''),
(75, 'TS 075', '', '', ''),
(76, 'TS 076', '', '', ''),
(77, 'TS 077', '', '', ''),
(78, 'TS 078', '', '', ''),
(79, 'TS 079', '', '', ''),
(80, 'TS 080', '', '', ''),
(81, 'TS 081', '', '', ''),
(82, 'TS 082', '', '', ''),
(83, 'TS 083', '', '', ''),
(84, 'TS 084', '', '', ''),
(85, 'TS 085', '', '', ''),
(86, 'TS 086', '', '', ''),
(87, 'TS 087', '', '', ''),
(88, 'TS 088', '', '', ''),
(89, 'TS 089', '', '', ''),
(90, 'TS 090', '', '', ''),
(91, 'TS 091', '', '', ''),
(92, 'TS 092', '', '', ''),
(93, 'TS 093', '', '', ''),
(94, 'TS 094', '', '', ''),
(95, 'TS 095', '', '', ''),
(96, 'TS 096', '', '', ''),
(97, 'TS 097', '', '', ''),
(98, 'TS 098', '', '', ''),
(99, 'TS 099', '', '', ''),
(100, 'TS 100', '', '', ''),
(101, 'TS 101', '', '', ''),
(102, 'TS 102', '', '', ''),
(103, 'TS 103', '', '', ''),
(104, 'TS 104', '', '', ''),
(105, 'TS 105', '', '', ''),
(106, 'TS 106', '', '', ''),
(107, 'TS 107', '', '', ''),
(108, 'TS 108', '', '', ''),
(109, 'TS 109', '', '', ''),
(110, 'TS 110', '', '', ''),
(111, 'TS 111', '', '', ''),
(112, 'TS 112', '', '', ''),
(113, 'TS 113', '', '', ''),
(114, 'TS 114', '', '', ''),
(115, 'TS 115', '', '', ''),
(116, 'TS 116', '', '', ''),
(117, 'TS 117', '', '', ''),
(118, 'TS 118', '', '', ''),
(119, 'TS 119', '', '', ''),
(120, 'TS 120', '', '', ''),
(121, 'TS 121', '', '', ''),
(122, 'TS 122', '', '', ''),
(123, 'TS 123', '', '', ''),
(124, 'TS 124', '', '', ''),
(125, 'TS 125', '', '', ''),
(126, 'TS 126', '', '', ''),
(127, 'TS 127', '', '', ''),
(128, 'TS 128', '', '', ''),
(129, 'TS 129', '', '', ''),
(130, 'TS 130', '', '', ''),
(131, 'TS 131', '', '', ''),
(132, 'TS 132', '', '', ''),
(133, 'TS 133', '', '', ''),
(134, 'TS 134', '', '', ''),
(135, 'TS 135', '', '', ''),
(136, 'TS 136', '', '', ''),
(137, 'TS 137', '', '', ''),
(138, 'TS 138', '', '', ''),
(139, 'TS 139', '', '', ''),
(140, 'TS 140', '', '', ''),
(141, 'TS 141', '', '', ''),
(142, 'TS 142', '', '', ''),
(143, 'TS 143', '', '', ''),
(144, 'TS 144', '', '', ''),
(145, 'TS 145', '', '', ''),
(146, 'TS 146', '', '', ''),
(147, 'TS 147', '', '', ''),
(148, 'TS 148', '', '', ''),
(149, 'TS 149', '', '', ''),
(150, 'TS 150', '', '', ''),
(151, 'TS 151', '', '', ''),
(152, 'TS 152', '', '', ''),
(153, 'TS 153', '', '', ''),
(154, 'TS 154', '', '', ''),
(155, 'TS 155', '', '', ''),
(156, 'TS 156', '', '', ''),
(157, 'TS 157', '', '', ''),
(158, 'TS 158', '', '', ''),
(159, 'TS 159', '', '', ''),
(160, 'TS 160', '', '', ''),
(161, 'TS 161', '', '', ''),
(162, 'TS 162', '', '', ''),
(163, 'TS 163', '', '', ''),
(164, 'TS 164', '', '', ''),
(165, 'TS 165', '', '', ''),
(166, 'TS 166', '', '', ''),
(167, 'TS 167', '', '', ''),
(168, 'TS 168', '', '', ''),
(169, 'TS 169', '', '', ''),
(170, 'TS 170', '', '', ''),
(171, 'TS 171', '', '', ''),
(172, 'TS 172', '', '', ''),
(173, 'TS 173', '', '', ''),
(174, 'TS 174', '', '', ''),
(175, 'TS 175', '', '', ''),
(176, 'TS 176', '', '', ''),
(177, 'TS 177', '', '', ''),
(178, 'TS 178', '', '', ''),
(179, 'TS 179', '', '', ''),
(180, 'TS 180', '', '', ''),
(181, 'TS 181', '', '', ''),
(182, 'TS 182', '', '', ''),
(183, 'TS 183', '', '', ''),
(184, 'TS 184', '', '', ''),
(185, 'TS 185', '', '', ''),
(186, 'TS 186', '', '', ''),
(187, 'TS 187', '', '', ''),
(188, 'TS 188', '', '', ''),
(189, 'TS 189', '', '', ''),
(190, 'TS 190', '', '', ''),
(191, 'TS 191', '', '', ''),
(192, 'TS 192', '', '', ''),
(193, 'TS 193', '', '', ''),
(194, 'TS 194', '', '', ''),
(195, 'TS 195', '', '', ''),
(196, 'TS 196', '', '', ''),
(197, 'TS 197', '', '', ''),
(198, 'TS 198', '', '', ''),
(199, 'TS 199', '', '', ''),
(200, 'TS 200', '', '', ''),
(201, 'TS 201', '', '', ''),
(202, 'TS 202', '', '', ''),
(203, 'TS 203', '', '', ''),
(204, 'TS 204', '', '', ''),
(205, 'TS 205', '', '', ''),
(206, 'TS 206', '', '', ''),
(207, 'TS 207', '', '', ''),
(208, 'TS 208', '', '', ''),
(209, 'TS 209', '', '', ''),
(210, 'TS 210', '', '', ''),
(211, 'TS 211', '', '', ''),
(212, 'TS 212', '', '', ''),
(213, 'TS 213', '', '', ''),
(214, 'TS 214', '', '', ''),
(215, 'TS 215', '', '', ''),
(216, 'TS 216', '', '', ''),
(217, 'TS 217', '', '', ''),
(218, 'TS 218', '', '', ''),
(219, 'TS 219', '', '', ''),
(220, 'TS 220', '', '', ''),
(221, 'TS 221', '', '', ''),
(222, 'TS 222', '', '', ''),
(223, 'TS 223', '', '', ''),
(224, 'TS 224', '', '', ''),
(225, 'TS 225', '', '', ''),
(226, 'TS 226', '', '', ''),
(227, 'TS 227', '', '', ''),
(228, 'TS 228', '', '', ''),
(229, 'TS 229', '', '', ''),
(230, 'TS 230', '', '', ''),
(231, 'TS 231', '', '', ''),
(232, 'TS 232', '', '', ''),
(233, 'TS 233', '', '', ''),
(234, 'TS 234', '', '', ''),
(235, 'TS 235', '', '', ''),
(236, 'TS 236', '', '', ''),
(237, 'TS 237', '', '', ''),
(238, 'TS 238', '', '', ''),
(239, 'TS 239', '', '', ''),
(240, 'TS 240', '', '', ''),
(241, 'TS 241', '', '', ''),
(242, 'TS 242', '', '', ''),
(243, 'TS 243', '', '', ''),
(244, 'TS 244', '', '', ''),
(245, 'TS 245', '', '', ''),
(246, 'TS 246', '', '', ''),
(247, 'TS 247', '', '', ''),
(248, 'TS 248', '', '', ''),
(249, 'TS 249', '', '', ''),
(250, 'TS 250', '', '', ''),
(251, 'TS 251', '', '', ''),
(252, 'TS 252', '', '', ''),
(253, 'TS 253', '', '', ''),
(254, 'TS 254', '', '', ''),
(255, 'TS 255', '', '', ''),
(256, 'TS 256', '', '', ''),
(257, 'TS 257', '', '', ''),
(258, 'TS 258', '', '', ''),
(259, 'TS 259', '', '', ''),
(260, 'TS 260', '', '', ''),
(261, 'TS 261', '', '', ''),
(262, 'TS 262', '', '', ''),
(263, 'TS 263', '', '', ''),
(264, 'TS 264', '', '', ''),
(265, 'TS 265', '', '', ''),
(266, 'TS 266', '', '', ''),
(267, 'TS 267', '', '', ''),
(268, 'TS 268', '', '', ''),
(269, 'TS 269', '', '', ''),
(270, 'TS 270', '', '', ''),
(271, 'TS 271', '', '', ''),
(272, 'TS 272', '', '', ''),
(273, 'TS 273', '', '', ''),
(274, 'TS 274', '', '', ''),
(275, 'TS 275', '', '', ''),
(276, 'TS 276', '', '', ''),
(277, 'TS 277', '', '', ''),
(278, 'TS 278', '', '', ''),
(279, 'TS 279', '', '', ''),
(280, 'TS 280', '', '', ''),
(281, 'TS 281', '', '', ''),
(282, 'TS 282', '', '', ''),
(283, 'TS 283', '', '', ''),
(284, 'TS 284', '', '', ''),
(285, 'TS 285', '', '', ''),
(286, 'TS 286', '', '', ''),
(287, 'TS 287', '', '', ''),
(288, 'TS 288', '', '', ''),
(289, 'TS 289', '', '', ''),
(290, 'TS 290', '', '', ''),
(291, 'TS 291', '', '', ''),
(292, 'TS 292', '', '', ''),
(293, 'TS 293', '', '', ''),
(294, 'TS 294', '', '', ''),
(295, 'TS 295', '', '', ''),
(296, 'TS 296', '', '', ''),
(297, 'TS 297', '', '', ''),
(298, 'TS 298', '', '', ''),
(299, 'TS 299', '', '', ''),
(300, 'TS 300', '', '', ''),
(301, 'TS 301', '', '', ''),
(302, 'TS 302', '', '', ''),
(303, 'TS 303', '', '', ''),
(304, 'TS 304', '', '', ''),
(305, 'TS 305', '', '', ''),
(306, 'TS 306', '', '', ''),
(307, 'TS 307', '', '', ''),
(308, 'TS 308', '', '', ''),
(309, 'TS 309', '', '', ''),
(310, 'TS 310', '', '', ''),
(311, 'TS 311', '', '', ''),
(312, 'TS 312', '', '', ''),
(313, 'TS 313', '', '', ''),
(314, 'TS 314', '', '', ''),
(315, 'TS 315', '', '', ''),
(316, 'TS 316', '', '', ''),
(317, 'TS 317', '', '', ''),
(318, 'TS 318', '', '', ''),
(319, 'TS 319', '', '', ''),
(320, 'TS 320', '', '', ''),
(321, 'TS 321', '', '', ''),
(322, 'TS 322', '', '', ''),
(323, 'TS 323', '', '', ''),
(324, 'TS 324', '', '', ''),
(325, 'TS 325', '', '', ''),
(326, 'TS 326', '', '', ''),
(327, 'TS 327', '', '', ''),
(328, 'TS 328', '', '', ''),
(329, 'TS 329', '', '', ''),
(330, 'TS 330', '', '', ''),
(331, 'TS 331', '', '', ''),
(332, 'TS 332', '', '', ''),
(333, 'TS 333', '', '', ''),
(334, 'TS 334', '', '', ''),
(335, 'TS 335', '', '', ''),
(336, 'TS 336', '', '', ''),
(337, 'TS 337', '', '', ''),
(338, 'TS 338', '', '', ''),
(339, 'TS 339', '', '', ''),
(340, 'TS 340', '', '', ''),
(341, 'TS 341', '', '', ''),
(342, 'TS 342', '', '', ''),
(343, 'TS 343', '', '', ''),
(344, 'TS 344', '', '', ''),
(345, 'TS 345', '', '', ''),
(346, 'TS 346', '', '', ''),
(347, 'TS 347', '', '', ''),
(348, 'TS 348', '', '', ''),
(349, 'TS 349', '', '', ''),
(350, 'TS 350', '', '', ''),
(351, 'TS 351', '', '', ''),
(352, 'TS 352', '', '', ''),
(353, 'TS 353', '', '', ''),
(354, 'TS 354', '', '', ''),
(355, 'TS 355', '', '', ''),
(356, 'TS 356', '', '', ''),
(357, 'TS 357', '', '', ''),
(358, 'TS 358', '', '', ''),
(359, 'TS 359', '', '', ''),
(360, 'TS 360', '', '', ''),
(361, 'TS 361', '', '', ''),
(362, 'TS 362', '', '', ''),
(363, 'TS 363', '', '', ''),
(364, 'TS 364', '', '', ''),
(365, 'TS 365', '', '', ''),
(366, 'TS 366', '', '', ''),
(367, 'TS 367', '', '', ''),
(368, 'TS 368', '', '', ''),
(369, 'TS 369', '', '', ''),
(370, 'TS 370', '', '', ''),
(371, 'TS 371', '', '', ''),
(372, 'TS 372', '', '', ''),
(373, 'TS 373', '', '', ''),
(374, 'TS 374', '', '', ''),
(375, 'TS 375', '', '', ''),
(376, 'TS 376', '', '', ''),
(377, 'TS 377', '', '', ''),
(378, 'TS 378', '', '', ''),
(379, 'TS 379', '', '', ''),
(380, 'TS 380', '', '', ''),
(381, 'TS 381', '', '', ''),
(382, 'TS 382', '', '', ''),
(383, 'TS 383', '', '', ''),
(384, 'TS 384', '', '', ''),
(385, 'TS 385', '', '', ''),
(386, 'TS 386', '', '', ''),
(387, 'TS 387', '', '', ''),
(388, 'TS 388', '', '', ''),
(389, 'TS 389', '', '', ''),
(390, 'TS 390', '', '', ''),
(391, 'TS 391', '', '', ''),
(392, 'TS 392', '', '', ''),
(393, 'TS 393', '', '', ''),
(394, 'TS 394', '', '', ''),
(395, 'TS 395', '', '', ''),
(396, 'TS 396', '', '', ''),
(397, 'TS 397', '', '', ''),
(398, 'TS 398', '', '', ''),
(399, 'TS 399', '', '', ''),
(400, 'TS 400', '', '', ''),
(401, 'TS 401', '', '', ''),
(402, 'TS 402', '', '', ''),
(403, 'TS 403', '', '', ''),
(404, 'TS 404', '', '', ''),
(405, 'TS 405', '', '', ''),
(406, 'TS 406', '', '', ''),
(407, 'TS 407', '', '', ''),
(408, 'TS 408', '', '', ''),
(409, 'TS 409', '', '', ''),
(410, 'TS 410', '', '', ''),
(411, 'TS 411', '', '', ''),
(412, 'TS 412', '', '', ''),
(413, 'TS 413', '', '', ''),
(414, 'TS 414', '', '', ''),
(415, 'TS 415', '', '', ''),
(416, 'TS 416', '', '', ''),
(417, 'TS 417', '', '', ''),
(418, 'TS 418', '', '', ''),
(419, 'TS 419', '', '', ''),
(420, 'TS 420', '', '', ''),
(421, 'TS 421', '', '', ''),
(422, 'TS 422', '', '', ''),
(423, 'TS 423', '', '', ''),
(424, 'TS 424', '', '', ''),
(425, 'TS 425', '', '', ''),
(426, 'TS 426', '', '', ''),
(427, 'TS 427', '', '', ''),
(428, 'TS 428', '', '', ''),
(429, 'TS 429', '', '', ''),
(430, 'TS 430', '', '', ''),
(431, 'TS 431', '', '', ''),
(432, 'TS 432', '', '', ''),
(433, 'TS 433', '', '', ''),
(434, 'TS 434', '', '', ''),
(435, 'TS 435', '', '', ''),
(436, 'TS 436', '', '', ''),
(437, 'TS 437', '', '', ''),
(438, 'TS 438', '', '', ''),
(439, 'TS 439', '', '', ''),
(440, 'TS 440', '', '', ''),
(441, 'TS 441', '', '', ''),
(442, 'TS 442', '', '', ''),
(443, 'TS 443', '', '', ''),
(444, 'TS 444', '', '', ''),
(445, 'TS 445', '', '', ''),
(446, 'TS 446', '', '', ''),
(447, 'TS 447', '', '', ''),
(448, 'TS 448', '', '', ''),
(449, 'TS 449', '', '', ''),
(450, 'TS 450', '', '', ''),
(451, 'TS 451', '', '', ''),
(452, 'TS 452', '', '', ''),
(453, 'TS 453', '', '', ''),
(454, 'TS 454', '', '', ''),
(455, 'TS 455', '', '', ''),
(456, 'TS 456', '', '', ''),
(457, 'TS 457', '', '', ''),
(458, 'TS 458', '', '', ''),
(459, 'TS 459', '', '', ''),
(460, 'TS 460', '', '', ''),
(461, 'TS 461', '', '', ''),
(462, 'TS 462', '', '', ''),
(463, 'TS 463', '', '', ''),
(464, 'TS 464', '', '', ''),
(465, 'TS 465', '', '', ''),
(466, 'TS 466', '', '', ''),
(467, 'TS 467', '', '', ''),
(468, 'TS 468', '', '', ''),
(469, 'TS 469', '', '', ''),
(470, 'TS 470', '', '', ''),
(471, 'TS 471', '', '', ''),
(472, 'TS 472', '', '', ''),
(473, 'TS 473', '', '', ''),
(474, 'TS 474', '', '', ''),
(475, 'TS 475', '', '', ''),
(476, 'TS 476', '', '', ''),
(477, 'TS 477', '', '', ''),
(478, 'TS 478', '', '', ''),
(479, 'TS 479', '', '', ''),
(480, 'TS 480', '', '', ''),
(481, 'TS 481', '', '', ''),
(482, 'TS 482', '', '', ''),
(483, 'TS 483', '', '', ''),
(484, 'TS 484', '', '', ''),
(485, 'TS 485', '', '', ''),
(486, 'TS 486', '', '', ''),
(487, 'TS 487', '', '', ''),
(488, 'TS 488', '', '', ''),
(489, 'TS 489', '', '', ''),
(490, 'TS 490', '', '', ''),
(491, 'TS 491', '', '', ''),
(492, 'TS 492', '', '', ''),
(493, 'TS 493', '', '', ''),
(494, 'TS 494', '', '', ''),
(495, 'TS 495', '', '', ''),
(496, 'TS 496', '', '', ''),
(497, 'TS 497', '', '', ''),
(498, 'TS 498', '', '', ''),
(499, 'TS 499', '', '', ''),
(500, 'TS 500', '', '', ''),
(501, 'TS 501', '', '', ''),
(502, 'TS 502', '', '', ''),
(503, 'TS 503', '', '', ''),
(504, 'TS 504', '', '', ''),
(505, 'TS 505', '', '', ''),
(506, 'TS 506', '', '', ''),
(507, 'TS 507', '', '', ''),
(508, 'TS 508', '', '', ''),
(509, 'TS 509', '', '', ''),
(510, 'TS 510', '', '', ''),
(511, 'TS 511', '', '', ''),
(512, 'TS 512', '', '', ''),
(513, 'TS 513', '', '', ''),
(514, 'TS 514', '', '', ''),
(515, 'TS 515', '', '', ''),
(516, 'TS 516', '', '', ''),
(517, 'TS 517', '', '', ''),
(518, 'TS 518', '', '', ''),
(519, 'TS 519', '', '', ''),
(520, 'TS 520', '', '', ''),
(521, 'TS 521', '', '', ''),
(522, 'TS 522', '', '', ''),
(523, 'TS 523', '', '', ''),
(524, 'TS 524', '', '', ''),
(525, 'TS 525', '', '', ''),
(526, 'TS 526', '', '', ''),
(527, 'TS 527', '', '', ''),
(528, 'TS 528', '', '', ''),
(529, 'TS 529', '', '', ''),
(530, 'TS 530', '', '', ''),
(531, 'TS 531', '', '', ''),
(532, 'TS 532', '', '', ''),
(533, 'TS 533', '', '', ''),
(534, 'TS 534', '', '', ''),
(535, 'TS 535', '', '', ''),
(536, 'TS 536', '', '', ''),
(537, 'TS 537', '', '', ''),
(538, 'TS 538', '', '', ''),
(539, 'TS 539', '', '', ''),
(540, 'TS 540', '', '', ''),
(541, 'TS 541', '', '', ''),
(542, 'TS 542', '', '', ''),
(543, 'TS 543', '', '', ''),
(544, 'TS 544', '', '', ''),
(545, 'TS 545', '', '', ''),
(546, 'TS 546', '', '', ''),
(547, 'TS 547', '', '', ''),
(548, 'TS 548', '', '', ''),
(549, 'TS 549', '', '', ''),
(550, 'TS 550', '', '', ''),
(551, 'TS 551', '', '', ''),
(552, 'TS 552', '', '', ''),
(553, 'TS 553', '', '', ''),
(554, 'TS 554', '', '', ''),
(555, 'TS 555', '', '', ''),
(556, 'TS 556', '', '', ''),
(557, 'TS 557', '', '', ''),
(558, 'TS 558', '', '', ''),
(559, 'TS 559', '', '', ''),
(560, 'TS 560', '', '', ''),
(561, 'TS 561', '', '', ''),
(562, 'TS 562', '', '', ''),
(563, 'TS 563', '', '', ''),
(564, 'TS 564', '', '', ''),
(565, 'TS 565', '', '', ''),
(566, 'TS 566', '', '', ''),
(567, 'TS 567', '', '', ''),
(568, 'TS 568', '', '', ''),
(569, 'TS 569', '', '', ''),
(570, 'TS 570', '', '', ''),
(571, 'TS 571', '', '', ''),
(572, 'TS 572', '', '', ''),
(573, 'TS 573', '', '', ''),
(574, 'TS 574', '', '', ''),
(575, 'TS 575', '', '', ''),
(576, 'TS 576', '', '', ''),
(577, 'TS 577', '', '', ''),
(578, 'TS 578', '', '', ''),
(579, 'TS 579', '', '', ''),
(580, 'TS 580', '', '', ''),
(581, 'TS 581', '', '', ''),
(582, 'TS 582', '', '', ''),
(583, 'TS 583', '', '', ''),
(584, 'TS 584', '', '', ''),
(585, 'TS 585', '', '', ''),
(586, 'TS 586', '', '', ''),
(587, 'TS 587', '', '', ''),
(588, 'TS 588', '', '', ''),
(589, 'TS 589', '', '', ''),
(590, 'TS 590', '', '', ''),
(591, 'TS 591', '', '', ''),
(592, 'TS 592', '', '', ''),
(593, 'TS 593', '', '', ''),
(594, 'TS 594', '', '', ''),
(595, 'TS 595', '', '', ''),
(596, 'TS 596', '', '', ''),
(597, 'TS 597', '', '', ''),
(598, 'TS 598', '', '', ''),
(599, 'TS 599', '', '', ''),
(600, 'TS 600', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TrainUploadRequirements`
--

CREATE TABLE `TrainUploadRequirements` (
  `TURID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `DocsRequired` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `TrainUploadRequirements`
--

INSERT INTO `TrainUploadRequirements` (`TURID`, `ActivityID`, `DocsRequired`) VALUES
(1, 2, 10),
(30, 8, 1),
(31, 9, 1),
(32, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `TransactionCodes`
--

CREATE TABLE `TransactionCodes` (
  `TransID` int(11) NOT NULL,
  `TR_Code` int(11) NOT NULL,
  `TR_Description` varchar(500) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `TransactionCodes`
--

INSERT INTO `TransactionCodes` (`TransID`, `TR_Code`, `TR_Description`, `Type`) VALUES
(1, 1001, 'Added new user', 'Add'),
(2, 1002, 'Changed password', 'Change Password'),
(3, 1003, 'Reset own password', 'Reset Password'),
(4, 1004, 'Reset user password', 'Reset user password'),
(5, 1005, 'Modified user access', 'Modify'),
(6, 1006, 'Added role', 'Add Role'),
(7, 1007, 'Disabled user', 'Delete'),
(8, 1008, 'Login', 'Login'),
(9, 1009, 'Logout', 'Logout');

-- --------------------------------------------------------

--
-- Table structure for table `Upload`
--

CREATE TABLE `Upload` (
  `UploadID` int(11) NOT NULL,
  `TransactionActivityID` int(11) NOT NULL,
  `UploadReference` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Upload`
--

INSERT INTO `Upload` (`UploadID`, `TransactionActivityID`, `UploadReference`) VALUES
(55, 979, 'Upload/6595a1652eeb3_20240103180317_Dashboard APP.pptx'),
(56, 984, 'Upload/65623d9a9fd95_20231125183154_User.png'),
(57, 984, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(58, 984, 'Upload/65673fce647bb_20231129134238_Approval Workflow.pdf'),
(59, 984, 'Upload/656241b87fa66_20231125184928_BackGibela.jpeg'),
(60, 984, 'Upload/656259f35ef01_20231125203251_User.png'),
(61, 984, 'Upload/656733c930c5b_20231129125121_AZ UI design (1).pdf'),
(62, 984, 'Upload/657311a12f3e0_20231208125249_xtrapolis_mega_04_w2000.jpg'),
(63, 984, 'Upload/657316e20c4e8_20231208131514_AZ UI design (1).pdf'),
(64, 984, 'Upload/657321a2ec75b_20231208140106_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(65, 984, 'Upload/657344bb1878c_20231208163051_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(76, 992, 'Upload/AuthPage.php'),
(77, 992, 'Upload/BANKSETA Presentation - 20 October 2022_FINAL.pptx'),
(78, 992, 'Upload/Gibela.pptx'),
(79, 992, 'Upload/IMG_20230527_083026_024.jpg'),
(80, 992, 'Upload/IMG_20230923_125228_741.jpg'),
(81, 992, 'Upload/investment-agreement-temp-584.doc'),
(82, 992, 'Upload/Invoice_Statement_Unit_13_2023-08-01_2023-08-31_Nandi.pdf'),
(83, 992, 'Upload/IT General Controls.pdf'),
(84, 992, 'Upload/LKL CONDUCT RULES 2016.pdf'),
(85, 992, 'Upload/PaymentNotification (2).pdf'),
(86, 998, 'Upload/65969bfac61b1_20240104115226_LKL CONDUCT RULES 2016.pdf'),
(87, 1002, 'Upload/65969ede01bd6_20240104120446_LKL CONDUCT RULES 2016.pdf'),
(88, 1007, 'Upload/65623d9a9fd95_20231125183154_User.png'),
(89, 1007, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(90, 1007, 'Upload/65673fce647bb_20231129134238_Approval Workflow.pdf'),
(91, 1007, 'Upload/656241b87fa66_20231125184928_BackGibela.jpeg'),
(92, 1007, 'Upload/656259f35ef01_20231125203251_User.png'),
(93, 1007, 'Upload/656733c930c5b_20231129125121_AZ UI design (1).pdf'),
(94, 1007, 'Upload/657311a12f3e0_20231208125249_xtrapolis_mega_04_w2000.jpg'),
(95, 1007, 'Upload/657316e20c4e8_20231208131514_AZ UI design (1).pdf'),
(96, 1007, 'Upload/657321a2ec75b_20231208140106_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(97, 1007, 'Upload/657344bb1878c_20231208163051_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(98, 1013, 'Upload/6596b9171bd1f_20240104135639_Approval Workflow.pdf'),
(99, 1015, 'Upload/65623d9a9fd95_20231125183154_User.png'),
(100, 1015, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(101, 1015, 'Upload/65673fce647bb_20231129134238_Approval Workflow.pdf'),
(102, 1015, 'Upload/656241b87fa66_20231125184928_BackGibela.jpeg'),
(103, 1015, 'Upload/656259f35ef01_20231125203251_User.png'),
(104, 1015, 'Upload/656733c930c5b_20231129125121_AZ UI design (1).pdf'),
(105, 1015, 'Upload/657311a12f3e0_20231208125249_xtrapolis_mega_04_w2000.jpg'),
(106, 1015, 'Upload/657316e20c4e8_20231208131514_AZ UI design (1).pdf'),
(107, 1015, 'Upload/657321a2ec75b_20231208140106_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(108, 1015, 'Upload/657344bb1878c_20231208163051_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(109, 1021, 'Upload/6596c658e5e83_20240104145312_Approval Workflow.pdf'),
(110, 1023, 'Upload/65623d9a9fd95_20231125183154_User.png'),
(111, 1023, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(112, 1023, 'Upload/65673fce647bb_20231129134238_Approval Workflow.pdf'),
(113, 1023, 'Upload/656241b87fa66_20231125184928_BackGibela.jpeg'),
(114, 1023, 'Upload/656259f35ef01_20231125203251_User.png'),
(115, 1023, 'Upload/656733c930c5b_20231129125121_AZ UI design (1).pdf'),
(116, 1023, 'Upload/657311a12f3e0_20231208125249_xtrapolis_mega_04_w2000.jpg'),
(117, 1023, 'Upload/657316e20c4e8_20231208131514_AZ UI design (1).pdf'),
(118, 1023, 'Upload/657321a2ec75b_20231208140106_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(119, 1023, 'Upload/657344bb1878c_20231208163051_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(120, 1029, 'Upload/6596f764a1305_20240104182228_PRASA.png'),
(121, 1031, 'Upload/65623d9a9fd95_20231125183154_User.png'),
(122, 1031, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(123, 1031, 'Upload/65673fce647bb_20231129134238_Approval Workflow.pdf'),
(124, 1031, 'Upload/656241b87fa66_20231125184928_BackGibela.jpeg'),
(125, 1031, 'Upload/656259f35ef01_20231125203251_User.png'),
(126, 1031, 'Upload/656733c930c5b_20231129125121_AZ UI design (1).pdf'),
(127, 1031, 'Upload/657311a12f3e0_20231208125249_xtrapolis_mega_04_w2000.jpg'),
(128, 1031, 'Upload/657316e20c4e8_20231208131514_AZ UI design (1).pdf'),
(129, 1031, 'Upload/657321a2ec75b_20231208140106_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(130, 1031, 'Upload/657344bb1878c_20231208163051_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(131, 1037, 'Upload/6596f8d847ceb_20240104182840_Approval Workflow.pdf'),
(132, 1040, 'Upload/6596f91298628_20240104182938_Approval Workflow.pdf'),
(133, 1038, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(134, 1022, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(135, 1030, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(136, 1014, 'Upload/6596f91298628_20240104182938_Approval Workflow.pdf'),
(147, 1014, 'Upload/6596f91298628_20240104182938_Approval Workflow.pdf'),
(148, 1014, 'Upload/6596f91298628_20240104182938_Approval Workflow.pdf'),
(149, 1014, 'Upload/6596f91298628_20240104182938_Approval Workflow.pdf'),
(150, 1014, 'Upload/6596f91298628_20240104182938_Approval Workflow.pdf'),
(151, 1046, 'Upload/65623d9a9fd95_20231125183154_User.png'),
(152, 1046, 'Upload/65625bbf4ebff_20231125204031_User.png'),
(153, 1046, 'Upload/65673fce647bb_20231129134238_Approval Workflow.pdf'),
(154, 1046, 'Upload/656241b87fa66_20231125184928_BackGibela.jpeg'),
(155, 1046, 'Upload/656259f35ef01_20231125203251_User.png'),
(156, 1046, 'Upload/656733c930c5b_20231129125121_AZ UI design (1).pdf'),
(157, 1046, 'Upload/657311a12f3e0_20231208125249_xtrapolis_mega_04_w2000.jpg'),
(158, 1046, 'Upload/657316e20c4e8_20231208131514_AZ UI design (1).pdf'),
(159, 1046, 'Upload/657321a2ec75b_20231208140106_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(160, 1046, 'Upload/657344bb1878c_20231208163051_PHOTO-2023-12-05-12-19-27_Unit186.jpg'),
(161, 1047, 'Upload/Testing documents/AuthPage.php'),
(162, 1047, 'Upload/Testing documents/BANKSETA Presentation - 20 October 2022_FINAL.pptx'),
(163, 1047, 'Upload/Testing documents/Gibela.pptx'),
(164, 1047, 'Upload/Testing documents/IMG_20230527_083026_024.jpg'),
(165, 1047, 'Upload/Testing documents/IMG_20230923_125228_741.jpg'),
(166, 1047, 'Upload/Testing documents/investment-agreement-temp-584.doc'),
(167, 1047, 'Upload/Testing documents/Invoice_Statement_Unit_13_2023-08-01_2023-08-31_Nandi.pdf'),
(168, 1047, 'Upload/Testing documents/IT General Controls.pdf'),
(169, 1047, 'Upload/Testing documents/LKL CONDUCT RULES 2016.pdf'),
(170, 1047, 'Upload/Testing documents/PaymentNotification (2).pdf'),
(171, 1053, 'Upload/6597ff9a6e224_20240105130946_LKL CONDUCT RULES 2016.pdf'),
(172, 1054, 'Upload/65673fce647bb_20231129134238_Approval Workflow.pdf'),
(173, 1056, 'Upload/659802cbe54bb_20240105132323_IT General Controls.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Surname` text NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` text NOT NULL,
  `Cellphone` varchar(10) NOT NULL,
  `Company` enum('PRASA','Gibela') NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Status` enum('Active','Disabled','Suspended') NOT NULL DEFAULT 'Active',
  `CreationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `LastUpdated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `Name`, `Surname`, `Password`, `Email`, `Cellphone`, `Company`, `RoleID`, `Status`, `CreationDate`, `LastUpdated`) VALUES
(1, 'Project Quality', 'Project Quality', '$2y$10$5nCFEz2Z0pX2gIWt077XSOin0kB/oVIVur8Hx9HBBm02XWVk78m4S', 'projectquality@workflowapproval.co.za', '0738680171', 'Gibela', 4, 'Active', '2023-12-11 21:47:59', '2023-12-11 21:48:27'),
(21, 'systemuser', 'systemuser', '$2y$10$NX4ZPrvAblr1ZIUBWcVjduBPRO/rSz16XPSup4DvS6rSfovFfneGK', 'systemusers', 'XXXX', 'Gibela', 9, 'Disabled', '2023-12-14 19:13:27', '2023-12-14 19:13:27'),
(42, 'John', 'Doe', '', 'info@email.com', '9090909', 'Gibela', 4, 'Disabled', '2023-12-16 19:32:07', '2023-12-16 19:32:07'),
(47, 'admin', 'admin', '$2y$10$NX4ZPrvAblr1ZIUBWcVjduBPRO/rSz16XPSup4DvS6rSfovFfneGK', 'admin@workflowapproval.co.za', '0738680174', 'Gibela', 10, 'Active', '2023-12-16 20:56:31', '2023-12-16 20:56:31'),
(53, 'ioioi', 'ioio', '', 'oiioi', '0000', 'Gibela', 4, 'Disabled', '2023-12-17 17:09:31', '2023-12-17 17:09:31'),
(54, 'toko', 'lechaba', '$2y$10$NX4ZPrvAblr1ZIUBWcVjduBPRO/rSz16XPSup4DvS6rSfovFfneGK', 'mletshaba@gmail.com', '0672890165', 'PRASA', 3, 'Active', '2024-01-02 17:16:41', '2024-01-02 17:16:41'),
(55, 'prasa', 'prasa1', '$2y$10$NX4ZPrvAblr1ZIUBWcVjduBPRO/rSz16XPSup4DvS6rSfovFfneGK', 'prasa@workflowapproval.co.za', '000000000', 'PRASA', 6, 'Active', '2024-01-03 12:31:15', '2024-01-03 12:31:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activity`
--
ALTER TABLE `Activity`
  ADD PRIMARY KEY (`ActivityID`),
  ADD KEY `Stage` (`Stage`),
  ADD KEY `InputID` (`InputID`);

--
-- Indexes for table `ActivityButton`
--
ALTER TABLE `ActivityButton`
  ADD PRIMARY KEY (`ActivityButtonID`),
  ADD KEY `ActivityID` (`ActivityID`),
  ADD KEY `ButtonID` (`ButtonID`);

--
-- Indexes for table `ActivityDraftEmails`
--
ALTER TABLE `ActivityDraftEmails`
  ADD PRIMARY KEY (`ActivityDraftEmailsID`),
  ADD KEY `TrainActivityID` (`TrainActivityID`);

--
-- Indexes for table `ActivityNotification`
--
ALTER TABLE `ActivityNotification`
  ADD PRIMARY KEY (`ActivityNotificationID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ActivityID` (`ActivityID`);

--
-- Indexes for table `Approval`
--
ALTER TABLE `Approval`
  ADD PRIMARY KEY (`ApprovalID`),
  ADD KEY `TrainID` (`TrainID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ButtonID` (`ButtonID`),
  ADD KEY `ActivityID` (`ActivityID`);

--
-- Indexes for table `ApprovalButton`
--
ALTER TABLE `ApprovalButton`
  ADD PRIMARY KEY (`ApprovalButtonID`),
  ADD KEY `ActivityID` (`ActivityID`);

--
-- Indexes for table `Audit_Log`
--
ALTER TABLE `Audit_Log`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `Button`
--
ALTER TABLE `Button`
  ADD PRIMARY KEY (`ButtonID`);

--
-- Indexes for table `Dependency`
--
ALTER TABLE `Dependency`
  ADD PRIMARY KEY (`DepID`),
  ADD KEY `CurActID` (`CurActID`,`PrevActID`),
  ADD KEY `PrevActID` (`PrevActID`);

--
-- Indexes for table `EmailQueue`
--
ALTER TABLE `EmailQueue`
  ADD PRIMARY KEY (`EmailQueueID`);

--
-- Indexes for table `Input`
--
ALTER TABLE `Input`
  ADD PRIMARY KEY (`InputID`);

--
-- Indexes for table `RoleActivity`
--
ALTER TABLE `RoleActivity`
  ADD PRIMARY KEY (`Ra_ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ActivityID` (`ActivityID`);

--
-- Indexes for table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `Stage`
--
ALTER TABLE `Stage`
  ADD PRIMARY KEY (`StageID`);

--
-- Indexes for table `SystemActivity`
--
ALTER TABLE `SystemActivity`
  ADD PRIMARY KEY (`SystemActivityID`),
  ADD KEY `ActivityID` (`ActivityID`);

--
-- Indexes for table `Tokens`
--
ALTER TABLE `Tokens`
  ADD PRIMARY KEY (`TokenID`);

--
-- Indexes for table `TrainActivity`
--
ALTER TABLE `TrainActivity`
  ADD PRIMARY KEY (`TrainActivityID`),
  ADD KEY `ActivityID` (`ActivityID`),
  ADD KEY `TrainID` (`TrainID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `TrainDelay`
--
ALTER TABLE `TrainDelay`
  ADD PRIMARY KEY (`TrainDelayID`),
  ADD KEY `TrainID` (`TrainID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Trains`
--
ALTER TABLE `Trains`
  ADD PRIMARY KEY (`Tr_ID`);

--
-- Indexes for table `TrainUploadRequirements`
--
ALTER TABLE `TrainUploadRequirements`
  ADD PRIMARY KEY (`TURID`),
  ADD KEY `ActivityID` (`ActivityID`);

--
-- Indexes for table `TransactionCodes`
--
ALTER TABLE `TransactionCodes`
  ADD PRIMARY KEY (`TransID`);

--
-- Indexes for table `Upload`
--
ALTER TABLE `Upload`
  ADD PRIMARY KEY (`UploadID`),
  ADD KEY `TransactionActivityID` (`TransactionActivityID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Activity`
--
ALTER TABLE `Activity`
  MODIFY `ActivityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ActivityButton`
--
ALTER TABLE `ActivityButton`
  MODIFY `ActivityButtonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ActivityDraftEmails`
--
ALTER TABLE `ActivityDraftEmails`
  MODIFY `ActivityDraftEmailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ActivityNotification`
--
ALTER TABLE `ActivityNotification`
  MODIFY `ActivityNotificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Approval`
--
ALTER TABLE `Approval`
  MODIFY `ApprovalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ApprovalButton`
--
ALTER TABLE `ApprovalButton`
  MODIFY `ApprovalButtonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Audit_Log`
--
ALTER TABLE `Audit_Log`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Button`
--
ALTER TABLE `Button`
  MODIFY `ButtonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Dependency`
--
ALTER TABLE `Dependency`
  MODIFY `DepID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `EmailQueue`
--
ALTER TABLE `EmailQueue`
  MODIFY `EmailQueueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Input`
--
ALTER TABLE `Input`
  MODIFY `InputID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `RoleActivity`
--
ALTER TABLE `RoleActivity`
  MODIFY `Ra_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Stage`
--
ALTER TABLE `Stage`
  MODIFY `StageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `SystemActivity`
--
ALTER TABLE `SystemActivity`
  MODIFY `SystemActivityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Tokens`
--
ALTER TABLE `Tokens`
  MODIFY `TokenID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `TrainActivity`
--
ALTER TABLE `TrainActivity`
  MODIFY `TrainActivityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1061;

--
-- AUTO_INCREMENT for table `TrainDelay`
--
ALTER TABLE `TrainDelay`
  MODIFY `TrainDelayID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Trains`
--
ALTER TABLE `Trains`
  MODIFY `Tr_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `TrainUploadRequirements`
--
ALTER TABLE `TrainUploadRequirements`
  MODIFY `TURID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `TransactionCodes`
--
ALTER TABLE `TransactionCodes`
  MODIFY `TransID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Upload`
--
ALTER TABLE `Upload`
  MODIFY `UploadID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Activity`
--
ALTER TABLE `Activity`
  ADD CONSTRAINT `Activity_ibfk_1` FOREIGN KEY (`InputID`) REFERENCES `Input` (`InputID`),
  ADD CONSTRAINT `Activity_ibfk_2` FOREIGN KEY (`Stage`) REFERENCES `Stage` (`StageID`);

--
-- Constraints for table `ActivityButton`
--
ALTER TABLE `ActivityButton`
  ADD CONSTRAINT `ActivityButton_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`),
  ADD CONSTRAINT `ActivityButton_ibfk_2` FOREIGN KEY (`ButtonID`) REFERENCES `Button` (`ButtonID`);

--
-- Constraints for table `ActivityDraftEmails`
--
ALTER TABLE `ActivityDraftEmails`
  ADD CONSTRAINT `ActivityDraftEmails_ibfk_1` FOREIGN KEY (`TrainActivityID`) REFERENCES `Upload` (`TransactionActivityID`);

--
-- Constraints for table `ActivityNotification`
--
ALTER TABLE `ActivityNotification`
  ADD CONSTRAINT `ActivityNotification_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`),
  ADD CONSTRAINT `ActivityNotification_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `Roles` (`RoleID`);

--
-- Constraints for table `Approval`
--
ALTER TABLE `Approval`
  ADD CONSTRAINT `Approval_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`),
  ADD CONSTRAINT `Approval_ibfk_2` FOREIGN KEY (`ButtonID`) REFERENCES `Button` (`ButtonID`),
  ADD CONSTRAINT `Approval_ibfk_3` FOREIGN KEY (`TrainID`) REFERENCES `Trains` (`Tr_ID`),
  ADD CONSTRAINT `Approval_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `ApprovalButton`
--
ALTER TABLE `ApprovalButton`
  ADD CONSTRAINT `ApprovalButton_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`);

--
-- Constraints for table `Dependency`
--
ALTER TABLE `Dependency`
  ADD CONSTRAINT `Dependency_ibfk_1` FOREIGN KEY (`CurActID`) REFERENCES `Activity` (`ActivityID`),
  ADD CONSTRAINT `Dependency_ibfk_2` FOREIGN KEY (`PrevActID`) REFERENCES `Activity` (`ActivityID`);

--
-- Constraints for table `RoleActivity`
--
ALTER TABLE `RoleActivity`
  ADD CONSTRAINT `RoleActivity_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`),
  ADD CONSTRAINT `RoleActivity_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `Roles` (`RoleID`);

--
-- Constraints for table `SystemActivity`
--
ALTER TABLE `SystemActivity`
  ADD CONSTRAINT `SystemActivity_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`);

--
-- Constraints for table `TrainActivity`
--
ALTER TABLE `TrainActivity`
  ADD CONSTRAINT `TrainActivity_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`),
  ADD CONSTRAINT `TrainActivity_ibfk_2` FOREIGN KEY (`TrainID`) REFERENCES `Trains` (`Tr_ID`),
  ADD CONSTRAINT `TrainActivity_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `TrainDelay`
--
ALTER TABLE `TrainDelay`
  ADD CONSTRAINT `TrainDelay_ibfk_1` FOREIGN KEY (`TrainID`) REFERENCES `Trains` (`Tr_ID`),
  ADD CONSTRAINT `TrainDelay_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

--
-- Constraints for table `TrainUploadRequirements`
--
ALTER TABLE `TrainUploadRequirements`
  ADD CONSTRAINT `TrainUploadRequirements_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activity` (`ActivityID`);

--
-- Constraints for table `Upload`
--
ALTER TABLE `Upload`
  ADD CONSTRAINT `Upload_ibfk_1` FOREIGN KEY (`TransactionActivityID`) REFERENCES `TrainActivity` (`TrainActivityID`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `Roles` (`RoleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
