USE [apartment_system]
GO
/****** Object:  Table [dbo].[Apartments]    Script Date: 10/22/2020 2:53:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartments](
	[Apartment_ID] [int] IDENTITY(1,1) NOT NULL,
	[Apartment_Name] [nvarchar](75) NULL,
	[UserName] [nvarchar](75) NULL,
	[Password] [nvarchar](25) NULL,
	[Address] [text] NULL,
	[City] [nvarchar](75) NULL,
	[SaveDate] [datetime] NULL,
	[SaveUser] [int] NULL,
	[EditDate] [datetime] NULL,
	[EditUser] [int] NULL,
 CONSTRAINT [PK_Apartment] PRIMARY KEY CLUSTERED 
(
	[Apartment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leases]    Script Date: 10/22/2020 2:53:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leases](
	[Lease_ID] [int] IDENTITY(1,1) NOT NULL,
	[Apartment_ID] [int] NULL,
	[Unit_ID] [int] NULL,
	[FirstName] [nvarchar](75) NULL,
	[LastName] [nvarchar](75) NULL,
	[Phone] [nvarchar](15) NULL,
	[Active] [bit] NULL,
	[StartDate] [datetime] NULL,
	[FinishDate] [datetime] NULL,
	[Rent] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Leases] PRIMARY KEY CLUSTERED 
(
	[Lease_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 10/22/2020 2:53:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[Unit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Apartment_ID] [int] NULL,
	[Number] [int] NULL,
	[Floors] [int] NULL,
	[Bedrooms] [int] NULL,
	[Bathrooms] [int] NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Apartments] ON 

INSERT [dbo].[Apartments] ([Apartment_ID], [Apartment_Name], [UserName], [Password], [Address], [City], [SaveDate], [SaveUser], [EditDate], [EditUser]) VALUES (1, N'deneme apartmanı', N'furkan', N'123123', N'bağcılar', N'istanbul', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Apartments] OFF
SET IDENTITY_INSERT [dbo].[Leases] ON 

INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (1, 1, 1, N'furkan', N'zadegil', N'123123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1833.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (2, 1, 2, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1833.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (3, 1, 3, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1833.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (4, 1, 4, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1833.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (5, 1, 5, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1833.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (6, 1, 6, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1833.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (7, 1, 7, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (8, 1, 8, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (9, 1, 9, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (10, 1, 10, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (11, 1, 11, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[Leases] ([Lease_ID], [Apartment_ID], [Unit_ID], [FirstName], [LastName], [Phone], [Active], [StartDate], [FinishDate], [Rent]) VALUES (12, 1, 12, N'deneme', N'soyad', N'123', 1, CAST(N'2020-10-21T00:00:00.000' AS DateTime), NULL, CAST(1500.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Leases] OFF
SET IDENTITY_INSERT [dbo].[Units] ON 

INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (1, 1, 1, 1, 1, 2)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (2, 1, 2, 1, 1, 2)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (3, 1, 3, 1, 1, 2)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (4, 1, 4, 1, 1, 0)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (5, 1, 5, 1, 1, 0)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (6, 1, 6, 1, 1, 0)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (7, 1, 7, 2, 1, 2)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (8, 1, 8, 2, 1, 2)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (9, 1, 9, 2, 1, 2)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (10, 1, 10, 2, 1, 0)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (11, 1, 11, 2, 1, 0)
INSERT [dbo].[Units] ([Unit_Id], [Apartment_ID], [Number], [Floors], [Bedrooms], [Bathrooms]) VALUES (12, 1, 12, 2, 1, 0)
SET IDENTITY_INSERT [dbo].[Units] OFF
ALTER TABLE [dbo].[Leases]  WITH CHECK ADD  CONSTRAINT [FK_Leases_Apartments] FOREIGN KEY([Apartment_ID])
REFERENCES [dbo].[Apartments] ([Apartment_ID])
GO
ALTER TABLE [dbo].[Leases] CHECK CONSTRAINT [FK_Leases_Apartments]
GO
ALTER TABLE [dbo].[Leases]  WITH CHECK ADD  CONSTRAINT [FK_Leases_Units] FOREIGN KEY([Unit_ID])
REFERENCES [dbo].[Units] ([Unit_Id])
GO
ALTER TABLE [dbo].[Leases] CHECK CONSTRAINT [FK_Leases_Units]
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [FK_Units_Apartments] FOREIGN KEY([Apartment_ID])
REFERENCES [dbo].[Apartments] ([Apartment_ID])
GO
ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [FK_Units_Apartments]
GO
/****** Object:  StoredProcedure [dbo].[sp_DaireninKirasiniArtir]    Script Date: 10/22/2020 2:53:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_DaireninKirasiniArtir]
@daireNo int,
@fiyat decimal
as
begin
update L
set L.Rent = @fiyat
from dbo.Units as U inner join
dbo.Leases as L on L.Unit_ID = u.Unit_Id
where U.Number = @daireNo;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_KatinKirasiniArtir]    Script Date: 10/22/2020 2:53:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_KatinKirasiniArtir]
@kat int,
@fiyat decimal
as
begin
update L
set L.Rent = @fiyat
from dbo.Units as U inner join
dbo.Leases as L on L.Unit_ID = u.Unit_Id
where U.Floors = @kat;
end
GO
