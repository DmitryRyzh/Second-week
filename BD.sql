USE [user11]
GO
/****** Object:  Table [dbo].[Breaks]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Breaks](
	[id_break] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Breaks] PRIMARY KEY CLUSTERED 
(
	[id_break] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[id_equipment] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[id_equipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id_order] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[id_client] [int] NULL,
	[id_status] [int] NULL,
	[description] [text] NULL,
	[id_break] [int] NULL,
	[id_task] [int] NULL,
	[id_equipment] [int] NULL,
	[date_start] [datetime] NULL,
	[date_end] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Progress]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Progress](
	[id_progress] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[result] [varchar](50) NULL,
 CONSTRAINT [PK_Progress] PRIMARY KEY CLUSTERED 
(
	[id_progress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id_status] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[id_task] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [text] NULL,
	[id_user] [int] NULL,
	[id_progress] [int] NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[id_task] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24.05.2024 7:57:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[surname] [varchar](50) NULL,
	[login] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[id_role] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Breaks] ON 

INSERT [dbo].[Breaks] ([id_break], [name]) VALUES (1, N'Системная неисправность')
INSERT [dbo].[Breaks] ([id_break], [name]) VALUES (2, N'Неисправность комплектующей')
INSERT [dbo].[Breaks] ([id_break], [name]) VALUES (3, N'Неисправность периферийного устройства')
SET IDENTITY_INSERT [dbo].[Breaks] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (1, N'Milo', N'Ward', N'james.torres@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (2, N'Felicity', N'Howard', N'matthew.wong@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (3, N'Parker', N'Mitchell', N'isabella.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (4, N'David', N'Lewis', N'sophia.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (5, N'Fiona', N'Turner', N'jacob.miller@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (6, N'Gina', N'Sanchez', N'amelia.perez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (7, N'Tom', N'Powell', N'amelia.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (8, N'Aaron', N'Turner', N'isabella.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (9, N'Parker', N'Harris', N'isabella.gomez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (10, N'Yasmine', N'Wilson', N'emily.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (11, N'Gabe', N'Sanders', N'jacob.miller@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (12, N'Nathan', N'Rodriguez', N'ethan.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (13, N'Seth', N'Bailey', N'alexander.ramirez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (14, N'Xavier', N'Turner', N'amelia.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (15, N'Riley', N'Cook', N'joseph.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (16, N'Finn', N'Edwards', N'ryan.wu@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (17, N'Riley', N'Harris', N'william.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (18, N'Parker', N'Perez', N'mia.torres@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (19, N'Jack', N'Robinson', N'joseph.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (20, N'Xena', N'Hernandez', N'james.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (21, N'Yuri', N'Rodriguez', N'james.torres@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (22, N'Parker', N'Wilson', N'ava.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (23, N'Nina', N'Parker', N'sophia.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (24, N'Kyle', N'Bryant', N'ava.martinez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (25, N'Fiona', N'Ross', N'ava.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (26, N'Will', N'Lee', N'isabella.perez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (27, N'Bob', N'Baker', N'emily.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (28, N'Emma', N'Collins', N'lisa.brown@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (29, N'Isaac', N'Wright', N'ryan.wu@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (30, N'Tom', N'Collins', N'mia.torres@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (31, N'Quincy', N'Coleman', N'madison.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (32, N'Peter', N'Jenkins', N'david.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (33, N'Nina', N'Ramirez', N'madison.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (34, N'Aaron', N'Cooper', N'daniel.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (35, N'Sara', N'Roberts', N'daniel.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (36, N'Aaron', N'Barnes', N'ryan.wu@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (37, N'David', N'Ross', N'david.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (38, N'Yuri', N'Bell', N'ava.martinez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (39, N'Chris', N'Brooks', N'william.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (40, N'Charlie', N'Lewis', N'amelia.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (41, N'Gabe', N'Wilson', N'emily.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (42, N'Yasmine', N'Ross', N'isabella.perez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (43, N'Bella', N'Lee', N'matthew.wong@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (44, N'Xander', N'Evans', N'sophia.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (45, N'Dylan', N'Alexander', N'daniel.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (46, N'Aaron', N'Reed', N'mia.torres@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (47, N'Lily', N'Brown', N'daniel.gomez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (48, N'Sam', N'Davis', N'emma.martinez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (49, N'Bella', N'Russell', N'noah.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (50, N'Tom', N'Miller', N'daniel.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (51, N'Isaac', N'Patterson', N'michael.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (52, N'Ben', N'Coleman', N'david.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (53, N'Kelly', N'Mitchell', N'alexander.lopez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (54, N'Paige', N'James', N'joseph.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (55, N'Oscar', N'Edwards', N'olivia.perez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (56, N'Yasmine', N'Diaz', N'mia.lopez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (57, N'Milo', N'Taylor', N'sophia.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (58, N'Violet', N'Bailey', N'isabella.gomez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (59, N'Mia', N'Russell', N'james.morales@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (60, N'Dean', N'Mitchell', N'isabella.ramirez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (61, N'Hazel', N'Butler', N'benjamin.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (62, N'Zack', N'Ramirez', N'olivia.perez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (63, N'Xander', N'Bailey', N'david.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (64, N'Lily', N'Ramirez', N'amelia.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (65, N'Victor', N'Perry', N'alexander.ramirez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (66, N'David', N'Henderson', N'david.kim@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (67, N'Chloe', N'Johnson', N'michael.gonzalez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (68, N'Gina', N'Rodriguez', N'michael.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (69, N'Nathan', N'Morris', N'michael.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (70, N'Brandon', N'Ward', N'daniel.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (71, N'David', N'Brown', N'jessica.li@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (72, N'Hannah', N'Coleman', N'emily.wilson@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (73, N'Sam', N'Wright', N'isabella.ramirez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (74, N'Owen', N'Jenkins', N'isabella.gomez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (75, N'Mia', N'Moore', N'emily.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (76, N'Gina', N'Peterson', N'emily.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (77, N'Quentin', N'Price', N'david.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (78, N'Isaac', N'Cox', N'emily.wilson@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (79, N'Max', N'Brown', N'sarah.jones@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (80, N'Liam', N'Hill', N'sophia.lopez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (81, N'Vincent', N'Brooks', N'joseph.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (82, N'Riley', N'Taylor', N'emily.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (83, N'Sam', N'Bennett', N'mia.lopez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (84, N'Xavier', N'Bailey', N'michael.nguyen@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (85, N'Felicity', N'Morris', N'kevin.nguyen@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (86, N'Ella', N'Flores', N'ava.martinez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (87, N'Olivia', N'Taylor', N'daniel.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (88, N'Chris', N'Miller', N'benjamin.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (89, N'Gabe', N'Roberts', N'olivia.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (90, N'Olivia', N'White', N'emily.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (91, N'Gina', N'Sanders', N'madison.morales@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (92, N'Yasmine', N'Gonzalez', N'sophia.garcia@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (93, N'Chloe', N'Reed', N'william.rivera@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (94, N'Ursula', N'Anderson', N'emily.rodriguez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (95, N'Ivy', N'Butler', N'noah.hernandez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (96, N'Jade', N'Watson', N'sophia.lopez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (97, N'Rose', N'Morris', N'jessica.li@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (98, N'Ursula', N'King', N'benjamin.ramirez@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (99, N'Sara', N'Perry', N'madison.rivera@example.com')
GO
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (100, N'Eve', N'Griffin', N'kevin.nguyen@example.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (101, N'Дима', N'Монтов', NULL)
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (102, N'1', N'1', NULL)
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (103, N'Вася', N'север', N'123@test.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (104, N'Дима', N'рыж', N'123@test.com')
INSERT [dbo].[Clients] ([id_client], [name], [surname], [email]) VALUES (105, N'Ярик', N'Кияр', N'kiar@mail.ru')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([id_equipment], [name]) VALUES (1, N'Pc')
INSERT [dbo].[Equipment] ([id_equipment], [name]) VALUES (2, N'Periphery')
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (1, 530, 18, 2, N'', 1, 1, 1, CAST(N'2023-12-20T00:00:00.000' AS DateTime), CAST(N'2024-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (2, 588, 83, 3, N'', 2, 2, 1, CAST(N'2023-12-07T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (3, 585, 65, 2, N'', 1, 3, 1, CAST(N'2023-12-21T00:00:00.000' AS DateTime), CAST(N'2024-04-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (4, 550, 88, 2, N'', 1, 4, 1, CAST(N'2023-11-17T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (5, 551, 58, 1, N'', 3, 5, 1, CAST(N'2024-01-08T00:00:00.000' AS DateTime), CAST(N'2024-04-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (6, 592, 42, 3, N'', 1, 6, 1, CAST(N'2023-12-20T00:00:00.000' AS DateTime), CAST(N'2024-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (7, 576, 56, 3, N'', 2, 7, 1, CAST(N'2023-12-12T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (8, 568, 18, 3, N'', 1, 8, 1, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2024-02-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (9, 569, 100, 2, N'', 1, 9, 1, CAST(N'2023-12-14T00:00:00.000' AS DateTime), CAST(N'2024-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (10, 506, 38, 2, N'', 2, 10, 1, CAST(N'2023-12-27T00:00:00.000' AS DateTime), CAST(N'2024-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (11, 563, 22, 3, N'', 1, 11, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), CAST(N'2024-04-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (12, 570, 97, 1, N'', 1, 12, 1, CAST(N'2023-11-23T00:00:00.000' AS DateTime), CAST(N'2024-04-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (13, 501, 96, 1, N'', 2, 13, 1, CAST(N'2024-01-15T00:00:00.000' AS DateTime), CAST(N'2024-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (14, 600, 53, 3, N'', 1, 14, 1, CAST(N'2023-11-17T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (15, 525, 24, 1, N'', 1, 15, 1, CAST(N'2023-12-03T00:00:00.000' AS DateTime), CAST(N'2024-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (16, 537, 39, 3, N'', 1, 16, 1, CAST(N'2023-12-25T00:00:00.000' AS DateTime), CAST(N'2024-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (17, 566, 30, 1, N'', 1, 17, 1, CAST(N'2023-12-01T00:00:00.000' AS DateTime), CAST(N'2024-04-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (18, 570, 70, 1, N'', 1, 18, 1, CAST(N'2023-12-03T00:00:00.000' AS DateTime), CAST(N'2024-03-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (19, 522, 22, 3, N'', 2, 19, 1, CAST(N'2024-01-06T00:00:00.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (20, 519, 83, 1, N'', 1, 20, 1, CAST(N'2023-12-29T00:00:00.000' AS DateTime), CAST(N'2024-05-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (21, 522, 77, 2, N'', 1, 21, 1, CAST(N'2023-12-29T00:00:00.000' AS DateTime), CAST(N'2024-03-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (22, 515, 44, 2, N'', 3, 22, 1, CAST(N'2023-12-25T00:00:00.000' AS DateTime), CAST(N'2024-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (23, 567, 92, 3, N'', 1, 23, 1, CAST(N'2024-01-10T00:00:00.000' AS DateTime), CAST(N'2024-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (24, 515, 17, 3, N'', 2, 24, 1, CAST(N'2023-11-16T00:00:00.000' AS DateTime), CAST(N'2024-05-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (25, 584, 51, 2, N'', 1, 25, 1, CAST(N'2023-11-16T00:00:00.000' AS DateTime), CAST(N'2024-02-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (26, 566, 43, 3, N'', 1, 26, 1, CAST(N'2023-12-11T00:00:00.000' AS DateTime), CAST(N'2024-01-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (27, 513, 86, 2, N'', 2, 27, 1, CAST(N'2024-01-09T00:00:00.000' AS DateTime), CAST(N'2024-05-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (28, 596, 10, 1, N'', 1, 28, 1, CAST(N'2023-12-27T00:00:00.000' AS DateTime), CAST(N'2024-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (29, 552, 23, 3, N'', 1, 29, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), CAST(N'2024-01-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (30, 526, 43, 1, N'', 2, 30, 1, CAST(N'2023-12-12T00:00:00.000' AS DateTime), CAST(N'2024-03-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (31, 559, 4, 3, N'', 1, 31, 1, CAST(N'2023-12-21T00:00:00.000' AS DateTime), CAST(N'2024-02-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (32, 576, 62, 3, N'', 1, 32, 1, CAST(N'2023-12-02T00:00:00.000' AS DateTime), CAST(N'2024-03-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (33, 530, 75, 2, N'', 1, 33, 1, CAST(N'2024-01-06T00:00:00.000' AS DateTime), CAST(N'2024-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (34, 590, 59, 1, N'', 1, 34, 1, CAST(N'2023-12-19T00:00:00.000' AS DateTime), CAST(N'2024-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (35, 538, 36, 1, N'', 1, 35, 1, CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2024-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (36, 545, 50, 3, N'', 2, 36, 1, CAST(N'2023-12-16T00:00:00.000' AS DateTime), CAST(N'2024-04-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (37, 508, 5, 2, N'', 1, 37, 1, CAST(N'2023-12-28T00:00:00.000' AS DateTime), CAST(N'2024-04-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (38, 598, 17, 2, N'', 1, 38, 1, CAST(N'2023-12-14T00:00:00.000' AS DateTime), CAST(N'2024-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (39, 595, 69, 2, N'', 3, 39, 1, CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2024-05-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (40, 503, 56, 2, N'', 1, 40, 1, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2024-02-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (41, 512, 47, 1, N'', 2, 41, 1, CAST(N'2024-01-14T00:00:00.000' AS DateTime), CAST(N'2024-02-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (42, 554, 97, 1, N'', 1, 42, 1, CAST(N'2024-01-06T00:00:00.000' AS DateTime), CAST(N'2024-03-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (43, 596, 22, 2, N'', 1, 43, 1, CAST(N'2023-12-18T00:00:00.000' AS DateTime), CAST(N'2024-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (44, 516, 44, 2, N'', 2, 44, 1, CAST(N'2023-12-23T00:00:00.000' AS DateTime), CAST(N'2024-01-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (45, 581, 12, 3, N'', 1, 45, 1, CAST(N'2023-11-23T00:00:00.000' AS DateTime), CAST(N'2024-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (46, 535, 83, 1, N'', 1, 46, 1, CAST(N'2024-01-03T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (47, 532, 67, 2, N'', 2, 47, 1, CAST(N'2024-01-08T00:00:00.000' AS DateTime), CAST(N'2024-04-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (48, 582, 70, 3, N'', 1, 48, 1, CAST(N'2024-01-09T00:00:00.000' AS DateTime), CAST(N'2024-01-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (49, 548, 39, 2, N'', 1, 49, 1, CAST(N'2023-12-13T00:00:00.000' AS DateTime), CAST(N'2024-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (50, 571, 10, 2, N'', 1, 50, 1, CAST(N'2023-12-22T00:00:00.000' AS DateTime), CAST(N'2024-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (51, 583, 28, 3, N'', 1, 51, 1, CAST(N'2024-01-05T00:00:00.000' AS DateTime), CAST(N'2024-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (52, 506, 11, 1, N'', 1, 52, 1, CAST(N'2024-01-04T00:00:00.000' AS DateTime), CAST(N'2024-04-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (53, 527, 30, 1, N'', 2, 53, 1, CAST(N'2024-01-15T00:00:00.000' AS DateTime), CAST(N'2024-03-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (54, 520, 44, 1, N'', 1, 54, 1, CAST(N'2023-12-08T00:00:00.000' AS DateTime), CAST(N'2024-04-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (55, 519, 22, 2, N'', 1, 55, 1, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2024-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (56, 595, 58, 1, N'', 3, 56, 1, CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2024-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (57, 543, 63, 3, N'', 1, 57, 1, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2024-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (58, 537, 15, 3, N'', 2, 58, 1, CAST(N'2023-12-03T00:00:00.000' AS DateTime), CAST(N'2024-04-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (59, 510, 40, 2, N'', 1, 59, 1, CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2024-02-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (60, 580, 71, 3, N'', 1, 60, 1, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2024-03-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (61, 542, 21, 3, N'', 2, 61, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (62, 577, 66, 1, N'', 1, 62, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), CAST(N'2024-04-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (63, 567, 91, 2, N'', 1, 63, 1, CAST(N'2024-01-11T00:00:00.000' AS DateTime), CAST(N'2024-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (64, 583, 90, 1, N'', 2, 64, 1, CAST(N'2023-12-05T00:00:00.000' AS DateTime), CAST(N'2024-02-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (65, 567, 65, 2, N'', 1, 65, 1, CAST(N'2023-11-17T00:00:00.000' AS DateTime), CAST(N'2024-05-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (66, 524, 94, 2, N'', 1, 66, 1, CAST(N'2023-11-21T00:00:00.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (67, 501, 26, 1, N'', 1, 67, 1, CAST(N'2023-12-16T00:00:00.000' AS DateTime), CAST(N'2024-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (68, 564, 52, 3, N'', 1, 68, 1, CAST(N'2023-11-30T00:00:00.000' AS DateTime), CAST(N'2024-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (69, 504, 60, 3, N'', 1, 69, 1, CAST(N'2023-12-02T00:00:00.000' AS DateTime), CAST(N'2024-02-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (70, 510, 69, 1, N'', 2, 70, 1, CAST(N'2024-01-14T00:00:00.000' AS DateTime), CAST(N'2024-01-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (71, 519, 31, 1, N'', 1, 71, 1, CAST(N'2023-12-22T00:00:00.000' AS DateTime), CAST(N'2024-04-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (72, 563, 70, 2, N'', 1, 72, 1, CAST(N'2024-01-07T00:00:00.000' AS DateTime), CAST(N'2024-02-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (73, 596, 31, 3, N'', 3, 73, 1, CAST(N'2023-11-25T00:00:00.000' AS DateTime), CAST(N'2024-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (74, 526, 20, 1, N'', 1, 74, 1, CAST(N'2023-12-10T00:00:00.000' AS DateTime), CAST(N'2024-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (75, 584, 52, 1, N'', 2, 75, 1, CAST(N'2023-11-18T00:00:00.000' AS DateTime), CAST(N'2024-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (76, 554, 71, 2, N'', 1, 76, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), CAST(N'2024-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (77, 596, 18, 1, N'', 1, 77, 1, CAST(N'2023-12-24T00:00:00.000' AS DateTime), CAST(N'2024-04-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (78, 578, 14, 1, N'', 2, 78, 1, CAST(N'2023-12-12T00:00:00.000' AS DateTime), CAST(N'2024-05-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (79, 579, 70, 2, N'', 1, 79, 1, CAST(N'2024-01-02T00:00:00.000' AS DateTime), CAST(N'2024-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (80, 555, 79, 2, N'', 1, 80, 1, CAST(N'2023-11-26T00:00:00.000' AS DateTime), CAST(N'2024-02-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (81, 564, 100, 2, N'', 2, 81, 1, CAST(N'2023-11-22T00:00:00.000' AS DateTime), CAST(N'2024-02-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (82, 509, 44, 2, N'', 1, 82, 1, CAST(N'2023-12-18T00:00:00.000' AS DateTime), CAST(N'2024-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (83, 532, 7, 1, N'', 1, 83, 1, CAST(N'2023-12-16T00:00:00.000' AS DateTime), CAST(N'2024-02-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (84, 510, 60, 1, N'', 1, 84, 1, CAST(N'2023-11-20T00:00:00.000' AS DateTime), CAST(N'2024-04-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (85, 567, 60, 2, N'', 1, 85, 1, CAST(N'2024-01-10T00:00:00.000' AS DateTime), CAST(N'2024-02-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (86, 535, 97, 1, N'', 2, 86, 2, CAST(N'2024-01-14T00:00:00.000' AS DateTime), CAST(N'2024-01-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (87, 519, 7, 2, N'', 3, 87, 2, CAST(N'2024-01-14T00:00:00.000' AS DateTime), CAST(N'2024-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (88, 506, 6, 1, N'', 3, 88, 2, CAST(N'2023-12-30T00:00:00.000' AS DateTime), CAST(N'2024-04-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (89, 561, 61, 2, N'', 2, 89, 2, CAST(N'2023-12-29T00:00:00.000' AS DateTime), CAST(N'2024-01-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (90, 509, 10, 2, N'', 3, 90, 2, CAST(N'2023-12-13T00:00:00.000' AS DateTime), CAST(N'2024-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (91, 554, 78, 2, N'', 2, 91, 2, CAST(N'2024-01-12T00:00:00.000' AS DateTime), CAST(N'2024-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (92, 530, 53, 1, N'', 3, 92, 2, CAST(N'2024-01-13T00:00:00.000' AS DateTime), CAST(N'2024-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (93, 582, 32, 2, N'', 2, 93, 2, CAST(N'2024-01-07T00:00:00.000' AS DateTime), CAST(N'2024-03-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (94, 537, 34, 3, N'', 2, 94, 2, CAST(N'2023-12-19T00:00:00.000' AS DateTime), CAST(N'2024-02-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (95, 548, 100, 3, N'', 2, 95, 2, CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2024-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (96, 557, 84, 2, N'', 3, 96, 2, CAST(N'2023-11-27T00:00:00.000' AS DateTime), CAST(N'2024-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (97, 593, 95, 3, N'', 3, 97, 2, CAST(N'2023-12-20T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (98, 581, 35, 3, N'', 2, 98, 2, CAST(N'2023-12-15T00:00:00.000' AS DateTime), CAST(N'2024-01-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (99, 548, 22, 3, N'', 3, 99, 2, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2024-02-23T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (100, 571, 89, 2, N'', 2, 100, 2, CAST(N'2024-01-13T00:00:00.000' AS DateTime), CAST(N'2024-03-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (101, 572, 31, 1, N'', 3, 101, 2, CAST(N'2024-01-10T00:00:00.000' AS DateTime), CAST(N'2024-04-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (102, 511, 34, 1, N'', 2, 102, 2, CAST(N'2023-11-18T00:00:00.000' AS DateTime), CAST(N'2024-01-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (103, 529, 95, 1, N'', 2, 103, 2, CAST(N'2023-11-30T00:00:00.000' AS DateTime), CAST(N'2024-03-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (104, 526, 85, 2, N'', 2, 104, 2, CAST(N'2023-12-13T00:00:00.000' AS DateTime), CAST(N'2024-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (105, 555, 53, 2, N'', 3, 105, 2, CAST(N'2023-12-10T00:00:00.000' AS DateTime), CAST(N'2024-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (106, 501, 92, 3, N'', 3, 106, 2, CAST(N'2023-11-23T00:00:00.000' AS DateTime), CAST(N'2024-02-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (107, 525, 81, 3, N'', 2, 107, 2, CAST(N'2024-01-12T00:00:00.000' AS DateTime), CAST(N'2024-02-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (108, 569, 13, 1, N'', 3, 108, 2, CAST(N'2023-11-19T00:00:00.000' AS DateTime), CAST(N'2024-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (109, 555, 53, 2, N'', 2, 109, 2, CAST(N'2024-01-12T00:00:00.000' AS DateTime), CAST(N'2024-02-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (110, 533, 46, 2, N'', 3, 110, 2, CAST(N'2023-11-26T00:00:00.000' AS DateTime), CAST(N'2024-04-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (111, 522, 68, 3, N'', 2, 111, 2, CAST(N'2024-01-07T00:00:00.000' AS DateTime), CAST(N'2024-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (112, 571, 69, 2, N'', 2, 112, 2, CAST(N'2024-01-12T00:00:00.000' AS DateTime), CAST(N'2024-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (113, 589, 30, 2, N'', 2, 113, 2, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2024-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (114, 570, 51, 3, N'', 3, 114, 2, CAST(N'2023-11-27T00:00:00.000' AS DateTime), CAST(N'2024-04-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (115, 543, 26, 3, N'', 3, 115, 2, CAST(N'2023-12-02T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (116, 524, 76, 1, N'', 2, 116, 2, CAST(N'2023-12-28T00:00:00.000' AS DateTime), CAST(N'2024-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (117, 546, 50, 2, N'', 3, 117, 2, CAST(N'2024-01-08T00:00:00.000' AS DateTime), CAST(N'2024-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (118, 517, 8, 1, N'', 2, 118, 2, CAST(N'2023-12-30T00:00:00.000' AS DateTime), CAST(N'2024-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (119, 516, 14, 2, N'', 3, 119, 2, CAST(N'2024-01-10T00:00:00.000' AS DateTime), CAST(N'2024-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (120, 555, 82, 3, N'', 2, 120, 2, CAST(N'2023-11-19T00:00:00.000' AS DateTime), CAST(N'2024-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (121, 513, 64, 2, N'', 2, 121, 2, CAST(N'2023-12-08T00:00:00.000' AS DateTime), CAST(N'2024-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (122, 545, 11, 3, N'', 2, 122, 2, CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2024-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (123, 553, 81, 3, N'', 3, 123, 2, CAST(N'2023-12-07T00:00:00.000' AS DateTime), CAST(N'2024-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (124, 506, 7, 2, N'', 3, 124, 2, CAST(N'2023-11-21T00:00:00.000' AS DateTime), CAST(N'2024-01-17T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (125, 571, 70, 3, N'', 2, 125, 2, CAST(N'2023-12-31T00:00:00.000' AS DateTime), CAST(N'2024-04-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (126, 599, 10, 1, N'', 3, 126, 2, CAST(N'2024-01-12T00:00:00.000' AS DateTime), CAST(N'2024-04-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (129, 402, 103, 1, N'На ноутбуке асус сломался видео чип', 2, 129, 1, CAST(N'2024-05-21T00:00:00.000' AS DateTime), CAST(N'2024-05-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (130, 508, 104, 1, N'Нужно почистить виндоус', 1, 130, 1, CAST(N'2024-05-21T00:00:00.000' AS DateTime), CAST(N'2024-05-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([id_order], [id_user], [id_client], [id_status], [description], [id_break], [id_task], [id_equipment], [date_start], [date_end]) VALUES (131, NULL, 105, 1, N'На наушниках модели Asus Rog клиент нашел наисрпвность звука в левом наушнике', 3, 131, 2, CAST(N'2024-05-22T00:00:00.000' AS DateTime), CAST(N'2024-05-23T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Progress] ON 

INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (1, N'pending', N'true')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (2, N'completed', N'true')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (3, N'completed', N'true')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (4, N'in progress', N'true')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (5, N'pending', N'false')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (6, N'completed', N'true')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (7, N'completed', N'false')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (8, N'completed', N'true')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (9, N'in progress', N'true')
INSERT [dbo].[Progress] ([id_progress], [name], [result]) VALUES (10, N'in progress', N'false')
SET IDENTITY_INSERT [dbo].[Progress] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id_role], [name]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([id_role], [name]) VALUES (2, N'Manager')
INSERT [dbo].[Roles] ([id_role], [name]) VALUES (3, N'Worker')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id_status], [name]) VALUES (1, N'pending')
INSERT [dbo].[Status] ([Id_status], [name]) VALUES (2, N'in progress')
INSERT [dbo].[Status] ([Id_status], [name]) VALUES (3, N'completed')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (1, N'Установка ОС', N'Установка операционной системы на компьютер', 523, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (2, N'Очистка от пыли', N'Очистка внутренних компонентов ПК от пыли и грязи', 561, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (3, N'Установка драйверов', N'Установка необходимых драйверов для работы устройств', 560, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (4, N'Настройка Wi-Fi', N'Настройка беспроводного интернета', 596, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (5, N'Ремонт USB портов', N'Восстановление работоспособности USB портов', 548, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (6, N'Обновление BIOS', N'Обновление системного программного обеспечения', 553, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (7, N'Замена блока питания', N'Замена неисправного блока питания компьютера', 574, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (8, N'Резервное копирование', N'Создание резервных копий данных и системы', 516, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (9, N'Установка антивируса', N'Установка и настройка антивирусного программного обеспечения', 599, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (10, N'Замена оперативной памяти', N'Добавление или замена оперативной памяти компьютера', 510, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (11, N'Оптимизация запуска', N'Ускорение загрузки операционной системы и приложений', 544, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (12, N'Установка программного обеспечения', N'Установка необходимого программного обеспечения', 555, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (13, N'Ремонт перегрева', N'Устранение проблемы перегрева компонентов', 523, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (14, N'Проверка на вирусы', N'Проведение сканирования компьютера на наличие вредоносного ПО', 550, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (15, N'Восстановление данных', N'Восстановление удаленных или поврежденных данных', 534, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (16, N'Проверка сетевого подключения', N'Диагностика и решение проблем с сетевым подключением', 524, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (17, N'Повышение производительности', N'Оптимизация работы системы для увеличения производительности', 557, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (18, N'Установка ОС', N'Установка операционной системы на компьютер', 576, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (19, N'Очистка от пыли', N'Очистка внутренних компонентов ПК от пыли и грязи', 535, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (20, N'Установка драйверов', N'Установка необходимых драйверов для работы устройств', 593, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (21, N'Настройка Wi-Fi', N'Настройка беспроводного интернета', 598, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (22, N'Ремонт USB портов', N'Восстановление работоспособности USB портов', 505, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (23, N'Обновление BIOS', N'Обновление системного программного обеспечения', 555, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (24, N'Замена блока питания', N'Замена неисправного блока питания компьютера', 535, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (25, N'Резервное копирование', N'Создание резервных копий данных и системы', 573, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (26, N'Установка антивируса', N'Установка и настройка антивирусного программного обеспечения', 511, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (27, N'Замена оперативной памяти', N'Добавление или замена оперативной памяти компьютера', 549, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (28, N'Оптимизация запуска', N'Ускорение загрузки операционной системы и приложений', 563, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (29, N'Установка программного обеспечения', N'Установка необходимого программного обеспечения', 599, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (30, N'Ремонт перегрева', N'Устранение проблемы перегрева компонентов', 524, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (31, N'Проверка на вирусы', N'Проведение сканирования компьютера на наличие вредоносного ПО', 504, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (32, N'Восстановление данных', N'Восстановление удаленных или поврежденных данных', 547, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (33, N'Проверка сетевого подключения', N'Диагностика и решение проблем с сетевым подключением', 541, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (34, N'Повышение производительности', N'Оптимизация работы системы для увеличения производительности', 546, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (35, N'Установка ОС', N'Установка операционной системы на компьютер', 555, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (36, N'Очистка от пыли', N'Очистка внутренних компонентов ПК от пыли и грязи', 575, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (37, N'Установка драйверов', N'Установка необходимых драйверов для работы устройств', 543, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (38, N'Настройка Wi-Fi', N'Настройка беспроводного интернета', 548, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (39, N'Ремонт USB портов', N'Восстановление работоспособности USB портов', 546, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (40, N'Обновление BIOS', N'Обновление системного программного обеспечения', 508, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (41, N'Замена блока питания', N'Замена неисправного блока питания компьютера', 562, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (42, N'Резервное копирование', N'Создание резервных копий данных и системы', 530, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (43, N'Установка антивируса', N'Установка и настройка антивирусного программного обеспечения', 552, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (44, N'Замена оперативной памяти', N'Добавление или замена оперативной памяти компьютера', 527, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (45, N'Оптимизация запуска', N'Ускорение загрузки операционной системы и приложений', 551, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (46, N'Установка программного обеспечения', N'Установка необходимого программного обеспечения', 507, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (47, N'Ремонт перегрева', N'Устранение проблемы перегрева компонентов', 566, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (48, N'Проверка на вирусы', N'Проведение сканирования компьютера на наличие вредоносного ПО', 520, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (49, N'Восстановление данных', N'Восстановление удаленных или поврежденных данных', 527, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (50, N'Проверка сетевого подключения', N'Диагностика и решение проблем с сетевым подключением', 597, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (51, N'Повышение производительности', N'Оптимизация работы системы для увеличения производительности', 509, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (52, N'Установка ОС', N'Установка операционной системы на компьютер', 591, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (53, N'Очистка от пыли', N'Очистка внутренних компонентов ПК от пыли и грязи', 535, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (54, N'Установка драйверов', N'Установка необходимых драйверов для работы устройств', 531, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (55, N'Настройка Wi-Fi', N'Настройка беспроводного интернета', 567, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (56, N'Ремонт USB портов', N'Восстановление работоспособности USB портов', 516, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (57, N'Обновление BIOS', N'Обновление системного программного обеспечения', 587, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (58, N'Замена блока питания', N'Замена неисправного блока питания компьютера', 565, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (59, N'Резервное копирование', N'Создание резервных копий данных и системы', 576, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (60, N'Установка антивируса', N'Установка и настройка антивирусного программного обеспечения', 575, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (61, N'Замена оперативной памяти', N'Добавление или замена оперативной памяти компьютера', 531, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (62, N'Оптимизация запуска', N'Ускорение загрузки операционной системы и приложений', 520, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (63, N'Установка программного обеспечения', N'Установка необходимого программного обеспечения', 521, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (64, N'Ремонт перегрева', N'Устранение проблемы перегрева компонентов', 510, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (65, N'Проверка на вирусы', N'Проведение сканирования компьютера на наличие вредоносного ПО', 557, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (66, N'Восстановление данных', N'Восстановление удаленных или поврежденных данных', 548, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (67, N'Проверка сетевого подключения', N'Диагностика и решение проблем с сетевым подключением', 549, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (68, N'Повышение производительности', N'Оптимизация работы системы для увеличения производительности', 517, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (69, N'Установка ОС', N'Установка операционной системы на компьютер', 560, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (70, N'Очистка от пыли', N'Очистка внутренних компонентов ПК от пыли и грязи', 531, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (71, N'Установка драйверов', N'Установка необходимых драйверов для работы устройств', 563, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (72, N'Настройка Wi-Fi', N'Настройка беспроводного интернета', 558, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (73, N'Ремонт USB портов', N'Восстановление работоспособности USB портов', 513, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (74, N'Обновление BIOS', N'Обновление системного программного обеспечения', 574, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (75, N'Замена блока питания', N'Замена неисправного блока питания компьютера', 526, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (76, N'Резервное копирование', N'Создание резервных копий данных и системы', 548, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (77, N'Установка антивируса', N'Установка и настройка антивирусного программного обеспечения', 568, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (78, N'Замена оперативной памяти', N'Добавление или замена оперативной памяти компьютера', 521, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (79, N'Оптимизация запуска', N'Ускорение загрузки операционной системы и приложений', 580, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (80, N'Установка программного обеспечения', N'Установка необходимого программного обеспечения', 567, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (81, N'Ремонт перегрева', N'Устранение проблемы перегрева компонентов', 513, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (82, N'Проверка на вирусы', N'Проведение сканирования компьютера на наличие вредоносного ПО', 503, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (83, N'Восстановление данных', N'Восстановление удаленных или поврежденных данных', 568, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (84, N'Проверка сетевого подключения', N'Диагностика и решение проблем с сетевым подключением', 561, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (85, N'Повышение производительности', N'Оптимизация работы системы для увеличения производительности', 509, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (86, N'Замена жесткого диска', N'Замена неисправного или устаревшего HDD на новый SSD', 582, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (87, N'Замена монитора', N'Замена неисправного или устаревшего монитора', 558, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (88, N'Замена клавиатуры', N'Замена неисправной клавиатуры на новую', 598, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (89, N'Установка принтера', N'Установка и настройка принтера и его драйверов', 555, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (90, N'Настройка звука', N'Решение проблем с аудиоустройствами и настройка звука', 544, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (91, N'Замена видеокарты', N'Замена неисправной или устаревшей видеокарты', 561, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (92, N'Установка дополнительных устройств', N'Подключение и настройка новых устройств', 525, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (93, N'Замена кулера процессора', N'Замена неисправного кулера процессора', 557, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (94, N'Замеа ссд', N'замена ссд диска', 595, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (95, N'Замена жесткого диска', N'Замена неисправного или устаревшего HDD на новый SSD', 551, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (96, N'Замена монитора', N'Замена неисправного или устаревшего монитора', 518, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (97, N'Замена клавиатуры', N'Замена неисправной клавиатуры на новую', 575, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (98, N'Установка принтера', N'Установка и настройка принтера и его драйверов', 591, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (99, N'Настройка звука', N'Решение проблем с аудиоустройствами и настройка звука', 566, 3)
GO
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (100, N'Замена видеокарты', N'Замена неисправной или устаревшей видеокарты', 569, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (101, N'Установка дополнительных устройств', N'Подключение и настройка новых устройств', 581, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (102, N'Замена кулера процессора', N'Замена неисправного кулера процессора', 546, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (103, N'Замеа ссд', N'замена ссд диска', 545, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (104, N'Замена жесткого диска', N'Замена неисправного или устаревшего HDD на новый SSD', 524, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (105, N'Замена монитора', N'Замена неисправного или устаревшего монитора', 577, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (106, N'Замена клавиатуры', N'Замена неисправной клавиатуры на новую', 541, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (107, N'Установка принтера', N'Установка и настройка принтера и его драйверов', 516, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (108, N'Настройка звука', N'Решение проблем с аудиоустройствами и настройка звука', 544, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (109, N'Замена видеокарты', N'Замена неисправной или устаревшей видеокарты', 582, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (110, N'Установка дополнительных устройств', N'Подключение и настройка новых устройств', 590, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (111, N'Замена кулера процессора', N'Замена неисправного кулера процессора', 545, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (112, N'Замеа ссд', N'замена ссд диска', 593, 2)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (113, N'Замена жесткого диска', N'Замена неисправного или устаревшего HDD на новый SSD', 587, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (114, N'Замена монитора', N'Замена неисправного или устаревшего монитора', 545, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (115, N'Замена клавиатуры', N'Замена неисправной клавиатуры на новую', 585, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (116, N'Установка принтера', N'Установка и настройка принтера и его драйверов', 562, 7)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (117, N'Настройка звука', N'Решение проблем с аудиоустройствами и настройка звука', 594, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (118, N'Замена видеокарты', N'Замена неисправной или устаревшей видеокарты', 550, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (119, N'Установка дополнительных устройств', N'Подключение и настройка новых устройств', 520, 5)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (120, N'Замена кулера процессора', N'Замена неисправного кулера процессора', 570, 10)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (121, N'Замеа ссд', N'замена ссд диска', 581, 9)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (122, N'Замена жесткого диска', N'Замена неисправного или устаревшего HDD на новый SSD', 515, 1)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (123, N'Замена монитора', N'Замена неисправного или устаревшего монитора', 538, 6)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (124, N'Замена клавиатуры', N'Замена неисправной клавиатуры на новую', 576, 3)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (125, N'Установка принтера', N'Установка и настройка принтера и его драйверов', 596, 8)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (126, N'Настройка звука', N'Решение проблем с аудиоустройствами и настройка звука', 577, 4)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (127, N'Виндоаус сломался', NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (128, N'1', NULL, NULL, NULL)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (129, N'Сломалось видео', N'Сломалась видечип', NULL, NULL)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (130, N'Лагает виндоус', N'Виндоус лагает', NULL, NULL)
INSERT [dbo].[Tasks] ([id_task], [name], [description], [id_user], [id_progress]) VALUES (131, N'Поломка наушника', N'Починить левый наушник', NULL, 1)
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (401, N'Sebastian', N'Martynov', N'l17ePkdd', N'H5f672JX', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (402, N'Aindrea', N'Haddleton', N'KhWkg910', N'6P80NaR1', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (403, N'Thorsten', N'De Bischop', N'4u8IVOFJ', N'qToGS626', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (404, N'Rodolph', N'Caplen', N'cvS6Z9Se', N'7IXq8aws', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (405, N'Hillary', N'Thebes', N'94xj93tA', N'GLOL5KhP', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (406, N'Harmony', N'Schurcke', N'ofcPW9H2', N'MJyCTV4A', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (407, N'Ariana', N'Dwelley', N'WLC08Q3Q', N'cQYU9WTg', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (408, N'Verena', N'Pude', N'boks3rTt', N'6ewRj2dV', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (409, N'Sheri', N'Maior', N'd3UEhiek', N'4n7g7IUT', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (410, N'Cecil', N'Spinney', N'HVusGx72', N'0g7m8spK', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (411, N'Doroteya', N'Swainston', N'e4HQ4NuU', N'v2BQhwFt', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (412, N'Monica', N'Caesmans', N'5VV2LNO1', N'14tteoGM', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (413, N'Thelma', N'Carrane', N'8cB9FY1N', N'piTwC84K', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (414, N'Orelle', N'Peyro', N'qChv07n3', N'253bClWk', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (415, N'Carolyn', N'Drew', N'279SJDLT', N'81gWJh10', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (416, N'Reinwald', N'Boyn', N'35wtn4wi', N'J51j7y26', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (417, N'Griffy', N'Chadney', N'49Yb5CxY', N'4s32V9JP', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (418, N'Dorothy', N'Mattaus', N'kzg14b1w', N'U97184nN', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (419, N'Kayne', N'Rosenbarg', N'xbN0UXMI', N'WKCveGD3', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (420, N'Savina', N'Jelfs', N'31cT3QJP', N'5nvbJMhi', 1)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (421, N'Vanna', N'Pennycord', N'm2AN2498', N'70fK23Le', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (422, N'Norman', N'Newland', N'LCg8m66W', N'Qb6FVci1', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (423, N'Bobby', N'Aslet', N'AdJN0dPz', N'y58Gh2Ov', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (424, N'Shepperd', N'Angerstein', N'49bgmy8f', N'M5CLwnGf', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (425, N'Catina', N'McGarel', N'3K62IK57', N'yWQYxAl1', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (426, N'Christiana', N'Lapwood', N'fnlJ683M', N'oZMC4xmw', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (427, N'Reyna', N'Pryn', N'4Z800P2w', N'A17W24Oe', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (428, N'Aaren', N'Domerq', N'5OUAvE39', N'7LUaiLI5', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (429, N'Lanette', N'Addington', N'i6wT8x8i', N'4leseK1y', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (430, N'Leonhard', N'Romero', N'GdH7XH30', N'PFkI64dH', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (431, N'Norbert', N'Farnill', N'OPXk660E', N'Jmtwz3Ql', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (432, N'Thibaud', N'Mallabone', N'uRHciO6O', N'X04pi48T', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (433, N'Eadmund', N'Osbourn', N'06rWc8br', N'fU3YT8in', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (434, N'Lind', N'Durston', N'uS18757E', N'ijregL65', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (435, N'Paulita', N'Elen', N'22t5KoXt', N'HOggoDMG', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (436, N'Gerard', N'Swiffen', N'0ck7Er17', N'uOq6hXUy', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (437, N'Kissiah', N'Burgill', N'0j2xf5k5', N'0Sk8Sn26', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (438, N'Yorgos', N'Whitty', N'8I9ok963', N'2L5nT4fV', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (439, N'Rodge', N'Benbrick', N'0A2a0v8L', N'ZEynLeYj', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (440, N'Torrey', N'Paddeley', N'p14jUcqr', N'wgY881K4', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (441, N'Torrin', N'Blennerhassett', N'9F78DX8s', N'66DnLikv', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (442, N'Tammie', N'Yakov', N'JR452s6V', N'MJMOVNzw', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (443, N'Sascha', N'Karp', N'uWcL1Z99', N'Ka1N62a9', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (444, N'Glyn', N'Petrelli', N'vxnD636R', N'G9JQ9syX', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (445, N'Adella', N'Simson', N'c9w0ww2H', N'UU3M9tOH', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (446, N'Estele', N'Daen', N'4tg3n52p', N'ZR1uaHew', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (447, N'Karel', N'Fitzgerald', N'aK7eJZ5I', N't4u1166N', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (448, N'Pearl', N'Dickinson', N'9rSn6q87', N'eVENjQo2', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (449, N'Doy', N'Pilmoor', N'QeqR611k', N'U1aIrVkJ', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (450, N'Marcile', N'Borland', N'z3Q0PB24', N'yhXPXQF0', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (451, N'Karil', N'Fawlo', N'PmX3HVLh', N'R9WOnS55', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (452, N'Shir', N'Gotling', N'6kzxw2oZ', N'UJ7Uwl97', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (453, N'Tony', N'Dalgetty', N'8YETRtm6', N'3RXPa2Ad', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (454, N'Cinda', N'Jorn', N'0kYREL1N', N'BWOu4rXO', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (455, N'Adriano', N'Olenikov', N'N96L6ZfM', N'O2BMeMSO', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (456, N'Eleonora', N'Bootland', N'p04txPuh', N'tL9wQuDw', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (457, N'Cristina', N'Farriar', N'913Jm5XV', N'195sZ3Ql', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (458, N'Lemuel', N'Tucknott', N'8U1o96XL', N'hBrXkrmL', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (459, N'Dulcea', N'Jacobsson', N'4v60G9u2', N'hcmJi7g1', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (460, N'Gregoire', N'Cauldwell', N'TQoOaJcL', N'vM5E68YD', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (461, N'Jess', N'Longo', N'fiShASg8', N'v61Mu16N', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (462, N'Edi', N'Hansley', N'jC0vK6l6', N'DGrt7w0i', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (463, N'Mair', N'Croxon', N'5jMjeft4', N'OQ2huxO3', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (464, N'Andras', N'Bartlam', N'AD0k8g9D', N'nR74G885', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (465, N'Brand', N'Reuben', N'772IAs2v', N'H5rWGi9W', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (466, N'Alysa', N'Gorelli', N'Yh89W22S', N'r39m7q1o', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (467, N'Elmore', N'Conquest', N'TUsk0JCE', N'evxKXa6r', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (468, N'Daron', N'Lemme', N'G87GyB3k', N'fWa9iaBb', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (469, N'Honor', N'Zack', N'd1m76G7f', N'244u5O6Z', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (470, N'Brigid', N'Jacks', N'Bn8z0gSK', N'tURFZgi2', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (471, N'Leigh', N'Chittock', N'xAACAqYc', N'X1hYWdEX', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (472, N'Aldin', N'Rains', N'BOgRb6mG', N'NoeQNFo9', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (473, N'Emanuele', N'Rigby', N'9F46lSF2', N'O779jE53', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (474, N'Meier', N'Corston', N'9e25SCb7', N'2UJ2ew3n', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (475, N'Mortimer', N'Molan', N'nr7vm5J5', N'kZTOk12L', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (476, N'Reine', N'Gibling', N'ht7PWUD0', N'WFh4t10C', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (477, N'Pammy', N'Coomes', N'222P12FG', N'KbPz51MG', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (478, N'Jocelin', N'Hansel', N'mYRDYl2x', N'o440pgRc', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (479, N'Deanne', N'Lymer', N'fD82G4D8', N'EGYK8KbC', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (480, N'Franchot', N'Bonnin', N'TpB5TXHT', N'F74xyEC4', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (481, N'Marabel', N'Avramov', N'G8V12mf6', N'UTBVHJhQ', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (482, N'Leodora', N'Ghelardi', N'8aGQ0zZ5', N'SqAc49wA', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (483, N'Chickie', N'Venning', N'25mDou96', N'xJCw2Yf8', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (484, N'Delmar', N'Levings', N'7Q6629tf', N'YX9U5H7e', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (485, N'Johny', N'Goldhawk', N'80AdRAQ8', N'RZR6Wc7x', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (486, N'Ermina', N'Lantiff', N'22WHL1xX', N'qp7dmxYe', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (487, N'Creighton', N'Keates', N'0S7ZpK30', N'Pq8Mh112', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (488, N'Gerhardine', N'Newcome', N'2NHWoT60', N'u4W7584C', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (489, N'Thayne', N'Jenken', N'mTgbRgKr', N'18SgI5uo', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (490, N'Hunter', N'Akast', N'pjlLKDg7', N'alupv18g', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (491, N'Fair', N'Baszniak', N'5wKzG9ha', N'A4tkU06G', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (492, N'Bernardo', N'McMillam', N'Vj9U52L9', N's3jvvx0y', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (493, N'Tucky', N'Wheelband', N'3dDN6gT7', N'AA9M9mJL', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (494, N'Mohammed', N'Knightsbridge', N'3vMtkGUy', N'0d4RI1q6', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (495, N'Carl', N'Laugheran', N'68XcivW5', N'yB2gCX8r', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (496, N'Iver', N'Fairall', N'P5iXWFim', N'nm801fcV', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (497, N'Homerus', N'Diprose', N'wNoGA63E', N'3RAdK33K', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (498, N'Piggy', N'Jelleman', N'0s7zXw39', N'aJKt6eFn', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (499, N'Fairlie', N'Gedney', N'NV6jzX9c', N'exfK8qwf', 2)
GO
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (500, N'Meredith', N'Swain', N'gxDK6Bpg', N'79c501U8', 2)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (501, N'Conny', N'Slobom', N'C0F4W4h1', N'PDpVa0Gm', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (502, N'Gerhardt', N'Sutterby', N'3C658xQp', N'L57E8M03', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (503, N'Garnette', N'Polak', N'H13j3469', N'S1dIg1tk', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (504, N'Rex', N'Sporton', N'2B2k6hHA', N'Iet1i47u', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (505, N'Rickert', N'Van der Beek', N'Q91SIC30', N'H7E6B67l', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (506, N'Prue', N'Kachel', N'277f6M25', N'2hUQwsHr', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (507, N'Cobby', N'Lathee', N'1o596eI7', N'b58NiZIK', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (508, N'Hannis', N'Benedick', N'byXM4O6J', N'mfK0jE5S', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (509, N'Kurtis', N'Piatto', N'9b8z08bn', N'2XWEl1g1', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (510, N'Lanita', N'Cannaway', N'Wmd2fF82', N'U2gBFv8T', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (511, N'Glenden', N'Handrik', N'rI8ZkW86', N'7d2j6mV9', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (512, N'Albrecht', N'Magrane', N'C3fEKvMw', N'MA0o527r', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (513, N'Emmalynne', N'Ivashnyov', N'C2pnh0z1', N'kX6AHEuV', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (514, N'Alan', N'Tunnow', N'M4wOy2Qx', N'E11rJWbd', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (515, N'Kenna', N'Brounsell', N'nSMFavfB', N'vLfjaXRR', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (516, N'Bessie', N'Debney', N'30S21Bsf', N'NnbE5LU8', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (517, N'Maurita', N'Osborn', N'sHHrM0e9', N'BqKxLn70', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (518, N'Brade', N'Minchindon', N'2d9L4EjS', N'udx7dWBH', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (519, N'Shaw', N'Ticehurst', N'p7Zn76To', N'H2NZEylI', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (520, N'Manny', N'Spellessy', N'rKsT7w2W', N'SV3lx269', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (521, N'Frasquito', N'Claussen', N'BfNWUHfk', N'2c78TtI7', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (522, N'Nesta', N'Blare', N'58w0dZBh', N'4T4R04L5', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (523, N'Krissie', N'Penlington', N'MQ52mioe', N'sLsBDUpK', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (524, N'Jessy', N'Barkas', N'MRVll2R4', N'k65Riqa2', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (525, N'Arie', N'Wingeatt', N'rg4GS98U', N'eJvq070I', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (526, N'Marlin', N'Olley', N'485M1H3a', N'ernNXofY', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (527, N'Kort', N'Branthwaite', N'cy63pp0B', N'hS499TgV', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (528, N'Sydelle', N'Pringle', N'1l8Sab4f', N'Ms8mDZor', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (529, N'Quintana', N'Stobbart', N'T4mCxdi4', N'p7156ywu', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (530, N'Brock', N'Tran', N'9I3zAy7i', N'Qdh0F3X5', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (531, N'Ced', N'Patesel', N'cX3D9yyZ', N'1Dyt559p', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (532, N'Rene', N'Scarth', N'Hsq44f40', N'GXzF62Fk', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (533, N'Ezekiel', N'Kaesmans', N'6cXvp6Bo', N'S5P15g18', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (534, N'Tessie', N'Brackley', N'HU4Fit3P', N'Wa3y16Z6', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (535, N'Xylia', N'Gasnell', N'08YyR8E0', N'gwoo1Bvq', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (536, N'Micki', N'Primmer', N'd26Ux5mf', N'1v29408q', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (537, N'Tracie', N'Leader', N'yDDUZ8iZ', N'BCkNR9fm', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (538, N'Daron', N'Clapson', N'AFFS0hB7', N'bYgc59hK', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (539, N'Remington', N'Ebbage', N'P0wVyRm9', N'kceBFFhj', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (540, N'Malva', N'Whitford', N'25706zUm', N'UvTSgZHv', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (541, N'Ki', N'Nerval', N'YgmE83pS', N'5xn9BwYI', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (542, N'Pascal', N'Kyncl', N'548QKI6c', N'T0NACxB7', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (543, N'Vidovic', N'McJarrow', N'gu2rCx0j', N'pm25unSC', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (544, N'Gus', N'Bowller', N'A5vcLvAu', N'NuatLgn5', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (545, N'Edouard', N'Youens', N'rCtG2SxB', N'9a7PmtJ2', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (546, N'Zachary', N'Sudlow', N'g6T7vymi', N'95Kd1f8A', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (547, N'Karlens', N'Jurczyk', N'sIOSJ2vE', N'ZMvDgJ5d', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (548, N'Terrye', N'Lain', N'1yjYdE5g', N'F0KZ4Z32', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (549, N'Hakeem', N'Jobbings', N'3T84c5sA', N'Y5QhObR7', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (550, N'Bill', N'Lannon', N'fy2amt4Z', N'Ufrw63yz', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (551, N'Meyer', N'Bear', N'cAZ5razX', N'6zmDor3i', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (552, N'Gwen', N'Melan', N'L6F4GOdK', N'655uU820', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (553, N'Arnaldo', N'Longcaster', N'hx5hE9Qg', N'c440r9hb', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (554, N'Indira', N'Gyorgy', N'166Ccbmv', N'09Yomej1', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (555, N'Hakim', N'Matthiae', N'W80a6nSS', N'C0rrYR0V', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (556, N'Shanon', N'Papis', N'N256Io84', N'MJ1Kh886', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (557, N'Morgen', N'Cruickshanks', N'WKcpPL41', N'130AR3bD', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (558, N'Nalani', N'Folling', N'G14zvAX5', N'i3YX4rPR', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (559, N'Sharleen', N'Willetts', N'hiSg5c86', N'890OlZ7x', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (560, N'Brendon', N'Moreinu', N'5WWWfR6v', N'65BqI6J3', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (561, N'Leroi', N'Hawkings', N'fe1M3Wv7', N'Z3a5X7ig', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (562, N'Maxy', N'Odlin', N'S4SYrkcp', N'd53VGiuc', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (563, N'Christie', N'Hagyard', N'5in62yzI', N'w6q7HI9u', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (564, N'Micheline', N'Cawthron', N'hl4OoO28', N'2k25b4G0', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (565, N'Bronnie', N'Pratton', N'o8ZE5T4D', N'397hj9Q8', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (566, N'Michal', N'Gatecliff', N'QWtEv25C', N'cQDRxW23', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (567, N'Wendell', N'Lattka', N'i61LMmGM', N'Aiyv478X', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (568, N'Lock', N'Bendelow', N'1HbWBD67', N'7Zc4nL6f', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (569, N'Cortney', N'Gocke', N'20qrLo81', N'uii7aOFI', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (570, N'Felisha', N'Eddisforth', N'Zk70ily7', N'K9ogEv7i', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (571, N'Jacquie', N'Kitchingman', N'e0FMm4Zk', N'RYKcee3w', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (572, N'Maxy', N'Brockelsby', N'tcduY5vR', N'HX5o7BW6', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (573, N'Merrile', N'Rogier', N'IpjDvP16', N'md6YopIZ', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (574, N'Veronike', N'Finan', N'A8rCdRhn', N'qoxBa9m5', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (575, N'Aline', N'Beagin', N'3F4wgEXZ', N'4MxeJ54G', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (576, N'Caressa', N'Hubbocks', N'xTZ2igis', N'ySUoUjpc', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (577, N'Gustavo', N'Snook', N'aU70e0N5', N'834VLNGJ', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (578, N'Sullivan', N'Lawrenz', N'uO869301', N'X344y57k', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (579, N'Cornell', N'Monks', N'C0ZARzAI', N'bNF7d8Wg', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (580, N'Margaretta', N'Top', N'M1C6xt14', N'N1iZ21HE', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (581, N'Barbe', N'Sworne', N'rgJ1Z2ba', N'TznMznx9', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (582, N'Jess', N'Harrald', N'0VXx0aA6', N'5A5pTP4H', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (583, N'Rickard', N'Corradini', N'818M3LG6', N'tu5N4GWv', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (584, N'Remy', N'Dolton', N'pA4NN93x', N'6938po4g', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (585, N'Meryl', N'Hoys', N'FZ17Vk36', N'2AFSXG2m', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (586, N'Laurianne', N'Pagram', N'h7dLiR5L', N'ZsE11I1O', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (587, N'Skipp', N'Iacovo', N'y6Ly6OR5', N'T0mL0kpq', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (588, N'Ernestus', N'Cossem', N'51MDgZQ1', N'Q7szr95y', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (589, N'Carlita', N'Littlecote', N'ih73vSJ0', N'TP0oEu0o', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (590, N'Mia', N'Cousin', N'X9C8TQ8D', N'm57wc4Ag', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (591, N'Jessee', N'Snipe', N'0t4aQwI9', N'k7ORpagu', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (592, N'Christiana', N'Saunter', N'BOe5XDxb', N'7do6KtSG', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (593, N'Drusie', N'Pickervance', N'9PhQGv3a', N'5726u2g3', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (594, N'Annmarie', N'McGillivrie', N'1sLUVl7M', N'M60tq5Pk', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (595, N'Slade', N'Bowlesworth', N'zC0t4EYy', N'0yzLY5bm', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (596, N'Mareah', N'Shailer', N'q9RQ549p', N'M9G7VBd2', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (597, N'Kandy', N'Ropkins', N't8Kh35Um', N'P0Vez1p6', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (598, N'Bill', N'Callf', N'tW24Q925', N'4czGq250', 3)
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (599, N'Roselle', N'Langstone', N'b732qR08', N'7qzJV13T', 3)
GO
INSERT [dbo].[Users] ([id_user], [name], [surname], [login], [password], [id_role]) VALUES (600, N'Aile', N'Bulch', N'i9mYJ43v', N'YwU07m8R', 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Breaks] FOREIGN KEY([id_break])
REFERENCES [dbo].[Breaks] ([id_break])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Breaks]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Clients] FOREIGN KEY([id_client])
REFERENCES [dbo].[Clients] ([id_client])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Clients]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Equipment] FOREIGN KEY([id_equipment])
REFERENCES [dbo].[Equipment] ([id_equipment])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Equipment]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([id_status])
REFERENCES [dbo].[Status] ([Id_status])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Progress] FOREIGN KEY([id_progress])
REFERENCES [dbo].[Progress] ([id_progress])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Progress]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([id_role])
REFERENCES [dbo].[Roles] ([id_role])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
