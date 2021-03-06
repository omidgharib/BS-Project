USE [OnlineStore]
GO
/****** Object:  Table [dbo].[Complain]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complain](
	[ComplaintId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Text] [ntext] NULL,
	[Answer] [ntext] NULL,
	[Date] [ntext] NULL,
 CONSTRAINT [PK_Complain] PRIMARY KEY CLUSTERED 
(
	[ComplaintId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [ntext] NULL,
	[Text] [ntext] NULL,
	[Answer] [ntext] NULL,
	[Date] [ntext] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Image](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NULL,
	[Title] [ntext] NULL,
	[Address] [ntext] NULL,
	[Description] [ntext] NULL,
	[Product_logo] [bit] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [ntext] NULL,
	[UserId] [int] NULL,
	[User_Submit] [bit] NULL,
	[Admin_Submit] [bit] NULL,
	[PayOff_Submit] [bit] NULL,
	[TotalCost] [ntext] NULL,
	[Date] [ntext] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laptop_Details]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Laptop_Details](
	[LaptopId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[Weight] [ntext] NULL,
	[Processor] [ntext] NULL,
	[GraphicCard] [ntext] NULL,
	[RAM] [ntext] NULL,
	[Memory] [ntext] NULL,
	[Display] [ntext] NULL,
	[Connections] [ntext] NULL,
	[Equipment] [ntext] NULL,
	[Ports] [ntext] NULL,
	[More_Details] [ntext] NULL,
	[Link_Info] [ntext] NULL,
 CONSTRAINT [PK_Laptop_Details] PRIMARY KEY CLUSTERED 
(
	[LaptopId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mobile_Details]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mobile_Details](
	[MobileId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[Weight] [ntext] NULL,
	[Processor] [ntext] NULL,
	[Memory] [ntext] NULL,
	[Connections] [ntext] NULL,
	[Display] [ntext] NULL,
	[Camera] [ntext] NULL,
	[OS] [ntext] NULL,
	[SoftWare] [ntext] NULL,
	[More_Details] [ntext] NULL,
	[Link_Info] [ntext] NULL,
 CONSTRAINT [PK_Mobile_Details] PRIMARY KEY CLUSTERED 
(
	[MobileId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [varchar](50) NOT NULL,
	[ProductName] [ntext] NULL,
	[Price] [ntext] NULL,
	[Category] [ntext] NULL,
	[Brand] [ntext] NULL,
	[Date_of_Production] [ntext] NULL,
	[Discount] [ntext] NULL,
	[Stock] [bigint] NULL,
	[Total_Rate] [int] NULL,
	[Date_Created] [ntext] NULL,
	[Off_Percentage] [int] NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [ntext] NULL,
	[ProductId] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Cost] [ntext] NULL,
	[UserId] [int] NULL,
	[Date] [ntext] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product_Rating]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_Rating](
	[RatingId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NULL,
	[UserId] [int] NULL,
	[Rate] [int] NULL,
	[Date] [ntext] NULL,
 CONSTRAINT [PK_Product_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tablet_Details]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tablet_Details](
	[TabletId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [varchar](50) NULL,
	[Description] [ntext] NULL,
	[Weight] [ntext] NULL,
	[Processor] [ntext] NULL,
	[Memory] [ntext] NULL,
	[Display] [ntext] NULL,
	[Connections] [ntext] NULL,
	[Equipment] [ntext] NULL,
	[OS] [ntext] NULL,
	[Link_Info] [ntext] NULL,
 CONSTRAINT [PK_Tablet_Details] PRIMARY KEY CLUSTERED 
(
	[TabletId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 08/20/2012 19:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [ntext] NULL,
	[LastName] [ntext] NULL,
	[UserName] [ntext] NULL,
	[Password] [ntext] NULL,
	[Email] [ntext] NULL,
	[Tell] [ntext] NULL,
	[Cell] [ntext] NULL,
	[State] [ntext] NULL,
	[City] [ntext] NULL,
	[Address] [ntext] NULL,
	[PostalCode] [ntext] NULL,
	[BirthDay] [ntext] NULL,
	[BirthMonth] [ntext] NULL,
	[BirthYear] [ntext] NULL,
	[Date_reg_day] [ntext] NULL,
	[Date_reg_month] [ntext] NULL,
	[Date_reg_year] [ntext] NULL,
	[Admin] [int] NULL,
	[Secret_Question] [ntext] NULL,
	[Answer_Secret_Question] [ntext] NULL,
	[Sex] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[User_Update]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Update]
	@UserId Int,
	@Name NText,
	@LastName NText,
	@UserName NText,
	@Password NText,
	@Email NText,
	@Tell NText,
	@Cell NText,
	@State NText,
	@City NText,
	@Address NText,
	@PostalCode NText,
	@BirthDay NText,
	@BirthMonth NText,
	@BirthYear NText,
	@Date_reg_day NText,
	@Date_reg_month NText,
	@Date_reg_year NText,
	@Admin Int,
	@Secret_Question NText,
	@Answer_Secret_Question NText,
	@Sex Bit
AS
	UPDATE [User]
	SET
		[Name] = @Name,
		[LastName] = @LastName,
		[UserName] = @UserName,
		[Password] = @Password,
		[Email] = @Email,
		[Tell] = @Tell,
		[Cell] = @Cell,
		[State] = @State,
		[City] = @City,
		[Address] = @Address,
		[PostalCode] = @PostalCode,
		[BirthDay] = @BirthDay,
		[BirthMonth] = @BirthMonth,
		[BirthYear] = @BirthYear,
		[Date_reg_day] = @Date_reg_day,
		[Date_reg_month] = @Date_reg_month,
		[Date_reg_year] = @Date_reg_year,
		[Admin] = @Admin,
		[Secret_Question] = @Secret_Question,
		[Answer_Secret_Question] = @Answer_Secret_Question,
		[Sex] = @Sex
    WHERE [UserId] = @UserId
GO
/****** Object:  StoredProcedure [dbo].[User_Select]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Select]
	@UserId Int 
AS
	SELECT *
    FROM [User]
    WHERE [UserId] = @UserId
GO
/****** Object:  StoredProcedure [dbo].[User_Insert]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Insert]
	@Name NText,
	@LastName NText,
	@UserName NText,
	@Password NText,
	@Email NText,
	@Tell NText,
	@Cell NText,
	@State NText,
	@City NText,
	@Address NText,
	@PostalCode NText,
	@BirthDay NText,
	@BirthMonth NText,
	@BirthYear NText,
	@Date_reg_day NText,
	@Date_reg_month NText,
	@Date_reg_year NText,
	@Admin Int,
	@Secret_Question NText,
	@Answer_Secret_Question NText,
	@Sex Bit,

	@UserId Int OUTPUT
AS
	INSERT INTO [User](
		[Name],
		[LastName],
		[UserName],
		[Password],
		[Email],
		[Tell],
		[Cell],
		[State],
		[City],
		[Address],
		[PostalCode],
		[BirthDay],
		[BirthMonth],
		[BirthYear],
		[Date_reg_day],
		[Date_reg_month],
		[Date_reg_year],
		[Admin],
		[Secret_Question],
		[Answer_Secret_Question],
		[Sex]
	)
	VALUES(
		@Name,
		@LastName,
		@UserName,
		@Password,
		@Email,
		@Tell,
		@Cell,
		@State,
		@City,
		@Address,
		@PostalCode,
		@BirthDay,
		@BirthMonth,
		@BirthYear,
		@Date_reg_day,
		@Date_reg_month,
		@Date_reg_year,
		@Admin,
		@Secret_Question,
		@Answer_Secret_Question,
		@Sex
	)
	SET @UserId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[User_Delete]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_Delete]
	@UserId Int
AS
	DELETE [User]
	WHERE [UserId] = @UserId
GO
/****** Object:  StoredProcedure [dbo].[Tablet_Details_Update]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Tablet_Details_Update]
	@TabletId Int,
	@ProductId VarChar(50),
	@Description NText,
	@Weight NText,
	@Processor NText,
	@Memory NText,
	@Display NText,
	@Connections NText,
	@Equipment NText,
	@OS NText,
	@Link_Info NText
AS
	UPDATE [Tablet_Details]
	SET
		[ProductId] = @ProductId,
		[Description] = @Description,
		[Weight] = @Weight,
		[Processor] = @Processor,
		[Memory] = @Memory,
		[Display] = @Display,
		[Connections] = @Connections,
		[Equipment] = @Equipment,
		[OS] = @OS,
		[Link_Info] = @Link_Info
    WHERE [TabletId] = @TabletId
GO
/****** Object:  StoredProcedure [dbo].[Tablet_Details_Select]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Tablet_Details_Select]
	@TabletId Int 
AS
	SELECT *
    FROM [Tablet_Details]
    WHERE [TabletId] = @TabletId
GO
/****** Object:  StoredProcedure [dbo].[Tablet_Details_Insert]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Tablet_Details_Insert]
	@ProductId VarChar(50),
	@Description NText,
	@Weight NText,
	@Processor NText,
	@Memory NText,
	@Display NText,
	@Connections NText,
	@Equipment NText,
	@OS NText,
	@Link_Info NText,

	@TabletId Int OUTPUT
AS
	INSERT INTO [Tablet_Details](
		[ProductId],
		[Description],
		[Weight],
		[Processor],
		[Memory],
		[Display],
		[Connections],
		[Equipment],
		[OS],
		[Link_Info]
	)
	VALUES(
		@ProductId,
		@Description,
		@Weight,
		@Processor,
		@Memory,
		@Display,
		@Connections,
		@Equipment,
		@OS,
		@Link_Info
	)
	SET @TabletId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Tablet_Details_Delete]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Tablet_Details_Delete]
	@TabletId Int
AS
	DELETE [Tablet_Details]
	WHERE [TabletId] = @TabletId
GO
/****** Object:  StoredProcedure [dbo].[Product_Update]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Update]
	@ProductId VarChar(50),
	@ProductName NText,
	@Price NText,
	@Category NText,
	@Brand NText,
	@Date_of_Production NText,
	@Discount NText,
	@Stock BigInt,
	@Total_Rate Int,
	@Date_Created NText,
	@Off_Percentage Int
AS
	UPDATE [Product]
	SET
		[ProductId] = @ProductId,
		[ProductName] = @ProductName,
		[Price] = @Price,
		[Category] = @Category,
		[Brand] = @Brand,
		[Date_of_Production] = @Date_of_Production,
		[Discount] = @Discount,
		[Stock] = @Stock,
		[Total_Rate] = @Total_Rate,
		[Date_Created] = @Date_Created,
		[Off_Percentage] = @Off_Percentage
    WHERE [ProductId] = @ProductId
GO
/****** Object:  StoredProcedure [dbo].[Product_Select]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Select]
	@ProductId VarChar(50) 
AS
	SELECT *
    FROM [Product]
    WHERE [ProductId] = @ProductId
GO
/****** Object:  StoredProcedure [dbo].[Product_Rating_Update]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Rating_Update]
	@RatingId Int,
	@ProductId VarChar(50),
	@UserId Int,
	@Rate Int,
	@Date NText
AS
	UPDATE [Product_Rating]
	SET
		[ProductId] = @ProductId,
		[UserId] = @UserId,
		[Rate] = @Rate,
		[Date] = @Date
    WHERE [RatingId] = @RatingId
GO
/****** Object:  StoredProcedure [dbo].[Product_Rating_Select]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Rating_Select]
	@RatingId Int 
AS
	SELECT *
    FROM [Product_Rating]
    WHERE [RatingId] = @RatingId
GO
/****** Object:  StoredProcedure [dbo].[Product_Rating_Insert]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Rating_Insert]
	@ProductId VarChar(50),
	@UserId Int,
	@Rate Int,
	@Date NText,

	@RatingId Int OUTPUT
AS
	INSERT INTO [Product_Rating](
		[ProductId],
		[UserId],
		[Rate],
		[Date]
	)
	VALUES(
		@ProductId,
		@UserId,
		@Rate,
		@Date
	)
	SET @RatingId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Product_Rating_Delete]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Rating_Delete]
	@RatingId Int
AS
	DELETE [Product_Rating]
	WHERE [RatingId] = @RatingId
GO
/****** Object:  StoredProcedure [dbo].[Product_Insert]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Insert]
	@ProductId VarChar(50),
	@ProductName NText,
	@Price NText,
	@Category NText,
	@Brand NText,
	@Date_of_Production NText,
	@Discount NText,
	@Stock BigInt,
	@Total_Rate Int,
	@Date_Created NText,
	@Off_Percentage Int
	
AS
	INSERT INTO [Product](
		[ProductId],
		[ProductName],
		[Price],
		[Category],
		[Brand],
		[Date_of_Production],
		[Discount],
		[Stock],
		[Total_Rate],
		[Date_Created],
		[Off_Percentage]
	)
	VALUES(
		@ProductId,
		@ProductName,
		@Price,
		@Category,
		@Brand,
		@Date_of_Production,
		@Discount,
		@Stock,
		@Total_Rate,
		@Date_Created,
		@Off_Percentage
	)
GO
/****** Object:  StoredProcedure [dbo].[Product_Delete]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Delete]
	@ProductId VarChar(50)
AS
	DELETE [Product]
	WHERE [ProductId] = @ProductId
GO
/****** Object:  StoredProcedure [dbo].[Mobile_Details_Update]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Mobile_Details_Update]
	@MobileId Int,
	@ProductId VarChar(50),
	@Description NText,
	@Weight NText,
	@Processor NText,
	@Memory NText,
	@Connections NText,
	@Display NText,
	@Camera NText,
	@OS NText,
	@SoftWare NText,
	@More_Details NText,
	@Link_Info NText
AS
	UPDATE [Mobile_Details]
	SET
		[ProductId] = @ProductId,
		[Description] = @Description,
		[Weight] = @Weight,
		[Processor] = @Processor,
		[Memory] = @Memory,
		[Connections] = @Connections,
		[Display] = @Display,
		[Camera] = @Camera,
		[OS] = @OS,
		[SoftWare] = @SoftWare,
		[More_Details] = @More_Details,
		[Link_Info] = @Link_Info
    WHERE [MobileId] = @MobileId
GO
/****** Object:  StoredProcedure [dbo].[Mobile_Details_Select]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Mobile_Details_Select]
	@MobileId Int 
AS
	SELECT *
    FROM [Mobile_Details]
    WHERE [MobileId] = @MobileId
GO
/****** Object:  StoredProcedure [dbo].[Mobile_Details_Insert]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Mobile_Details_Insert]
	@ProductId VarChar(50),
	@Description NText,
	@Weight NText,
	@Processor NText,
	@Memory NText,
	@Connections NText,
	@Display NText,
	@Camera NText,
	@OS NText,
	@SoftWare NText,
	@More_Details NText,
	@Link_Info NText,

	@MobileId Int OUTPUT
AS
	INSERT INTO [Mobile_Details](
		[ProductId],
		[Description],
		[Weight],
		[Processor],
		[Memory],
		[Connections],
		[Display],
		[Camera],
		[OS],
		[SoftWare],
		[More_Details],
		[Link_Info]
	)
	VALUES(
		@ProductId,
		@Description,
		@Weight,
		@Processor,
		@Memory,
		@Connections,
		@Display,
		@Camera,
		@OS,
		@SoftWare,
		@More_Details,
		@Link_Info
	)
	SET @MobileId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Mobile_Details_Delete]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Mobile_Details_Delete]
	@MobileId Int
AS
	DELETE [Mobile_Details]
	WHERE [MobileId] = @MobileId
GO
/****** Object:  StoredProcedure [dbo].[Laptop_Details_Update]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Laptop_Details_Update]
	@LaptopId Int,
	@ProductId VarChar(50),
	@Description NText,
	@Weight NText,
	@Processor NText,
	@GraphicCard NText,
	@RAM NText,
	@Memory NText,
	@Display NText,
	@Connections NText,
	@Equipment NText,
	@Ports NText,
	@More_Details NText,
	@Link_Info NText
AS
	UPDATE [Laptop_Details]
	SET
		[ProductId] = @ProductId,
		[Description] = @Description,
		[Weight] = @Weight,
		[Processor] = @Processor,
		[GraphicCard] = @GraphicCard,
		[RAM] = @RAM,
		[Memory] = @Memory,
		[Display] = @Display,
		[Connections] = @Connections,
		[Equipment] = @Equipment,
		[Ports] = @Ports,
		[More_Details] = @More_Details,
		[Link_Info] = @Link_Info
    WHERE [LaptopId] = @LaptopId
GO
/****** Object:  StoredProcedure [dbo].[Laptop_Details_Select]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Laptop_Details_Select]
	@LaptopId Int 
AS
	SELECT *
    FROM [Laptop_Details]
    WHERE [LaptopId] = @LaptopId
GO
/****** Object:  StoredProcedure [dbo].[Laptop_Details_Insert]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Laptop_Details_Insert]
	@ProductId VarChar(50),
	@Description NText,
	@Weight NText,
	@Processor NText,
	@GraphicCard NText,
	@RAM NText,
	@Memory NText,
	@Display NText,
	@Connections NText,
	@Equipment NText,
	@Ports NText,
	@More_Details NText,
	@Link_Info NText,

	@LaptopId Int OUTPUT
AS
	INSERT INTO [Laptop_Details](
		[ProductId],
		[Description],
		[Weight],
		[Processor],
		[GraphicCard],
		[RAM],
		[Memory],
		[Display],
		[Connections],
		[Equipment],
		[Ports],
		[More_Details],
		[Link_Info]
	)
	VALUES(
		@ProductId,
		@Description,
		@Weight,
		@Processor,
		@GraphicCard,
		@RAM,
		@Memory,
		@Display,
		@Connections,
		@Equipment,
		@Ports,
		@More_Details,
		@Link_Info
	)
	SET @LaptopId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Laptop_Details_Delete]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Laptop_Details_Delete]
	@LaptopId Int
AS
	DELETE [Laptop_Details]
	WHERE [LaptopId] = @LaptopId
GO
/****** Object:  StoredProcedure [dbo].[Invoice_Update]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Invoice_Update]
	@Id Int,
	@CartId NText,
	@UserId Int,
	@User_Submit Bit,
	@Admin_Submit Bit,
	@PayOff_Submit Bit,
	@TotalCost NText,
	@Date NText
AS
	UPDATE [Invoice]
	SET
		[CartId] = @CartId,
		[UserId] = @UserId,
		[User_Submit] = @User_Submit,
		[Admin_Submit] = @Admin_Submit,
		[PayOff_Submit] = @PayOff_Submit,
		[TotalCost] = @TotalCost,
		[Date] = @Date
    WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[Invoice_Select]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Invoice_Select]
	@Id Int 
AS
	SELECT *
    FROM [Invoice]
    WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[Invoice_Insert]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Invoice_Insert]
	@CartId NText,
	@UserId Int,
	@User_Submit Bit,
	@Admin_Submit Bit,
	@PayOff_Submit Bit,
	@TotalCost NText,
	@Date NText,

	@Id Int OUTPUT
AS
	INSERT INTO [Invoice](
		[CartId],
		[UserId],
		[User_Submit],
		[Admin_Submit],
		[PayOff_Submit],
		[TotalCost],
		[Date]
	)
	VALUES(
		@CartId,
		@UserId,
		@User_Submit,
		@Admin_Submit,
		@PayOff_Submit,
		@TotalCost,
		@Date
	)
	SET @Id = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Invoice_Delete]    Script Date: 08/20/2012 19:02:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Invoice_Delete]
	@Id Int
AS
	DELETE [Invoice]
	WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[Image_Update]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Image_Update]
	@ImageId Int,
	@ProductId VarChar(50),
	@Title NText,
	@Address NText,
	@Description NText,
	@Product_logo Bit
AS
	UPDATE [Image]
	SET
		[ProductId] = @ProductId,
		[Title] = @Title,
		[Address] = @Address,
		[Description] = @Description,
		[Product_logo] = @Product_logo
    WHERE [ImageId] = @ImageId
GO
/****** Object:  StoredProcedure [dbo].[Image_Select]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Image_Select]
	@ImageId Int 
AS
	SELECT *
    FROM [Image]
    WHERE [ImageId] = @ImageId
GO
/****** Object:  StoredProcedure [dbo].[Image_Insert]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Image_Insert]
	@ProductId VarChar(50),
	@Title NText,
	@Address NText,
	@Description NText,
	@Product_logo Bit,

	@ImageId Int OUTPUT
AS
	INSERT INTO [Image](
		[ProductId],
		[Title],
		[Address],
		[Description],
		[Product_logo]
	)
	VALUES(
		@ProductId,
		@Title,
		@Address,
		@Description,
		@Product_logo
	)
	SET @ImageId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Image_Delete]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Image_Delete]
	@ImageId Int
AS
	DELETE [Image]
	WHERE [ImageId] = @ImageId
GO
/****** Object:  StoredProcedure [dbo].[Feedback_Update]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Feedback_Update]
	@FeedbackId Int,
	@Email NText,
	@Text NText,
	@Answer NText,
	@Date NText
AS
	UPDATE [Feedback]
	SET
		[Email] = @Email,
		[Text] = @Text,
		[Answer] = @Answer,
		[Date] = @Date
    WHERE [FeedbackId] = @FeedbackId
GO
/****** Object:  StoredProcedure [dbo].[Feedback_Select]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Feedback_Select]
	@FeedbackId Int 
AS
	SELECT *
    FROM [Feedback]
    WHERE [FeedbackId] = @FeedbackId
GO
/****** Object:  StoredProcedure [dbo].[Feedback_Insert]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Feedback_Insert]
	@Email NText,
	@Text NText,
	@Answer NText,
	@Date NText,

	@FeedbackId Int OUTPUT
AS
	INSERT INTO [Feedback](
		[Email],
		[Text],
		[Answer],
		[Date]
	)
	VALUES(
		@Email,
		@Text,
		@Answer,
		@Date
	)
	SET @FeedbackId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Feedback_Delete]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Feedback_Delete]
	@FeedbackId Int
AS
	DELETE [Feedback]
	WHERE [FeedbackId] = @FeedbackId
GO
/****** Object:  StoredProcedure [dbo].[Complain_Update]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Complain_Update]
	@ComplaintId Int,
	@UserId Int,
	@Text NText,
	@Answer NText,
	@Date NText
AS
	UPDATE [Complain]
	SET
		[UserId] = @UserId,
		[Text] = @Text,
		[Answer] = @Answer,
		[Date] = @Date
    WHERE [ComplaintId] = @ComplaintId
GO
/****** Object:  StoredProcedure [dbo].[Complain_Select]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Complain_Select]
	@ComplaintId Int 
AS
	SELECT *
    FROM [Complain]
    WHERE [ComplaintId] = @ComplaintId
GO
/****** Object:  StoredProcedure [dbo].[Complain_Insert]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Complain_Insert]
	@UserId Int,
	@Text NText,
	@Answer NText,
	@Date NText,

	@ComplaintId Int OUTPUT
AS
	INSERT INTO [Complain](
		[UserId],
		[Text],
		[Answer],
		[Date]
	)
	VALUES(
		@UserId,
		@Text,
		@Answer,
		@Date
	)
	SET @ComplaintId = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Complain_Delete]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Complain_Delete]
	@ComplaintId Int
AS
	DELETE [Complain]
	WHERE [ComplaintId] = @ComplaintId
GO
/****** Object:  StoredProcedure [dbo].[Cart_Update]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cart_Update]
	@Id Int,
	@CartId NText,
	@ProductId VarChar(50),
	@Quantity Int,
	@Cost NText,
	@UserId Int,
	@Date NText
AS
	UPDATE [Cart]
	SET
		[CartId] = @CartId,
		[ProductId] = @ProductId,
		[Quantity] = @Quantity,
		[Cost] = @Cost,
		[UserId] = @UserId,
		[Date] = @Date
    WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[Cart_Select]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cart_Select]
	@Id Int 
AS
	SELECT *
    FROM [Cart]
    WHERE [Id] = @Id
GO
/****** Object:  StoredProcedure [dbo].[Cart_Insert]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cart_Insert]
	@CartId NText,
	@ProductId VarChar(50),
	@Quantity Int,
	@Cost NText,
	@UserId Int,
	@Date NText,

	@Id Int OUTPUT
AS
	INSERT INTO [Cart](
		[CartId],
		[ProductId],
		[Quantity],
		[Cost],
		[UserId],
		[Date]
	)
	VALUES(
		@CartId,
		@ProductId,
		@Quantity,
		@Cost,
		@UserId,
		@Date
	)
	SET @Id = Scope_Identity()
GO
/****** Object:  StoredProcedure [dbo].[Cart_Delete]    Script Date: 08/20/2012 19:01:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cart_Delete]
	@Id Int
AS
	DELETE [Cart]
	WHERE [Id] = @Id
GO
