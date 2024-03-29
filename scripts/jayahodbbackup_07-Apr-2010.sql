IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'jayahoindiadb')
CREATE USER [jayahoindiadb] FOR LOGIN [jayahoindiadb] WITH DEFAULT_SCHEMA=[dbo]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[CustomerId] [uniqueidentifier] NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[EmailId] [nvarchar](50) NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[ReferenceNumber] [nvarchar](50) NULL,
	[BankTransactionNumber] [nvarchar](50) NULL,
	[PurchaseDate] [datetime] NULL,
	[AmountPaid] [numeric](10, 0) NULL,
	[Is_User] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pins](
	[Pin_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Pin] [uniqueidentifier] NOT NULL,
	[Is_Active] [bit] NOT NULL,
	[Activated_For] [nvarchar](50) NULL,
	[Transaction_Id] [uniqueidentifier] NULL,
	[PinCreatedDate] [datetime] NULL,
	[PinActivatedDate] [datetime] NULL,
	[EmployeeId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Pins] PRIMARY KEY CLUSTERED 
(
	[Pin_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settled_Payments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Settled_Payments](
	[UserId] [uniqueidentifier] NULL,
	[Payment] [decimal](18, 2) NULL,
	[dt_entry] [datetime] NULL CONSTRAINT [DF_Settled_Payments_dt_entry]  DEFAULT (getutcdate())
) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [insertHistoryTable]
   ON  [dbo].[Settled_Payments] FOR INSERT,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
--if NOT exists(select SPH.UserId from Settled_Payments_History SPH inner join inserted on inserted.UserId=SPH.UserId)
	insert Settled_Payments_History(UserId, Payment, dt_Entry) (select UserId, Payment, dt_Entry from inserted where Payment>0.0)



    -- Insert statements for trigger here

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispSelectUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jispSelectUser]
(
	@username nvarchar(50),
	@password nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT    UserData.*
FROM         UserData where username=@username and password=@password
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settled_Payments_History]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Settled_Payments_History](
	[UserId] [uniqueidentifier] NULL,
	[Payment] [decimal](18, 2) NULL,
	[dt_Entry] [datetime] NULL CONSTRAINT [DF_Settled_Payments_History_dt_Entry]  DEFAULT (getutcdate())
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserId] [uniqueidentifier] NOT NULL,
	[Is_Left] [bit] NULL,
	[Is_Right] [bit] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Level_Id] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign Key to UserData table' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Users', @level2type=N'COLUMN', @level2name=N'UserId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Payments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User_Payments](
	[UserId] [uniqueidentifier] NULL,
	[Amount] [decimal](18, 2) NULL,
	[LastPaidLevel] [int] NULL
) ON [PRIMARY]
END
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [insertUserHistoryTable]
   ON  [dbo].[User_Payments] FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
--if NOT exists(select SPH.UserId from Settled_Payments_History SPH inner join inserted on inserted.UserId=SPH.UserId)
	insert payment_history(historyId, UserId,Amount,LastPaidLevel,DateCreated) (select newid(),UserId, Amount,LastPaidLevel,getutcdate() from inserted)



    -- Insert statements for trigger here

END

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create TRIGGER [updateUserHistoryTable]
   ON  [dbo].[User_Payments] FOR UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
--if NOT exists(select SPH.UserId from Settled_Payments_History SPH inner join inserted on inserted.UserId=SPH.UserId)
	insert payment_history(historyId, UserId,Amount,LastPaidLevel,DateCreated) (select newid(),UserId, Amount,LastPaidLevel,getutcdate() from deleted)



    -- Insert statements for trigger here

END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payment_History]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Payment_History](
	[HistoryId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[Amount] [decimal](18, 2) NULL,
	[LastPaidLevel] [int] NULL,
	[DateCreated] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tax_Amount]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tax_Amount](
	[TaxAmountId] [bigint] IDENTITY(1,1) NOT NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[TaxName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tax_Amount] PRIMARY KEY CLUSTERED 
(
	[TaxAmountId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserBankDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UserBankDetails] 
(
@UserName  nvarchar(100),
@search nvarchar(50),
@select int
)
AS
BEGIN
if(@select=1)
begin    
		if(@search=''begins'')
		SELECT UserName FROM userdata  WHERE BankAccountNumber=''-1'' and UserName in 
			   (SELECT UserName FROM userdata WHERE UserName like ''''+ @UserName +''%'')
		else if(@search=''contains'')
		SELECT UserName FROM userdata  WHERE BankAccountNumber=''-1'' and UserName in 
			   (SELECT UserName FROM userdata WHERE UserName like ''%''+ @UserName +''%'')
end
else if(@select=2)
     begin
		if(@search=''begins'')
		SELECT UserName FROM userdata  WHERE BankAccountNumber!=''-1'' and UserName in 
			   (SELECT UserName FROM userdata WHERE UserName like ''''+ @UserName +''%'')
		else if(@search=''contains'')
		SELECT UserName FROM userdata  WHERE BankAccountNumber!=''-1'' and UserName in 
			   (SELECT UserName FROM userdata WHERE UserName like ''%''+ @UserName +''%'')
end

end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispSelectUserByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jispSelectUserByUserName]
(
	@username nvarchar(50)
)
AS
	SET NOCOUNT ON;
SELECT     UserId, UserName, Password, Name, Address, City, State, District, Pincode, MobileNo, EmailId, PANNumber, BankAccountNumber, BankName, 
                      BankBranch, BankPayCardNumber, NomineeName, NomineeRelation, CourierNumber, CourierName, DispatchDate, DispatchStatus, SecretQuestion, 
                      SecretAnswer, DateCreated
FROM         UserData
WHERE     (UserName = @username)
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetUserNameById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul
-- Create date: 13/08/2009
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserNameById]
( 
	@userId UNIQUEIDENTIFIER
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT USERNAME FROM USERDATA WHERE USERID=@userId
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserData](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Occupation] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL CONSTRAINT [DF_UserData_Address]  DEFAULT (''),
	[City] [nvarchar](50) NULL CONSTRAINT [DF_UserData_Place]  DEFAULT (''),
	[State] [nvarchar](50) NULL CONSTRAINT [DF_UserData_State]  DEFAULT (''),
	[District] [nvarchar](50) NULL CONSTRAINT [DF_UserData_District]  DEFAULT (''),
	[Pincode] [nvarchar](50) NULL CONSTRAINT [DF_UserData_Pincode]  DEFAULT (''),
	[MobileNo] [nvarchar](20) NULL CONSTRAINT [DF_UserData_MobileNo]  DEFAULT (''),
	[EmailId] [nvarchar](50) NULL CONSTRAINT [DF_UserData_EmailId]  DEFAULT (''),
	[PANNumber] [nvarchar](10) NULL CONSTRAINT [DF_UserData_PANNumber]  DEFAULT (''),
	[BankAccountNumber] [nvarchar](50) NULL CONSTRAINT [DF_UserData_BankAccountNumber]  DEFAULT ('-1'),
	[BankName] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL CONSTRAINT [DF_UserData_BankBranch]  DEFAULT (''),
	[BankPayCardNumber] [nvarchar](50) NULL CONSTRAINT [DF_UserData_BankPayCardNumber]  DEFAULT (''),
	[NomineeName] [nvarchar](50) NULL CONSTRAINT [DF_UserData_NomineeName]  DEFAULT (''),
	[NomineeRelation] [nvarchar](50) NULL CONSTRAINT [DF_UserData_NomineeRelation]  DEFAULT (''),
	[CourierNumber] [nvarchar](50) NULL CONSTRAINT [DF_UserData_CourierNumber]  DEFAULT (''),
	[CourierName] [nvarchar](50) NULL CONSTRAINT [DF_UserData_CourierName]  DEFAULT (''),
	[DispatchDate] [datetime] NULL,
	[DispatchStatus] [nvarchar](50) NULL CONSTRAINT [DF_UserData_DispatchStatus]  DEFAULT ('-1'),
	[SecretQuestion] [nvarchar](100) NULL CONSTRAINT [DF_UserData_SecretQuestion]  DEFAULT (''),
	[SecretAnswer] [nvarchar](100) NULL CONSTRAINT [DF_UserData_SecretAnswer]  DEFAULT (''),
	[DateCreated] [datetime] NULL CONSTRAINT [DF_UserData_DateCreated]  DEFAULT (getutcdate()),
 CONSTRAINT [PK_UserData_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[UserName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertEmployee]
@empId uniqueidentifier,
@empName nvarchar(200),
@empUserName nvarchar(200),
@empPassword nvarchar(200),
@empType char    -- for admin 1 and for employee 2
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 insert into employee values(@empId,@empName,@empPassword,@empType,@empUserName)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[Id] [uniqueidentifier] NULL CONSTRAINT [DF_Employee_Id]  DEFAULT (newid()),
	[Name] [nvarchar](50) NULL,
	[Password] [nchar](10) NULL,
	[Type] [smallint] NULL,
	[UserName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee_1] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSMSBalance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserSMSBalance](
	[UserId] [uniqueidentifier] NOT NULL,
	[SMSBalance] [decimal](3, 2) NOT NULL,
	[DateModified] [datetime] NULL CONSTRAINT [DF_UserSMSBalance_DateModified]  DEFAULT (getutcdate())
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSMSData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserSMSData](
	[UserId] [uniqueidentifier] NULL,
	[SendToMobileNo] [varchar](20) NULL,
	[SendText] [nvarchar](150) NULL,
	[SendStatus] [bit] NULL CONSTRAINT [DF_UserSMSData_SendStatus]  DEFAULT ((1)),
	[DateSent] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Item_Model]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Item_Model](
	[Item] [nchar](10) NOT NULL,
	[Category] [nchar](10) NOT NULL,
	[Price] [nchar](10) NOT NULL,
	[BatchCode] [nchar](10) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tax]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tax](
	[Tax_Id] [int] IDENTITY(1,1) NOT NULL,
	[Tax_Name] [nvarchar](50) NULL,
	[Tax_Value] [float] NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[Tax_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[temp](
	[Transaction_Id] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_temp_Transaction_Id]  DEFAULT (newid()),
	[dsdfds] [nchar](10) NULL,
 CONSTRAINT [PK_temp] PRIMARY KEY NONCLUSTERED 
(
	[Transaction_Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewSelectCommand]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[NewSelectCommand]
AS
	SET NOCOUNT ON;
SELECT     CustomerId, CustomerName, PhoneNumber, Address, EmailId, PaymentMode, ReferenceNumber, BankTransactionNumber, PurchaseDate, 
                      AmountPaid
FROM         Customer
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewInsertCommand]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[NewInsertCommand]
(
	@CustomerId uniqueidentifier,
	@CustomerName nvarchar(50),
	@PhoneNumber nvarchar(50),
	@Address nvarchar(200),
	@EmailId nvarchar(50),
	@PaymentMode nvarchar(50),
	@ReferenceNumber nvarchar(50),
	@BankTransactionNumber nvarchar(50),
	@PurchaseDate datetime,
	@AmountPaid numeric(10, 0)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Customer] ([CustomerId], [CustomerName], [PhoneNumber], [Address], [EmailId], [PaymentMode], [ReferenceNumber], [BankTransactionNumber], [PurchaseDate], [AmountPaid]) VALUES (@CustomerId, @CustomerName, @PhoneNumber, @Address, @EmailId, @PaymentMode, @ReferenceNumber, @BankTransactionNumber, @PurchaseDate, @AmountPaid)
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PinSales]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[PinSales]( 
@pincount int,@UserName nvarchar(50),
@customername nvarchar(50),@emailid nvarchar(50),
@phoneno nvarchar(50),@address nvarchar(200),
@paymentmode nvarchar(50),@referenceno nvarchar(50),
@bnkTransno nvarchar(50),@amount numeric,
@empId uniqueidentifier)
as
BEGIN
	
	declare @AvlPins as bigint;
    declare @pinid as uniqueidentifier
   set @pinid = newid()

    declare @transId as uniqueidentifier
    set @transId = newid()

    select @AvlPins=count(*) from dbo.pins where activated_for is null;
if @AvlPins>=@pincount 
begin

    if (@UserName<>'''')
    begin
    insert into dbo.customer(customerid,customername,PaymentMode,referencenumber,
BankTransactionNumber,PurchaseDate,AmountPaid,Is_User)
values(@pinid,@UserName,@paymentmode,@referenceno,@bnkTransno,getdate(),@amount,1);


update dbo.pins set is_active=1,activated_for=@pinid,transaction_id=@transId,PinActivatedDate=getutcdate(),EmployeeId=@empId
where pin_id in (select top (@pincount)  pin_id from dbo.pins where activated_for is null);

    end
    else
    begin

insert into dbo.customer(customerid,customername,PaymentMode,referencenumber,
BankTransactionNumber,PurchaseDate,AmountPaid,Is_User,address,phonenumber,emailid)
values(@pinid,@customername,@paymentmode,@referenceno,@bnkTransno,getdate(),@amount,0,@address,
@phoneno,@emailid);


update dbo.pins set is_active=1,activated_for=@pinid,transaction_id=@transId,PinActivatedDate=getutcdate(),EmployeeId=@empId
where pin_id in (select top (@pincount)  pin_id from dbo.pins where activated_for is null);

	end
select pin as ActivatedPins from pins where activated_for=@pinid and transaction_id=@transId

 
end    
else
begin
select ''00000000-0000-0000-0000-000000000000'' as ActivatedPins
end

END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetActivationDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetActivationDetails]
	@startDate datetime,
    @endDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    select * from pins,customer where PinActivatedDate between @startDate and @endDate and pins.activated_for = customer.customerid
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clearDB]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[clearDB]
	AS
BEGIN
delete from customer
delete from users
delete from userdata
delete from user_payments
delete from pins
delete from payment_history
delete from employee
delete from Settled_Payments
delete from UserSMSData
delete from UserSMSBalance
delete from Settled_Payments_History
delete from Settled_Payments
delete from Employee
delete from Customer
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispGetActivationDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispGetActivationDetails] -- ''2009-12-06'',''2009-12-07''
	-- Add the parameters for the stored procedure here
@fromDate datetime,
@toDate datetime	
AS
BEGIN
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from employee e,pins p
     where p.employeeid = e.id and 
	(p.PinActivatedDate >= @fromDate and p.PinActivatedDate <= @toDate)

END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertPins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		Gokul
-- Create date: 15/07/09
-- Description:	INSERTING PINS
-- =============================================
CREATE PROCEDURE [dbo].[InsertPins] 
	@numberOfPins int 

AS
BEGIN
	
    while (@numberOfPins!=0)
begin
  insert into pins values(newid(),0,null,null,getutcdate(),null,null)
  set @numberOfPins=@numberOfPins - 1
end



END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul
-- Create date: 15/07/09
-- Description:	INSERTION OF USER
-- =============================================
CREATE PROCEDURE [dbo].[InsertUser] 

( 
	-- Add the parameters for the stored procedure here
@userId uniqueidentifier,
@userName nvarchar(50),
@ParentName nvarchar(50),
@joinedAt nvarchar(10),

@Password nvarchar(50),
@Name nvarchar(100),
@Address nvarchar(200),
@City nvarchar(50),
@State nvarchar(50),
@District nvarchar(50),
@Pincode nvarchar(50),
@MobileNo nvarchar(20),
@EmailId nvarchar(50),

@NomineeName nvarchar(50),
@NomineeRelation nvarchar(50),

@SecretQuestion nvarchar(100),
@SecretAnswer nvarchar(100)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
   -- user status - not assigned -1  pending -2  delivered from office but pending -3 completed -4
   -- Bank details   Account Not Assigned -1 Assigned -2


	SET NOCOUNT ON;
	Declare @errorMessage nvarchar(200)
    -- Insert statements for procedure here
	if exists(select Pin_Id from pins where Pin=@userId and Is_Active=1)
	begin
		if not exists(select username from userdata where username=@userName)
		begin
			if not exists(select username from userdata where userid=@userid)
			begin
				if exists(select userid from userdata where username=@parentName)
				begin
					if(@joinedAt=''Left'')
					begin
						if not exists(select userid from users where parentid in 
						(select userid from userdata where username=@parentName)
						and Is_Left=1)
						begin
							INSERT INTO [UserData] 
							([UserId],[UserName], [Password], 
							[Name], [Address], [City], 
							[State], [District], [Pincode], 
							[MobileNo], [EmailId], [NomineeName], 
							[NomineeRelation],[SecretQuestion], [SecretAnswer]) 
							VALUES 
							(@userId, @UserName, @Password, 
							@Name, @Address, @City, 
							@State, @District, @Pincode, 
							@MobileNo, @EmailId, @NomineeName, 
							@NomineeRelation, @SecretQuestion, @SecretAnswer
							)
							insert into users(userid,is_left,is_right,parentid,level_id) 
										select @userid,1,0,userdata.userid,users.level_id+1 from userdata inner join users on  userdata.username=@parentname and userdata.userid=users.userid
							insert into settled_payments(userid,payment) values(@userid,0)
							set @errorMessage=''Registered Successfully. Please Login from Home Page''
						end
						Else
						Begin
							set @errorMessage=@parentName+'' Already has Left Node''
						End
					end
					Else
					begin
						if not exists(select userid from users where parentid in 
						(select userid from userdata where username=@parentName)
						and Is_Right=1)
						begin
							INSERT INTO [UserData] 
							([UserId],[UserName], [Password], 
							[Name], [Address], [City], 
							[State], [District], [Pincode], 
							[MobileNo], [EmailId], [NomineeName], 
							[NomineeRelation],[SecretQuestion], [SecretAnswer]) 
							VALUES 
							(@userId, @UserName, @Password, 
							@Name, @Address, @City, 
							@State, @District, @Pincode, 
							@MobileNo, @EmailId, @NomineeName, 
							@NomineeRelation, @SecretQuestion, @SecretAnswer
							)
							insert into users(userid,is_left,is_right,parentid,level_id) 
										select @userid,0,1,userdata.userid,users.level_id+1 from userdata inner join users on  userdata.username=@parentname and userdata.userid=users.userid

							insert into settled_payments(userid,payment) values(@userid,0)
							set @errorMessage=''Registered Successfully. Please Login from Home Page''
						end
						Else
						Begin
							set @errorMessage=@parentName+'' Already has Right Node''
						End
					end	
				End
				Else
				Begin
				set @errorMessage=''Introducer User Name does not exist.''
				End
			end
			Else
			Begin
				set @errorMessage=''Pin is Already Activated''
			End
		end
		Else
		Begin
			set @errorMessage=''User Name already exists''
		End
	end
	Else
	Begin
		set @errorMessage=''Invalid Pin''
	End
select @errorMessage
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateSettledPayments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul
-- Create date: 21/07/09
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateSettledPayments] 
(
@USERID UNIQUEIDENTIFIER,
@PAYMENT DECIMAL(18,2)
)
AS
BEGIN TRANSACTION
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
DECLARE @RESULT VARCHAR(50)
	UPDATE SETTLED_PAYMENTS SET PAYMENT=PAYMENT+@PAYMENT WHERE USERID=@USERID
IF(@@ERROR<>0)
BEGIN
ROLLBACK TRANSACTION
SET @RESULT=''Updation Failed''
END
ELSE
SET @RESULT=''Payments Updated Successfully''
SELECT @RESULT

COMMIT TRANSACTION
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetUserPayments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul
-- Create date: 21/07/09
-- Description:	THIS IS FOR DISPLAYING AMOUNT TO BE PAID TO THE USER
-- =============================================
CREATE PROCEDURE [dbo].[GetUserPayments] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
DECLARE @GETAMOUNTS TABLE(USERID UNIQUEIDENTIFIER,USERNAME NVARCHAR(50),BANKACCOUNTNUMBER NVARCHAR(50),PAYCARDNO NVARCHAR(50),AMOUNTTOBEPAID DECIMAL(18,2))
DECLARE @USERS CURSOR
DECLARE @USERID UNIQUEIDENTIFIER
SET @USERS = CURSOR FOR
	SELECT USERID FROM USERS
OPEN @USERS
FETCH NEXT
	FROM @USERS INTO @USERID
WHILE @@FETCH_STATUS = 0
BEGIN
DECLARE @AMOUNT DECIMAL(18,2)
SET @AMOUNT=0
SELECT @AMOUNT=(UP.AMOUNT-SP.PAYMENT) FROM USER_PAYMENTS AS UP INNER JOIN SETTLED_PAYMENTS AS SP ON UP.USERID =SP.USERID WHERE UP.USERID=@USERID
INSERT INTO @GETAMOUNTS (USERID,USERNAME,BANKACCOUNTNUMBER,PAYCARDNO,AMOUNTTOBEPAID)
SELECT USERID,USERNAME,BANKACCOUNTNUMBER,BANKPAYCARDNUMBER,@AMOUNT FROM USERDATA WHERE USERID=@USERID

	FETCH NEXT
	FROM @USERS INTO @USERID
END
CLOSE @USERS
DEALLOCATE @USERS

SELECT * FROM @GETAMOUNTS	
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstallAdmin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InstallAdmin] --''b00686c6-bd85-4824-8a94-e7f509db086b''
	@adminId uniqueidentifier
    
AS
BEGIN
	


insert into users values(@adminId,null,null,null,0)
insert into userdata (userid,username,password,Name)  values (@adminId,''admin'',''admin'',''admin'')
insert into settled_payments values (@adminId,0,getutcdate())

END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispGetPreviousPaymentsByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispGetPreviousPaymentsByUserId]
	-- Add the parameters for the stored procedure here
	@userid uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     Payment, dt_Entry AS ''Date of Entry''
FROM         Settled_Payments_History
WHERE     (UserId = @userId)
END


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OriginalMLM]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul
-- Create date: 01/07/09
-- Description:	CALCULATING THE TOTAL AMOUNT FOR THE EXISTING USERS
-- =============================================
CREATE PROCEDURE [dbo].[OriginalMLM]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
delete from User_Payments  
declare @parentid uniqueidentifier
declare @userid uniqueidentifier
declare @levelid int
declare @levels cursor
declare @parents cursor
declare @tempuserid uniqueidentifier
declare @temp varchar(10)
declare @totalAmount int
declare @tempguid uniqueidentifier
declare @result varchar(100)
set @tempguid=newid()
set @totalAmount = 2000
SET @levels = CURSOR FOR
		select level_id from users group by(level_id)
		OPEN @levels
		FETCH NEXT
			FROM @levels INTO @levelid
		WHILE @@FETCH_STATUS = 0
		BEGIN
				set @parents= cursor for
				select parentid from users where level_id=@levelid group by parentid having count(parentid)=2 
				open @parents
				FETCH NEXT
				FROM @parents INTO @parentid
				WHILE @@FETCH_STATUS = 0
				BEGIN
					set @userid=@tempguid
					select @userid=userid from User_Payments   where userid=@parentid
					if (@userid = @tempguid)
					BEGIN
						SET @userid=@parentid
						set @totalAmount=1000
						declare @taxvalue int
						select @taxvalue=sum(tax_value) from tax
						set @totalAmount =@totalamount-(@taxvalue*@totalAmount)/100
						INSERT INTO User_Payments  (LastPaidLevel,Amount,UserId) VALUES(@levelid,@totalAmount,@userid)
						while (@totalAmount>0)
						begin
							select @userid=parentid from users where userid=@userid
							set @temp=ISNULL(cast(@userid as varchar(100)),''empty'')
							IF(@temp <> ''empty'')
							BEGIN
								set @tempuserid=@tempguid
								select @tempuserid=userid from User_Payments   where userid=@userid and LastPaidLevel=@levelid
								if(@tempuserid=@tempguid)
								begin
									update User_Payments   set amount=amount+@totalAmount,lastpaidlevel=@levelid where userid=@userid
									set @totalAmount = 0
								end
							END
							ELSE
							BEGIN
								set @totalAmount = 0
							END
						end
					END
				FETCH NEXT
					FROM @parents INTO @parentid
				END
				CLOSE @parents
				DEALLOCATE @parents	
		FETCH NEXT
		FROM @levels INTO @levelid
		END
		CLOSE @levels
		DEALLOCATE @levels
IF(@@ERROR<>0)
SET @RESULT= ''Payments Generation Failed''
ELSE
SET @RESULT= ''Payments Generated Successfully''
SELECT @RESULT
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispGetUserByLevel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispGetUserByLevel]
	-- Add the parameters for the stored procedure here
@level int
	
AS
BEGIN
	select u.userid,ud.username from users u,userdata  ud where u.userId=ud.userId and u.level_id=@level
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetUsersByLevelIdParentId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul select * from users,userdata
-- Create date: 14/08/2009
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUsersByLevelIdParentId]
(
@parentId uniqueidentifier
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
--declare @parentid uniqueidentifier
--set @parentid=''82403D57-DBC3-4D2F-B990-383A59582174''
--declare @levelid int
--set @levelid=1
	
select userid,username from userdata where userid in (select userid from users where parentid=@parentId)

END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRightChildByParentId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul
-- Create date: 12/08/2009
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[GetRightChildByParentId]
(
	-- Add the parameters for the stored procedure here
	@parentId uniqueidentifier
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		
	SELECT USERDATA.USERID,USERDATA.USERNAME FROM USERDATA 
	INNER JOIN USERS ON USERS.USERID=USERDATA.USERID AND USERS.PARENTID=@parentId AND USERS.IS_RIGHT=1

    -- Insert statements for procedure here
	
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispSelectUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jispSelectUsers]
AS
	SET NOCOUNT ON;
SELECT     UserData.UserId, UserData.UserName, UserData.Password, UserData.Name, UserData.Address, UserData.City, UserData.State, UserData.District, 
                      UserData.Pincode, UserData.MobileNo, UserData.EmailId, UserData.PANNumber, UserData.BankAccountNumber, UserData.BankName, 
                      UserData.BankBranch, UserData.BankPayCardNumber, UserData.NomineeName, UserData.NomineeRelation, UserData.CourierNumber, 
                      UserData.CourierName, UserData.DispatchDate, UserData.DispatchStatus, UserData.SecretQuestion, UserData.SecretAnswer, UserData.DateCreated, 
                    Users.Is_Left, Users.Is_Right, Users.ParentId, Users.Level_Id
FROM         UserData INNER JOIN
                      Users ON UserData.UserId = Users.UserId
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetLeftChildByParentId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Gokul
-- Create date: 12/08/2009
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[GetLeftChildByParentId]
(
	-- Add the parameters for the stored procedure here
	@parentId uniqueidentifier
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		
	SELECT USERDATA.USERID,USERDATA.USERNAME FROM USERDATA 
	INNER JOIN USERS ON USERS.USERID=USERDATA.USERID AND USERS.PARENTID=@parentId AND USERS.IS_LEFT=1

    -- Insert statements for procedure here
	
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CountNodes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[CountNodes]
(
	@NodeId uniqueidentifier
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
DECLARE @count int
 if @nodeid=''00000000-0000-0000-0000-000000000000''
begin
return 0;
end
else 
begin
set @count = 1;
declare @leftuserid uniqueidentifier,@rightuserid uniqueidentifier

	-- Add the T-SQL statements to compute the return value here

if exists ( select  userid from users where parentid=@nodeid and is_left=1)
select  @leftuserid = userid from users where parentid=@nodeid and is_left=1
else
set @leftuserid = ''00000000-0000-0000-0000-000000000000''
--print @leftuserid
if exists ( select  userid from users where parentid=@nodeid and is_right=1)
select  @rightuserid =	 userid from users where parentid=@nodeid and is_right=1 
else
set @rightuserid=''00000000-0000-0000-0000-000000000000''
--select userid from users where parentid=''D12B6C25-A461-4F6F-B73A-5A47F29042FC''
--select newid()

set @count = @count + dbo.CountNodes(@leftuserid);

set @count = @count + dbo.CountNodes(@rightuserid);
	-- Return the result of the function
	RETURN @count
end
return 0
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispUserGetPaymentReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispUserGetPaymentReport] 
--''B5D56049-100E-4553-BF6C-98AA75008A9E''
	-- Add the parameters for the stored procedure here
	@userid uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Amount,LastPaidLevel,DateCreated  FROM Payment_history WHERE userid=@userid
END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UserDetails] 
(
@UserName  nvarchar(100)
)
AS
BEGIN
SELECT * FROM userdata  where UserName=@UserName 
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispUserForgotPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispUserForgotPassword]
(	
	@userId uniqueidentifier,
	@emailId varchar(50)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP 1 userId FROM userdata WHERE UserId=@userId AND EmailId=@emailId
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserCourierDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[UserCourierDetails] --''Not Assigned'',''a'',''contains''
(
@DispatchStatus nvarchar(100), 
--Not Assigned -1
--Pending 0
--Delivered From Office But Pending 1
--Completed 2
@UserName  nvarchar(100),
@search nvarchar(50)
)
AS
BEGIN
if(@search=''begins'')
      SELECT UserName FROM userdata  WHERE DispatchStatus=@DispatchStatus and UserName in
             (SELECT UserName FROM userdata WHERE UserName like ''''+ @UserName +''%'' )
else if(@search=''contains'')
      SELECT UserName FROM userdata  WHERE DispatchStatus=@DispatchStatus and UserName in 
             (SELECT UserName FROM userdata WHERE UserName like ''%''+ @UserName +''%'')
END




' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispInsertUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jispInsertUser]
(
	
	@UserName nvarchar(50),
	@Password nvarchar(50),
	@Name nvarchar(100),
	@occupation nvarchar(100),
	@Address nvarchar(200),
	@City nvarchar(50),
	@State nvarchar(50),
	@District nvarchar(50),
	@Pincode nvarchar(50),
	@MobileNo nvarchar(20),
	@EmailId nvarchar(50),
	
	@NomineeName nvarchar(50),
	@NomineeRelation nvarchar(50),
	
	@SecretQuestion nvarchar(100),
	@SecretAnswer nvarchar(100)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [UserData] 
([UserName], [Password], 
[Name],[Occupation], [Address], [City], 
[State], [District], [Pincode], 
[MobileNo], [EmailId], [NomineeName], 
[NomineeRelation],[SecretQuestion], [SecretAnswer]) 
VALUES 
( @UserName, @Password, 
@Name,@Occupation, @Address, @City, 
@State, @District, @Pincode, 
@MobileNo, @EmailId, @NomineeName, 
@NomineeRelation, @SecretQuestion, @SecretAnswer
);
	
SELECT  UserName, Password, Name, Occupation, Address, City, State, District, Pincode, MobileNo, EmailId, PANNumber, BankAccountNumber, BankName, BankBranch, BankPayCardNumber, NomineeName, NomineeRelation, CourierNumber, CourierName, DispatchDate, DispatchStatus, SecretQuestion, SecretAnswer, DateCreated FROM UserData WHERE  (UserName = @UserName)
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spSelectUserDataEditProfile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spSelectUserDataEditProfile]
(
	@occupation nvarchar(100),
	@address nvarchar(200),
	@city nvarchar(50),
	@state nvarchar(50),
	@district nvarchar(50),
	@pincode nvarchar(50),
	@emailid nvarchar(50),
	@mobileno nvarchar(20),
	@userid uniqueidentifier
)
AS
	SET NOCOUNT ON;
UPDATE    UserData
SET              Occupation = @occupation, Address = @address, City = @city, State = @state, District = @district, Pincode = @pincode, EmailId = @emailid,MobileNo=@mobileno
WHERE     (UserId = @userid)
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispUpdateUserPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jispUpdateUserPassword]
(
	@password nvarchar(50),
	@userid uniqueidentifier
)
AS
	SET NOCOUNT OFF;
UPDATE    UserData
SET              Password = @password
WHERE     (UserId = @userid)
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateUserDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[UpdateUserDetails]-- ''2F6E585D-9C34-421C-8FE4-70C1BF86613B'',''a2'',''DFDF'',''RTR'',''TYTU'',''TYYT'',''ttt'',''ETBH'',''GHDG'',''VBXV'',''BCBC'',''1/2/09'',''FHJF''
(
@UserName nvarchar(100),
@Name  nvarchar(100),
@Address  nvarchar(100),
@State  nvarchar(100),
@Pincode  nvarchar(100),
@PANNumber  nvarchar(100),
@BankPayCardNumber  nvarchar(100),
@BankAccountNumber   nvarchar(100),
@CourierName   nvarchar(100),
@CourierNumber  nvarchar(100),
@DispatchDate   datetime,
@DispatchStatus nvarchar(100)
)
AS
BEGIN
	UPDATE userdata
    SET Name=@Name ,
		Address=@Address ,		
		State=@State ,
		Pincode=@Pincode,
		PANNumber=@PANNumber ,
		BankPayCardNumber=@BankPayCardNumber,
		BankAccountNumber=@BankAccountNumber,
		CourierName=@CourierName ,
		CourierNumber=@CourierNumber ,
		DispatchDate=@DispatchDate ,
		DispatchStatus=@DispatchStatus
    WHERE UserName=@UserName
END

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShowEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ShowEmployee]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  select * from employee
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispInsertEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispInsertEmployee]
	@id uniqueidentifier,
@name nvarchar(50),
@password nchar(10),
@type int,
@username nvarchar(50)
AS
BEGIN
	insert into employee values (@id,@name,@password,@type,@username)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispUserSMSUpdation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispUserSMSUpdation]
	-- Add the parameters for the stored procedure here
	@userId uniqueidentifier,
	@sentToMobNo varchar(20),
	@sentText varchar(150)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT * FROM UserSMSBalance WHERE userid = @userid) 
	BEGIN
		UPDATE UserSMSBalance 
		SET SMSBalance = SMSBalance + .10, DateModified = (getutcdate())
		WHERE (UserId = @userid) 
	END 
	ELSE 
	BEGIN
		INSERT INTO usersmsbalance(userid, smsbalance) VALUES(@userid, 0.10) 
	END

	INSERT INTO [UserSMSData]
           ([UserId]
           ,[SendToMobileNo]
           ,[SendText]
           ,[DateSent])
			VALUES(@userId,@sentToMobNo,@sentText,getutcdate())


END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsertTaxes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTaxes]
	@taxname nvarchar(50),
@taxvalue float
AS
BEGIN
	insert into tax values(@taxname,@taxvalue)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jispFindNodeCountById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[jispFindNodeCountById]
--''fd805765-c685-42fe-bed2-5b6340a9c08f'',''ledsfft''
	-- Add the parameters for the stored procedure here
(
	@nodeId uniqueidentifier,	
	@side varchar(10)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
DECLARE @childNodeId uniqueidentifier
SET @childNodeId=''00000000-0000-0000-0000-000000000000''
IF @side=''left''
	BEGIN
		SET @childNodeId=(SELECT userId FROM users WHERE parentid=@nodeId AND is_Left=1)		
	END
ELSE
	IF EXISTS(SELECT userId FROM users WHERE parentid=@nodeId AND is_Right=1)
		SET @childNodeId=(SELECT userId FROM users WHERE parentid=@nodeId AND is_Right=1)		

--DECLARE @childNodeId uniqueidentifier
SELECT dbo.CountNodes(@childNodeId) AS ''NodeCount''

    -- Insert statements for procedure here
	
END
' 
END
