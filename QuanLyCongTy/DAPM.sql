USE [DoAnPhanMem]
GO
/****** Object:  Table [dbo].[BaoCao]    Script Date: 5/2/2023 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao](
	[Id] [nchar](10) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[MaNV] [nchar](10) NULL,
 CONSTRAINT [PK_BaoCao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/2/2023 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ChucVuID] [nchar](10) NOT NULL,
	[NameChucVu] [nvarchar](max) NULL,
	[IDPhongBan] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[ChucVuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/2/2023 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](max) NULL,
	[IDChucVu] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 5/2/2023 7:44:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[IDPhongBan] [nvarchar](50) NOT NULL,
	[NamePhongBan] [nvarchar](max) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[IDPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BaoCao] ([Id], [TieuDe], [NoiDung], [MaNV]) VALUES (N'BC1       ', N'Báo cáo đồ án', N'<p>B&aacute;o c&aacute;o đồ &aacute;n phần mềm buổi cuối</p>
', N'NV1       ')
GO
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'CVĐT      ', N'Chuyên viên Đào tạo', N'NS')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'CVKT      ', N'Chuyên viên Kỹ thuật', N'KT')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'CVMT      ', N'Chuyên viên Marketing', N'KD')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'CVTD      ', N'Chuyên viên Tuyển dụng', N'NS')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'CVTV      ', N'Chuyên viên Tư vấn', N'KD')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'GĐKD      ', N'Giám đốc Kinh doanh', N'KD')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'GĐKT      ', N'Giám đốc Kỹ thuật', N'KT')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'GĐNS      ', N'Giám đốc Nhân sự', N'NS')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'GĐQLCL    ', N'Giám đốc Quản lý chất lượng', N'CL')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'GĐTC      ', N'Giám đốc Tài chính', N'TC')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'KTT       ', N'Kế toán trưởng', N'TC')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'KTV       ', N'Kế toán viên', N'TC')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVKD      ', N'Nhân viên Kinh doanh', N'KD')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVKĐCL    ', N'Nhân viên Kiểm định chất lượng', N'CL')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVLT      ', N'Nhân viên Lập trình', N'KT')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVNCPT    ', N'Nhân viên Nghiên cứu phát triển', N'CL')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVNS      ', N'Nhân viên Nhân sự', N'NS')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVQLRR    ', N'Nhân viên Quản lý rủi ro', N'CL')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVTC      ', N'Nhân viên Tài chính', N'TC')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'NVTK      ', N'Nhân viên Thiết kế', N'KT')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'TPKD      ', N'Trưởng phòng Kinh Doanh', N'KD')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'TPKDCL    ', N'Trưởng phòng Kiểm định chất lượng', N'CL')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'TPNS      ', N'Trưởng phòng Nhân sự', N'NS')
INSERT [dbo].[ChucVu] ([ChucVuID], [NameChucVu], [IDPhongBan]) VALUES (N'TPTC      ', N'Trưởng phòng Tài chính', N'TC')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [IDChucVu]) VALUES (N'NV1       ', N'Nguyễn Anh Thành', N'NVLT      ')
GO
INSERT [dbo].[PhongBan] ([IDPhongBan], [NamePhongBan]) VALUES (N'CL', N'Phòng Quản lý chất lượng')
INSERT [dbo].[PhongBan] ([IDPhongBan], [NamePhongBan]) VALUES (N'KD', N'Phòng Kinh doanh')
INSERT [dbo].[PhongBan] ([IDPhongBan], [NamePhongBan]) VALUES (N'KT', N'Phòng Kỹ thuật')
INSERT [dbo].[PhongBan] ([IDPhongBan], [NamePhongBan]) VALUES (N'NS', N'Phòng Nhân sự')
INSERT [dbo].[PhongBan] ([IDPhongBan], [NamePhongBan]) VALUES (N'TC', N'Phòng Tài chính')
GO
ALTER TABLE [dbo].[BaoCao]  WITH CHECK ADD  CONSTRAINT [FK_BaoCao_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BaoCao] CHECK CONSTRAINT [FK_BaoCao_NhanVien]
GO
ALTER TABLE [dbo].[ChucVu]  WITH CHECK ADD  CONSTRAINT [FK_ChucVu_PhongBan] FOREIGN KEY([IDPhongBan])
REFERENCES [dbo].[PhongBan] ([IDPhongBan])
GO
ALTER TABLE [dbo].[ChucVu] CHECK CONSTRAINT [FK_ChucVu_PhongBan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVu] ([ChucVuID])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
