USE [OrangeDb]
GO
/****** Object:  Table [dbo].[tbl_reservation]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_reservation](
	[reservationId] [int] IDENTITY(1,1) NOT NULL,
	[memberId] [int] NOT NULL,
	[reservationDate] [datetime] NOT NULL,
	[reservationSlot] [varchar](20) NOT NULL,
	[Facility] [varchar](20) NOT NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_reservation] PRIMARY KEY CLUSTERED 
(
	[reservationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_member]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_member](
	[memberId] [int] IDENTITY(1,1) NOT NULL,
	[fName] [varchar](20) NULL,
	[lName] [varchar](20) NULL,
	[gender] [char](1) NULL,
	[address] [varchar](100) NULL,
	[email] [varchar](30) NULL,
	[phone] [bigint] NULL,
	[dob] [datetime] NULL,
	[doj] [datetime] NULL,
	[memberType] [char](1) NULL,
	[accountStatus] [int] NOT NULL,
	[statusRemark] [varchar](50) NULL,
	[maritalStatus] [char](1) NULL,
	[sportsPerson] [int] NULL,
	[deptId] [int] NULL,
	[username] [varchar](20) NULL,
	[dateOfExpiry] [datetime] NULL,
	[due] [int] NOT NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[memberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[role] [char](1) NOT NULL,
	[securityQuestion] [varchar](30) NOT NULL,
	[securityAnswer] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_fee]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_fee](
	[feeId] [int] IDENTITY(1,1) NOT NULL,
	[facilityId] [int] NOT NULL,
	[Fee] [int] NOT NULL,
 CONSTRAINT [PK_fee] PRIMARY KEY CLUSTERED 
(
	[feeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_facility]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_facility](
	[facilityId] [int] IDENTITY(1,1) NOT NULL,
	[facilityName] [varchar](20) NOT NULL,
	[deptId] [int] NOT NULL,
 CONSTRAINT [PK_facility] PRIMARY KEY CLUSTERED 
(
	[facilityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_discount]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_discount](
	[discountId] [int] IDENTITY(1,1) NOT NULL,
	[deptId] [int] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_discount] PRIMARY KEY CLUSTERED 
(
	[discountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_department]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_department](
	[deptId] [int] IDENTITY(1,1) NOT NULL,
	[deptName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[deptId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_billingInfo]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_billingInfo](
	[billId] [int] IDENTITY(1,1) NOT NULL,
	[memberId] [int] NOT NULL,
	[paymentMode] [char](1) NOT NULL,
	[paymentFor] [varchar](20) NULL,
	[Date] [datetime] NOT NULL,
	[amountPaid] [int] NOT NULL,
	[chequeNo] [bigint] NULL,
	[branchName] [varchar](20) NULL,
	[bankName] [varchar](20) NULL,
	[cardNo] [bigint] NULL,
	[cvcNo] [int] NULL,
	[cardExpiryDate] [datetime] NULL,
	[cardType] [varchar](11) NULL,
	[paymentStatus] [int] NOT NULL,
	[paymentRemark] [varchar](20) NULL,
	[reservationId] [int] NULL,
 CONSTRAINT [PK_billingInfo] PRIMARY KEY CLUSTERED 
(
	[billId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Addon]    Script Date: 02/05/2023 01:08:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Addon](
	[addOnId] [int] IDENTITY(1,1) NOT NULL,
	[memberId] [int] NOT NULL,
	[referenceId] [int] NOT NULL,
	[relation] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Addon] PRIMARY KEY CLUSTERED 
(
	[addOnId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[updateMemberDetails]    Script Date: 02/05/2023 01:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateMemberDetails]
		@memId	int,
        @fName      VARCHAR(20),                       
        @lName      VARCHAR(20), 
		@gender		char(1),
		@address varchar(1000),
		@email	varchar(30),
		@phone	bigint ,
		@dob	datetime,
		@maritalStatus char(1)
		                  
AS 
BEGIN 

Update [OrangeDb].[dbo].[tbl_member]
   set fName=@fName,
   lName =@lName,
   gender=@gender,
   address=@address,
   email=@email,
   phone=@phone,
   @dob=@dob,
   maritalStatus=@maritalStatus  
   where memberId=@memId 
END
GO
/****** Object:  StoredProcedure [dbo].[insertReservation]    Script Date: 02/05/2023 01:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertReservation] 
	-- Add the parameters for the stored procedure here
	@memberId int ,
	   @reservationDate datetime,
	   @facilty varchar,
	   @reservationSlot varchar,
	   @status varchar
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   INSERT INTO 
	   [OrangeDb].[dbo].[tbl_reservation] 
	   ([memberId],
	   [reservationDate],
	   [Facility],
	   [reservationSlot],
	   [Status])
	VALUES
	   (@memberId,
	   @reservationDate,
	   @facilty,
	   @reservationSlot,
	   @status   
	   )
	   
	   SELECT SCOPE_IDENTITY()

END
GO
/****** Object:  StoredProcedure [dbo].[insertMemberDetails]    Script Date: 02/05/2023 01:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMemberDetails]
        @fName      VARCHAR(20),                       
        @lName      VARCHAR(20), 
		@gender		char(1),
		@address varchar(1000),
		@email	varchar(30),
		@phone	bigint ,
		@dob	datetime,
		@doj datetime,
		@type char(1),
		@accountStatus	int,
		@statusRemark	varchar(50),
		@maritalStatus char(1),
		@sportsPerson int,
		@deptId int,
		@username varchar(20),
		@password varchar(32),
		@dateOfExpiry datetime,
		@securityQuestion varchar(30),
		@securityAnswer varchar(15)                  
AS 
BEGIN 
INSERT INTO [OrangeDb].[dbo].[tbl_Login]
           ([username]
           ,[password]
           ,[securityQuestion]
           ,[securityAnswer]
           , [role])
     VALUES
           (@username,@password,@securityQuestion,@securityAnswer,'m')
    INSERT INTO [OrangeDb].[dbo].[tbl_member]
           ([fName]
           ,[lName]
           ,[gender]
           ,[address]
           ,[email]
           ,[phone]
           ,[accountStatus]
           ,[dob]
           ,[doj]
           ,[memberType]
           ,[statusRemark]
           ,[maritalStatus]
           ,[sportsPerson]
           ,[deptId]
           ,[username]
           ,[dateOfExpiry]
           ,[due]
           )
     VALUES
           (
           @fname,@lname,@gender,@address,@email,@phone,@accountStatus,@dob,
           @doj,@type,@statusRemark,@maritalStatus,@sportsPerson,@deptId,@username,@dateOfExpiry,0
           )
END
GO
