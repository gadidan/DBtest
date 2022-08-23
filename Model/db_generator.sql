﻿USE [ExampleDB]
GO
/****** Object:  UserDefinedTableType [dbo].[agent_code_list]    Script Date: 8/18/2022 6:22:08 PM ******/
CREATE TYPE [dbo].[agent_code_list] AS TABLE(
	[agent_code] [char](6) NULL
)
GO
/****** Object:  Table [dbo].[AGENTS]    Script Date: 8/18/2022 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGENTS](
	[AGENT_CODE] [char](6) NOT NULL,
	[AGENT_NAME] [char](40) NULL,
	[WORKING_AREA] [char](35) NULL,
	[COMMISSION] [int] NULL,
	[PHONE_NO] [char](15) NULL,
	[COUNTRY] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[AGENT_CODE] ASC
)) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 8/18/2022 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ORD_NUM] [int] NOT NULL,
	[ORD_AMOUNT] [float] NOT NULL,
	[ADVANCE_AMOUNT] [float] NOT NULL,
	[ORD_DATE] [datetime] NOT NULL,
	[CUST_CODE] [varchar](6) NOT NULL,
	[AGENT_CODE] [char](6) NOT NULL,
	[ORD_DESCRIPTION] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ORD_NUM] ASC
)) ON [PRIMARY]
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A001  ', N'Subbarao                                ', N'Bangalore                          ', 14, N'077-12346674   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A002  ', N'Mukesh                                  ', N'Mumbai                             ', 11, N'029-12358964   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A004  ', N'Ivan                                    ', N'Torento                            ', 15, N'008-22544166   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A005  ', N'Anderson                                ', N'Brisban                            ', 13, N'045-21447739   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A006  ', N'McDen                                   ', N'London                             ', 15, N'078-22255588   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A008  ', N'Alford                                  ', N'New York                           ', 12, N'044-25874365   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A009  ', N'Benjamin                                ', N'Hampshair                          ', 11, N'008-22536178   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A011  ', N'Ravi Kumar                              ', N'Bangalore                          ', 15, N'077-45625874   ', N'')
GO
INSERT [dbo].[AGENTS] ([AGENT_CODE], [AGENT_NAME], [WORKING_AREA], [COMMISSION], [PHONE_NO], [COUNTRY]) VALUES (N'A012  ', N'Lucida                                  ', N'San Jose                           ', 12, N'044-52981425   ', N'')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200002, 1000, 400, CAST(N'2022-05-15T00:00:00.000' AS DateTime), N'C00012', N'A012  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200014, 500, 100, CAST(N'2020-07-11T00:00:00.000' AS DateTime), N'C00010', N'A009  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200023, 500, 100, CAST(N'2021-04-04T00:00:00.000' AS DateTime), N'C00022', N'A002  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200101, 3000, 1000, CAST(N'2021-07-15T00:00:00.000' AS DateTime), N'C00001', N'A008  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200102, 2000, 300, CAST(N'2021-05-05T00:00:00.000' AS DateTime), N'C00012', N'A012  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200103, 1500, 700, CAST(N'2021-11-05T00:00:00.000' AS DateTime), N'C00021', N'A005  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200104, 1500, 500, CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'C00006', N'A004  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200105, 2500, 500, CAST(N'2020-11-08T00:00:00.000' AS DateTime), N'C00025', N'A011  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200106, 2500, 700, CAST(N'2020-02-04T00:00:00.000' AS DateTime), N'C00005', N'A002  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200108, 4000, 600, CAST(N'2021-02-11T00:00:00.000' AS DateTime), N'C00008', N'A004  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200111, 1000, 300, CAST(N'2021-07-10T00:00:00.000' AS DateTime), N'C00020', N'A008  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200112, 600, 200, CAST(N'2020-10-12T00:00:00.000' AS DateTime), N'C00023', N'A006  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200113, 4000, 600, CAST(N'2021-06-19T00:00:00.000' AS DateTime), N'C00022', N'A002  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200114, 3500, 2000, CAST(N'2021-08-18T00:00:00.000' AS DateTime), N'C00002', N'A008  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200115, 900, 700, CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'C00010', N'A009  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200116, 600, 200, CAST(N'2021-11-18T00:00:00.000' AS DateTime), N'C00010', N'A009  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200117, 800, 200, CAST(N'2021-10-11T00:00:00.000' AS DateTime), N'C00014', N'A001  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200118, 500, 100, CAST(N'2020-09-04T00:00:00.000' AS DateTime), N'C00023', N'A006  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200120, 500, 100, CAST(N'2020-07-06T00:00:00.000' AS DateTime), N'C00009', N'A002  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200121, 1500, 600, CAST(N'2021-03-19T00:00:00.000' AS DateTime), N'C00008', N'A004  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200122, 2500, 400, CAST(N'2021-09-17T00:00:00.000' AS DateTime), N'C00003', N'A004  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200123, 500, 100, CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'C00022', N'A002  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200125, 2000, 600, CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'C00018', N'A005  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200130, 2500, 400, CAST(N'2021-03-07T00:00:00.000' AS DateTime), N'C00025', N'A011  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (200134, 4200, 1800, CAST(N'2020-05-19T00:00:00.000' AS DateTime), N'C00004', N'A005  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (201011, 300, 200, CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'C00023', N'A006  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (201012, 600, 200, CAST(N'2020-01-03T00:00:00.000' AS DateTime), N'C00023', N'A004  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (201013, 300, 200, CAST(N'2020-10-02T00:00:00.000' AS DateTime), N'C00023', N'A004  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (210108, 1800, 900, CAST(N'2021-12-04T00:00:00.000' AS DateTime), N'C00021', N'A005  ', N'ADR')
GO
INSERT [dbo].[ORDERS] ([ORD_NUM], [ORD_AMOUNT], [ADVANCE_AMOUNT], [ORD_DATE], [CUST_CODE], [AGENT_CODE], [ORD_DESCRIPTION]) VALUES (210109, 1800, 500, CAST(N'2021-10-04T00:00:00.000' AS DateTime), N'C00021', N'A005  ', N'ADR')
GO
/****** Object:  StoredProcedure [dbo].[highestSumOfAdvanceAmount]    Script Date: 8/18/2022 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[highestSumOfAdvanceAmount]
	@year int = 2022
AS
	DECLARE @start NVARCHAR(100) = CAST(@year AS NVARCHAR) + '-01-01'
	DECLARE @startQuarterStart DATETIME2 = @start
	DECLARE @end NVARCHAR(100) = CAST(@year AS NVARCHAR) + '-03-31'
	DECLARE @lastQuarterStart DATETIME2 = @end

	SELECT SUM(ORD_AMOUNT) ordAmount, AGENT_CODE INTO #temp FROM ORDERS
			WHERE ORD_DATE BETWEEN  @startQuarterStart AND  @lastQuarterStart
			GROUP BY AGENT_CODE
	
	SELECT AGENT_CODE FROM #temp WHERE ordAmount = (SELECT MAX(ordAmount) FROM #temp)

RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[moreOrEqualOrders]    Script Date: 8/18/2022 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[moreOrEqualOrders]
	@ordersNum int,
	@year int
AS
	--declare @ordersNum int = 3,
	--@year int = 2021
	
	
	select tbl.AGENT_CODE, tbl.AGENT_NAME, tbl.WORKING_AREA, tbl.COMMISSION, tbl.PHONE_NO, tbl.COUNTRY
	from 
		(select a.*,count(*) num-- into #temp
			from [dbo].[AGENTS] a
			inner join [dbo].[ORDERS] o 
				on a.[AGENT_CODE] = o.[AGENT_CODE]
					and YEAR(o.[ORD_DATE]) = @year
					group by a.AGENT_CODE, a.AGENT_NAME, a.WORKING_AREA, a.COMMISSION, a.PHONE_NO, a.COUNTRY) tbl
			where tbl.num >= @ordersNum
					
		

RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[nthRowOfAgents]    Script Date: 8/18/2022 6:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[nthRowOfAgents]
	@agentCodeList agent_code_list READONLY,
	@rowNum int
AS
	WITH added_row_number AS (
	  SELECT
		*,
		ROW_NUMBER() OVER(PARTITION BY AGENT_CODE ORDER BY AGENT_CODE, ORD_DATE DESC) AS row_number
	  FROM [dbo].[ORDERS]
  		  WHERE	EXISTS (SELECT 1 FROM @agentCodeList  a WHERE a.AGENT_CODE = AGENT_CODE)

	)
	SELECT
	  *
	FROM added_row_number
	WHERE row_number = @rowNum;
RETURN 0
GO