USE [QLgiay]
GO
/****** Object:  StoredProcedure [dbo].[TimKiem]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TimKiem](@bien nvarchar(5))
as
  select * from sach where maloai =@bien


GO
/****** Object:  StoredProcedure [dbo].[TimMaLoai]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TimMaLoai]( @maloai nvarchar(50))
as
select * from sach where maloai=@maloai


GO
/****** Object:  Table [dbo].[bangdanhgia]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bangdanhgia](
	[madanhgia] [bigint] IDENTITY(1,1) NOT NULL,
	[magiay] [nvarchar](50) NULL,
	[makh] [bigint] NULL,
	[noidung] [nvarchar](max) NULL,
	[diem] [nvarchar](50) NULL,
	[ngaydanhgia] [date] NULL,
	[hinhanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_bangdanhgia] PRIMARY KEY CLUSTERED 
(
	[madanhgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[machitiethd] [bigint] IDENTITY(1,1) NOT NULL,
	[magiay] [nvarchar](50) NOT NULL,
	[soluongmua] [int] NOT NULL,
	[mahoadon] [bigint] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[machitiethd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [bit] NOT NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giay]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giay](
	[magiay] [nvarchar](50) NOT NULL,
	[tengiay] [nvarchar](50) NULL,
	[soluong] [bigint] NULL,
	[gia] [bigint] NULL,
	[maloai] [nvarchar](50) NULL,
	[size] [nvarchar](50) NULL,
	[anh] [nvarchar](50) NULL,
	[ngaynhap] [datetime] NULL,
	[tieude] [nvarchar](max) NULL,
	[soluotxem] [bigint] NULL CONSTRAINT [DF__giay__soluotxem__06CD04F7]  DEFAULT ((0)),
 CONSTRAINT [PK_sach] PRIMARY KEY CLUSTERED 
(
	[magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giaysize]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaysize](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[magiay] [nvarchar](50) NULL,
	[masize] [nvarchar](50) NULL,
 CONSTRAINT [PK_giaysize] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahoadon] [bigint] IDENTITY(1,1) NOT NULL,
	[makh] [bigint] NULL,
	[ngaymua] [datetime] NOT NULL,
	[damua] [bit] NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makh] [bigint] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sodt] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tendn] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loai]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai](
	[maloai] [nvarchar](50) NOT NULL,
	[tenloai] [nvarchar](50) NULL,
 CONSTRAINT [PK_loai] PRIMARY KEY CLUSTERED 
(
	[maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[size]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[masize] [nvarchar](50) NOT NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK_size] PRIMARY KEY CLUSTERED 
(
	[masize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[abc]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[abc]
AS
SELECT     dbo.sach.tensach, dbo.loai.tenloai, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai


GO
/****** Object:  View [dbo].[HtSach]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[HtSach]
AS
SELECT     dbo.sach.maloai, dbo.loai.tenloai, dbo.sach.masach, dbo.sach.tensach, dbo.sach.tacgia, dbo.sach.gia
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai


GO
/****** Object:  View [dbo].[rrr]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[rrr]
AS
SELECT     dbo.loai.tenloai, dbo.sach.tensach, dbo.sach.gia, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai


GO
/****** Object:  View [dbo].[tk]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[tk]
AS
SELECT     dbo.loai.tenloai, SUM(dbo.sach.soluong) AS TongSoLuong, AVG(dbo.sach.gia) AS TBCGia, COUNT(dbo.sach.tensach) AS SoSach
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai
GROUP BY dbo.loai.tenloai


GO
/****** Object:  View [dbo].[Vabcd]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vabcd]
AS
SELECT     dbo.ChiTietHoaDon.MaSach, dbo.ChiTietHoaDon.SoLuongMua, dbo.hoadon.NgayMua, dbo.loai.tenloai, dbo.sach.soluong
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai


GO
/****** Object:  View [dbo].[VAdminXacNhan]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VAdminXacNhan]
AS
SELECT dbo.ChiTietHoaDon.machitiethd, dbo.KhachHang.hoten, dbo.giay.tengiay, dbo.giay.size, dbo.giay.gia, dbo.ChiTietHoaDon.soluongmua, dbo.giay.soluong * dbo.giay.gia AS thanhtien, dbo.ChiTietHoaDon.damua, dbo.hoadon.ngaymua
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.giay ON dbo.ChiTietHoaDon.magiay = dbo.giay.magiay INNER JOIN
                  dbo.hoadon ON dbo.ChiTietHoaDon.mahoadon = dbo.hoadon.mahoadon INNER JOIN
                  dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh
WHERE  (dbo.ChiTietHoaDon.damua = 0)

GO
/****** Object:  View [dbo].[Vhoadon]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vhoadon]
AS
SELECT     dbo.sach.masach, dbo.sach.tensach, dbo.sach.gia, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.sach INNER JOIN
                      dbo.ChiTietHoaDon ON dbo.sach.masach = dbo.ChiTietHoaDon.MaSach INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon
WHERE     (dbo.hoadon.damua = 0)


GO
/****** Object:  View [dbo].[VLichSuMuaHang]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VLichSuMuaHang]
AS
SELECT dbo.giay.magiay, dbo.giay.tengiay, dbo.giay.size, dbo.giay.gia, dbo.KhachHang.makh, dbo.hoadon.ngaymua, dbo.ChiTietHoaDon.soluongmua, dbo.giay.gia * dbo.giay.soluong AS thanhtien, dbo.ChiTietHoaDon.damua, dbo.hoadon.mahoadon, 
                  dbo.giay.anh
FROM     dbo.ChiTietHoaDon INNER JOIN
                  dbo.hoadon ON dbo.ChiTietHoaDon.mahoadon = dbo.hoadon.mahoadon INNER JOIN
                  dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh INNER JOIN
                  dbo.giay ON dbo.ChiTietHoaDon.magiay = dbo.giay.magiay

GO
/****** Object:  View [dbo].[Vqq]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vqq]
AS
SELECT     dbo.loai.tenloai, dbo.sach.tensach, dbo.sach.tacgia, dbo.ChiTietHoaDon.SoLuongMua
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai


GO
/****** Object:  View [dbo].[VTamBay]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VTamBay]
AS
SELECT     dbo.ChiTietHoaDon.MaSach, dbo.ChiTietHoaDon.SoLuongMua, dbo.hoadon.makh, dbo.hoadon.NgayMua, dbo.KhachHang.diachi, dbo.KhachHang.hoten, 
                      dbo.sach.tensach, dbo.sach.tacgia
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.Makh INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai


GO
/****** Object:  View [dbo].[Vtest]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vtest]
AS
SELECT     dbo.sach.tensach, dbo.loai.tenloai, dbo.ChiTietHoaDon.SoLuongMua, dbo.sach.gia, dbo.hoadon.NgayMua, dbo.KhachHang.hoten
FROM         dbo.ChiTietHoaDon INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh INNER JOIN
                      dbo.sach ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai


GO
/****** Object:  View [dbo].[VTK]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VTK]
AS
SELECT     dbo.loai.tenloai, COUNT(dbo.sach.tacgia) AS SoSach, SUM(dbo.sach.soluong) AS TongSl, AVG(dbo.sach.gia) AS TbcGia
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai
GROUP BY dbo.loai.tenloai


GO
/****** Object:  View [dbo].[VTKabc]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VTKabc]
AS
SELECT     dbo.loai.tenloai, SUM(dbo.sach.soluong) AS Tongkho, SUM(dbo.ChiTietHoaDon.SoLuongMua) AS Tongmua, COUNT(dbo.KhachHang.hoten) AS SoKH
FROM         dbo.loai INNER JOIN
                      dbo.sach ON dbo.loai.maloai = dbo.sach.maloai INNER JOIN
                      dbo.ChiTietHoaDon ON dbo.sach.masach = dbo.ChiTietHoaDon.MaSach INNER JOIN
                      dbo.hoadon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.hoadon.MaHoaDon INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh
GROUP BY dbo.loai.tenloai


GO
/****** Object:  View [dbo].[Vtktest]    Script Date: 31/08/2023 5:35:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vtktest]
AS
SELECT     dbo.loai.tenloai, SUM(dbo.sach.soluong) AS Tongsl, SUM(dbo.ChiTietHoaDon.SoLuongMua) AS Tongslmua, COUNT(dbo.KhachHang.hoten) AS SoKhach
FROM         dbo.hoadon INNER JOIN
                      dbo.ChiTietHoaDon ON dbo.hoadon.MaHoaDon = dbo.ChiTietHoaDon.MaHoaDon INNER JOIN
                      dbo.sach INNER JOIN
                      dbo.loai ON dbo.sach.maloai = dbo.loai.maloai ON dbo.ChiTietHoaDon.MaSach = dbo.sach.masach INNER JOIN
                      dbo.KhachHang ON dbo.hoadon.makh = dbo.KhachHang.makh
GROUP BY dbo.loai.tenloai


GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (29, N'a12', 600, 65, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (38, N'a12', 100, 89, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (40, N'a10', 200, 90, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (41, N'a1', 100, 91, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (42, N'a2', 200, 92, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (43, N'a5', 300, 93, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (44, N'a17', 400, 94, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (49, N'a1', 1, 101, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (50, N'a16', 10, 102, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (52, N'a4', 1, 103, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (53, N'a1', 1, 104, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (54, N'a11', 2, 104, 1)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (55, N'a1', 2, 105, 0)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (56, N'a11', 1, 105, 0)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (57, N'a6', 1, 106, 0)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (58, N'a1', 2, 107, 0)
INSERT [dbo].[ChiTietHoaDon] ([machitiethd], [magiay], [soluongmua], [mahoadon], [damua]) VALUES (59, N'a1', 1, 107, 0)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'abc', N'123', 0)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'dencan', N'111', 1)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'nhha', N'2ezur0ziU1o=', 1)
INSERT [dbo].[DangNhap] ([TenDangNhap], [MatKhau], [Quyen]) VALUES (N'nhha76', N'J2A461dUG8UKL/8XBhus3g==', 1)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a1', N'Nike Air Force 1 ''07', 181, 200, N'originals', N'35 EU', N'img/product4/1.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'The radiance lives on in the Nike Air Force 1 ''07, the basketball original that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', 5100)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a10', N'Nike Phantom Luna', 30, 150, N'BongDa', N'36 EU', N'img/product4/2.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'Step into the dawn of a new day and put the globe on notice about your skills. A flashy iridescent plate, futuristic graphic and vibrant colours resembling a gradient sunrise speak to the gravitational power of the women''s game, a fully fledged force capable of uniting us on and off the pitch. We used insights from female athletes to give you a traction pattern that helps you play quickly and with confidence—which every footballer needs. It helps you make precision cuts when the game''s intensity heats up with national pride on the line.', 4023)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a11', N'Nike G.T. Jump 2 EP', 20, 300, N'BongRo', N'44 EU', N'img/product4/3.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'How high do you want to fly? Get off the ground quicker in a design that helps you hover and hold your own in the air when the action goes vertical. If you''re a shooter trying to add lift to your jump, a skyscraper hoping to float among the stars or a ground-bound beast trying to beat your opponent to that rebound off the rim, this shoe can add an element of explosiveness to your game. The bounce is unlike anything you''ve felt before and the landing is cushioned, helping you spring back skywards once you hit the ground. With its extra-durable rubber outsole, this version gives you traction for outdoor courts.', 1017)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a12', N'Nike Invincible 3', 10, 250, N'Chay', N'38 EU', N'img/product4/4.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'With maximum cushioning to support every mile, the Invincible 3 gives you our highest level of comfort underfoot to help you stay on your feet today, tomorrow and beyond. Designed to help keep you on the run, it''s super supportive and bouncy, so that you can propel down your preferred path and come back for your next run feeling ready and reinvigorated.', 1261)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a13', N'Nike Air More Uptempo', 30, 150, N'dep', N'39 EU', N'img/product4/5.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'More than perhaps any other silhouette, the Air More Uptempo encapsulates ''90s basketball flavour at its finest. Big and loud, the unapologetic design represents a hybrid of style and innovation that made major waves when it debuted—and still turns heads today. This crafted take keeps its colours subtle with neutrals and pops of Metallic Silver. The iconic AIR graphic comes in high-contrast white for a little extra off-court flair. After all, "a little extra" is what these shoes do best.', 2514)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a14', N'Nike SB Ishod Wair', 36, 200, N'Essentials', N'40 EU', N'img/product4/6.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'When it came time to build his signature shoe, Ishod Wair was all-in from start to finish.Infused with elements taken from the iconic hoops shoes of the ''90s, (did you know that basketball was Ishod''s first love?) and built with all the durability you need to skate hard—seriously, check out that new cupsole—the Nike SB Ishod Wair walks the line between original style and modern skate innovation.', 1907)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a15', N'Nike Zoom Fly 5', 50, 150, N'NgoaiTroi', N'41 EU', N'img/product4/11.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'Bridge the gap between your weekend training run and race day in a durable design that can be deployed not just at the starting line of your favourite race but in the days and months after your conquest. It offers comfort and reliability but with a propulsive sensation that''ll help you feel fast and fresh. That kind of versatility is uncommon in the running arena. But who said you can''t have it all?', 1809)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a16', N'Nike Metcon 9 AMP', 24, 299, N'SportSwear', N'39 EU', N'img/product4/12.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'Whatever your "why" is for working out, the Metcon 9 makes it all worth it. We improved on the 8 with a larger Hyperlift plate and added rubber rope wrap. Intended for lifters, trainers and go-getters, some of the greatest athletes in the world swear by it, and it''s still the gold standard that delivers day after day.', 1763)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a17', N'Nike Metcon 9', 140, 399, N'TapLuyen', N'38 EU', N'img/product4/9.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'Whatever your "why" is for working out, the Metcon 9 makes it all worth it. We improved on the 8 with a larger Hyperlift plate and added rubber rope wrap. Intended for lifters, trainers and go-getters, some of the greatest athletes in the world swear by it, and it''s still the gold standard that delivers day after day.', 1507)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a2', N'NikeCourt Zoom Vapor Rafa', 181, 199, N'QuanVot', N'36 EU', N'img/product4/10.png', CAST(N'2023-07-30 00:00:00.000' AS DateTime), N'Innovated to withstand your toughest matches, this updated design puts flexible, durable materials exactly where they''re needed most. Signature Rafael Nadal details let you rep your favourite player while you run the court.', 1502)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a3', N'Nike Air VaporMax 2023 Flyknit', 181, 500, N'originals', N'36 EU', N'img/product4/13.png', CAST(N'2023-08-02 00:00:00.000' AS DateTime), N'Have you ever walked on Air? Step into the Air VaporMax 2023 to see how it''s done. The innovative tech is revealed through the perforated sockliner (pull it out to see more). The stretchy Flyknit upper is made from at least 20% recycled content by weight.', 1401)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a4', N'Nike Air Max SC', 200, 100, N'originals', N'35 EU', N'img/product4/14.png', CAST(N'2023-08-02 00:00:00.000' AS DateTime), N'With its easy-going lines, heritage athletics look and, of course, visible Air cushioning, the Nike Air Max SC is the perfect finish to any outfit. The rich mixture of materials adds depth while making it a durable and lightweight shoe for everyday wear.', 1002)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a5', N'Nike Air Max Plus III', 40, 600, N'originals', N'42 EU', N'img/product4/15.png', CAST(N'2023-08-02 00:00:00.000' AS DateTime), N'The Nike Air Max Plus III combines ultra-comfortable Tuned Air Technology with an energetic silhouette made famous by its predecessors.The III updates the look with TPU details fused to the upper while paying homage to the iconic colour fade.', 1247)
INSERT [dbo].[giay] ([magiay], [tengiay], [soluong], [gia], [maloai], [size], [anh], [ngaynhap], [tieude], [soluotxem]) VALUES (N'a6', N'Nike Air Max 97', 100, 450, N'originals', N'43 EU', N'img/product4/16.png', CAST(N'2023-08-02 00:00:00.000' AS DateTime), N'Sleek. Stylish. Simple. The Air Max 97''s water-inspired design flows whether you''re out for a run or a night on the town. Full-length Nike Air cushioning lets you ride in performance comfort.', 903)
SET IDENTITY_INSERT [dbo].[giaysize] ON 

INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (1, N'a1', N'size36')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (2, N'a1', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (3, N'a1', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (4, N'a1', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (5, N'a1', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (6, N'a1', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (7, N'a1', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (8, N'a1', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (10, N'a2', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (11, N'a2', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (12, N'a2', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (13, N'a2', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (14, N'a2', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (15, N'a2', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (16, N'a2', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (18, N'a3', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (19, N'a3', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (20, N'a3', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (21, N'a3', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (22, N'a3', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (23, N'a3', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (24, N'a3', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (26, N'a4', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (27, N'a4', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (28, N'a4', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (29, N'a4', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (30, N'a4', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (31, N'a4', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (32, N'a4', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (34, N'a5', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (35, N'a5', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (36, N'a5', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (37, N'a5', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (38, N'a5', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (39, N'a5', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (40, N'a5', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (42, N'a6', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (43, N'a6', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (44, N'a6', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (45, N'a6', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (46, N'a6', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (47, N'a6', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (48, N'a6', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (50, N'a10', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (51, N'a10', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (52, N'a10', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (53, N'a10', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (54, N'a10', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (55, N'a10', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (56, N'a10', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (58, N'a11', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (59, N'a11', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (60, N'a11', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (61, N'a11', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (62, N'a11', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (63, N'a11', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (64, N'a11', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (65, N'a12', N'size36')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (66, N'a12', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (67, N'a12', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (68, N'a12', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (69, N'a12', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (70, N'a12', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (71, N'a12', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (72, N'a12', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (73, N'a13', N'size36')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (74, N'a13', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (75, N'a13', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (76, N'a13', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (77, N'a13', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (78, N'a13', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (79, N'a13', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (80, N'a13', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (81, N'a14', N'size36')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (82, N'a14', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (83, N'a14', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (84, N'a14', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (85, N'a14', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (86, N'a14', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (87, N'a14', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (88, N'a14', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (89, N'a15', N'size36')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (90, N'a15', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (91, N'a15', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (92, N'a15', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (93, N'a15', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (94, N'a15', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (95, N'a15', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (96, N'a15', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (97, N'a16', N'size36')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (98, N'a16', N'size37')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (99, N'a16', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (100, N'a16', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (101, N'a16', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (102, N'a16', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (103, N'a16', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (104, N'a16', N'size43')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (105, N'a17', N'size36')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (106, N'a17', N'size37')
GO
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (107, N'a17', N'size38')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (108, N'a17', N'size39')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (109, N'a17', N'size40')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (110, N'a17', N'size41')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (111, N'a17', N'size42')
INSERT [dbo].[giaysize] ([id], [magiay], [masize]) VALUES (112, N'a17', N'size43')
SET IDENTITY_INSERT [dbo].[giaysize] OFF
SET IDENTITY_INSERT [dbo].[hoadon] ON 

INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (1, 2, CAST(N'1894-07-07 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (2, 2, CAST(N'1905-06-14 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (3, 2, CAST(N'1905-06-14 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (4, 2, CAST(N'1905-06-14 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (5, 2, CAST(N'1905-06-13 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (6, 2, CAST(N'1905-06-13 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (7, 2, CAST(N'1905-06-24 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (8, 2, CAST(N'2020-06-14 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (44, 36, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (54, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (55, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (56, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (57, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (58, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (59, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (60, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (61, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (62, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (63, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (64, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (65, 37, CAST(N'2023-07-27 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (87, 38, CAST(N'2023-07-28 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (88, 38, CAST(N'2023-07-28 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (89, 1, CAST(N'2023-07-28 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (90, 3, CAST(N'2023-08-10 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (91, 3, CAST(N'2023-08-10 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (92, 3, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (93, 3, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (94, 3, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (95, 3, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (96, 44, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (97, 3, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (98, 3, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (99, 3, CAST(N'2023-08-11 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (100, 3, CAST(N'2023-08-13 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (101, 3, CAST(N'2023-08-17 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (102, 3, CAST(N'2023-08-17 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (103, 3, CAST(N'2023-08-17 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (104, 45, CAST(N'2023-08-18 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (105, 3, CAST(N'2023-08-18 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (106, 3, CAST(N'2023-08-19 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[hoadon] ([mahoadon], [makh], [ngaymua], [damua]) VALUES (107, 3, CAST(N'2023-08-19 00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[hoadon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (1, N'nhatson', N'20doanduhai', N'0935901491', N'nhatson247@gmail.com', N'nhatson', N'nhatson')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (2, N'kawai', N'20lengocat', N'0935900111', N'kawai@gmail.com', N'kawai', N'kawai')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (3, N'Nhật Sơn', N'20Babyblue', N'19001024', N'son247@gmail.com', N'123', N'123')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (36, N'Thu Uyên', N'bà triệu', N'1900', N'thuuyen@gmail.com', N'thuuyen', N'thuuyen')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (37, N'Thư Hoàng', N'bà triệu', N'19191919', N'thuhoang@gmail.com', N'thuhoang', N'thuhoang')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (38, N'Anh Kiệt', N'huế mộng mơ', N'19001000', N'anhkiet123@gmail.com', N'anhkiet', N'anhkiet')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (39, N'linh', N'linh', N'12344444', N'linh@gmail.com', N'linh', N'linh')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (41, N'1', N'1', N'1', N'1233@gmail.com', N'1', N'1')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (42, N'kiki', N'kiki', N'1010', N'kiki@gmail.com', N'kiki', N'1')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (43, N'Khánh Bẹo', N'20 Đoàn Nhữ Hải TP huế', N'123123123', N'n247@gmail.com', N'beo', N'beo')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (44, N'10diem', N'10diem', N'1000', N'nhatson247@ail.com', N'10diem', N'10diem')
INSERT [dbo].[KhachHang] ([makh], [hoten], [diachi], [sodt], [email], [tendn], [pass]) VALUES (45, N'Trâm Bao', N'11 Hàm Nghi', N'1232131231', N'TB@gmail.com', N'trambao', N'trambao')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'BongDa', N'Bóng Đá')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'BongRo', N'Bóng Rổ')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Chay', N'Chạy')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'dep', N'Dép')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'Essentials', N'Essentials')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'NgoaiTroi', N'Ngoài Trời')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'originals', N'Originals')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'QuanVot', N'Quần Vợt')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'SportSwear', N'SportSwear')
INSERT [dbo].[loai] ([maloai], [tenloai]) VALUES (N'TapLuyen', N'Tập Luyện')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size36', N'36')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size37', N'37')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size38', N'38')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size39', N'39')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size40 ', N'40')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size41', N'41')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size42', N'42')
INSERT [dbo].[size] ([masize], [size]) VALUES (N'size43', N'43')
ALTER TABLE [dbo].[bangdanhgia]  WITH CHECK ADD  CONSTRAINT [FK_bangdanhgia_giay] FOREIGN KEY([magiay])
REFERENCES [dbo].[giay] ([magiay])
GO
ALTER TABLE [dbo].[bangdanhgia] CHECK CONSTRAINT [FK_bangdanhgia_giay]
GO
ALTER TABLE [dbo].[bangdanhgia]  WITH CHECK ADD  CONSTRAINT [FK_bangdanhgia_KhachHang] FOREIGN KEY([makh])
REFERENCES [dbo].[KhachHang] ([makh])
GO
ALTER TABLE [dbo].[bangdanhgia] CHECK CONSTRAINT [FK_bangdanhgia_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_hoadon] FOREIGN KEY([mahoadon])
REFERENCES [dbo].[hoadon] ([mahoadon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_hoadon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_sach] FOREIGN KEY([magiay])
REFERENCES [dbo].[giay] ([magiay])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_sach]
GO
ALTER TABLE [dbo].[giay]  WITH CHECK ADD  CONSTRAINT [FK_sach_loai] FOREIGN KEY([maloai])
REFERENCES [dbo].[loai] ([maloai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[giay] CHECK CONSTRAINT [FK_sach_loai]
GO
ALTER TABLE [dbo].[giaysize]  WITH CHECK ADD  CONSTRAINT [FK_giaysize_giay] FOREIGN KEY([magiay])
REFERENCES [dbo].[giay] ([magiay])
GO
ALTER TABLE [dbo].[giaysize] CHECK CONSTRAINT [FK_giaysize_giay]
GO
ALTER TABLE [dbo].[giaysize]  WITH CHECK ADD  CONSTRAINT [FK_giaysize_size] FOREIGN KEY([masize])
REFERENCES [dbo].[size] ([masize])
GO
ALTER TABLE [dbo].[giaysize] CHECK CONSTRAINT [FK_giaysize_size]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_KhachHang] FOREIGN KEY([makh])
REFERENCES [dbo].[KhachHang] ([makh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_hoadon_KhachHang]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[23] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 95
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'abc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'abc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HtSach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'HtSach'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 95
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 0
               Left = 588
               Bottom = 119
               Right = 748
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rrr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rrr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'rrr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[37] 2[1] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 2505
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'tk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'tk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 95
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 96
               Left = 434
               Bottom = 215
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vabcd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vabcd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vabcd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "giay"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VAdminXacNhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VAdminXacNhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[30] 4[37] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 240
               Bottom = 125
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 0
               Left = 445
               Bottom = 119
               Right = 605
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 4
               Left = 31
               Bottom = 123
               Right = 191
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vhoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vhoadon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 170
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "giay"
            Begin Extent = 
               Top = 7
               Left = 774
               Bottom = 170
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2628
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VLichSuMuaHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'       Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VLichSuMuaHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VLichSuMuaHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 95
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 5
               Left = 580
               Bottom = 124
               Right = 740
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vqq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vqq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vqq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -172
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 114
               Left = 236
               Bottom = 233
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 126
               Left = 434
               Bottom = 245
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTamBay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTamBay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTamBay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[14] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 125
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 245
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[23] 4[43] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[19] 4[43] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "loai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sach"
            Begin Extent = 
               Top = 0
               Left = 244
               Bottom = 119
               Right = 404
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 16
               Left = 547
               Bottom = 135
               Right = 707
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 96
               Left = 38
               Bottom = 215
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 97
               Left = 439
               Bottom = 216
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Ta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTKabc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ble = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTKabc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VTKabc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[30] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sach"
            Begin Extent = 
               Top = 0
               Left = 206
               Bottom = 119
               Right = 366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "loai"
            Begin Extent = 
               Top = 2
               Left = 535
               Bottom = 91
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "hoadon"
            Begin Extent = 
               Top = 47
               Left = 375
               Bottom = 166
               Right = 535
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 36
               Left = 0
               Bottom = 155
               Right = 160
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KhachHang"
            Begin Extent = 
               Top = 96
               Left = 573
               Bottom = 215
               Right = 733
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtktest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtktest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Vtktest'
GO
