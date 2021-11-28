USE [ShoesStore]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 11/28/2021 8:56:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[matk] [nchar](10) NOT NULL,
	[tentk] [nvarchar](50) NULL,
	[matkhau] [nvarchar](50) NULL,
	[sdt] [int] NULL,
	[email] [nvarchar](100) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[matk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giohang]    Script Date: 11/28/2021 8:56:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[magiohang] [nchar](10) NOT NULL,
	[masp] [nchar](10) NULL,
	[tensp] [nvarchar](100) NULL,
	[soluonghang] [int] NULL,
	[tongtien] [money] NULL,
 CONSTRAINT [PK_giohang] PRIMARY KEY CLUSTERED 
(
	[magiohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 11/28/2021 8:56:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makh] [nchar](10) NULL,
	[tenkh] [nvarchar](50) NULL,
	[sdt] [int] NULL,
	[email] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaisp]    Script Date: 11/28/2021 8:56:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisp](
	[maloaisp] [nchar](100) NOT NULL,
	[tenloaisp] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaisp] PRIMARY KEY CLUSTERED 
(
	[maloaisp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 11/28/2021 8:56:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masp] [nchar](10) NOT NULL,
	[tensp] [nvarchar](200) NULL,
	[loaisp] [nchar](100) NULL,
	[xuatxu] [nvarchar](50) NULL,
	[giaban] [money] NULL,
	[gianhap] [money] NULL,
	[soluong] [int] NULL,
	[hinhanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_sanpham] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
