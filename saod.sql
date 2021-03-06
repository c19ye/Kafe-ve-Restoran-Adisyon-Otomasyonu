USE [saod]
GO
/****** Object:  Table [dbo].[adisyonlar]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adisyonlar](
	[ID] [int] NOT NULL,
	[servisturno] [int] NULL,
	[personelid] [int] NULL,
	[masaid] [int] NULL,
	[tarih] [datetime] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_adisyonlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hesapödeme]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hesapödeme](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adisyonid] [int] NULL,
	[ödemeturid] [int] NULL,
	[musteriid] [int] NULL,
	[aratoplam] [money] NULL,
	[kdvtutar] [money] NULL,
	[indirim] [money] NULL,
	[toplamtutar] [money] NULL,
	[tarih] [datetime] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_hesapödeme] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategoriler]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kategoriadi] [nvarchar](50) NULL,
	[aciklama] [text] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_kategoriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masalar]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masalar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kapasite] [int] NULL,
	[servisturu] [int] NULL,
	[durum] [int] NULL,
	[onay] [bit] NULL,
 CONSTRAINT [PK_masalar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[masasip]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[masasip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[urun] [nvarchar](50) NOT NULL,
	[fiyat] [int] NOT NULL,
	[masaid] [int] NOT NULL,
	[tarih] [date] NOT NULL,
	[urunid] [int] NULL,
	[ödemetur] [nvarchar](50) NULL,
 CONSTRAINT [PK_masasip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[müşteriler]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[müşteriler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
	[siparissayisi] [int] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_müşteriler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ödemeturleri]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ödemeturleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ödemeturu] [nvarchar](50) NULL,
	[aciklama] [text] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_ödemeturleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paket]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[musteriid] [int] NULL,
	[adisyonid] [int] NULL,
	[odemeturid] [int] NULL,
	[aciklama] [text] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_paket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personeldurumları]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personeldurumları](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[personelid] [int] NULL,
	[islem] [nvarchar](50) NULL,
	[tarih] [datetime] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_personeldurumları] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personelingörevi]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personelingörevi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[görev] [nvarchar](50) NULL,
	[aciklama] [text] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_personelingörevi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personeller]    Script Date: 21.06.2019 16:25:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personeller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gorevid] [int] NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[parola] [nvarchar](50) NULL,
	[kullaniciadi] [nvarchar](50) NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_personeller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rezervasyon]    Script Date: 21.06.2019 16:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rezervasyon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[masaid] [int] NULL,
	[kisisayisi] [int] NULL,
	[musteriadsoyad] [nvarchar](50) NULL,
	[tarih] [date] NULL,
 CONSTRAINT [PK_rezervasyon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servisturu]    Script Date: 21.06.2019 16:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servisturu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[servisadi] [nvarchar](50) NULL,
	[aciklama] [text] NULL,
 CONSTRAINT [PK_servisturu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ürünler]    Script Date: 21.06.2019 16:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ürünler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kategoriid] [int] NULL,
	[urunadi] [nvarchar](50) NULL,
	[fiyat] [money] NULL,
	[aciklama] [text] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_ürünler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yapilansatis]    Script Date: 21.06.2019 16:25:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yapilansatis](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[adisyonid] [int] NULL,
	[urunid] [int] NULL,
	[masaid] [int] NULL,
	[adet] [int] NULL,
	[durum] [bit] NULL,
 CONSTRAINT [PK_yapilansatis] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[kategoriler] ON 

INSERT [dbo].[kategoriler] ([ID], [kategoriadi], [aciklama], [durum]) VALUES (1, N'Soğuk İçecek', NULL, 0)
INSERT [dbo].[kategoriler] ([ID], [kategoriadi], [aciklama], [durum]) VALUES (2, N'Sıcak İçecek', NULL, 0)
INSERT [dbo].[kategoriler] ([ID], [kategoriadi], [aciklama], [durum]) VALUES (3, N'Yiyecek', NULL, 0)
INSERT [dbo].[kategoriler] ([ID], [kategoriadi], [aciklama], [durum]) VALUES (4, N'Tatlı', NULL, 0)
INSERT [dbo].[kategoriler] ([ID], [kategoriadi], [aciklama], [durum]) VALUES (5, N'Aperatif', NULL, 0)
INSERT [dbo].[kategoriler] ([ID], [kategoriadi], [aciklama], [durum]) VALUES (6, N'Ekstra', NULL, 0)
SET IDENTITY_INSERT [dbo].[kategoriler] OFF
SET IDENTITY_INSERT [dbo].[masalar] ON 

INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (1, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (2, 2, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (3, 3, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (4, 4, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (5, 5, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (6, 6, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (7, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (8, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (9, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (10, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (11, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (12, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (13, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (14, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (15, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (16, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (17, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (18, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (19, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (20, 1, 1, 0, 0)
INSERT [dbo].[masalar] ([ID], [kapasite], [servisturu], [durum], [onay]) VALUES (21, 1, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[masalar] OFF
SET IDENTITY_INSERT [dbo].[masasip] ON 

INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (64, N'Kola', 5, 0, CAST(N'2019-05-29' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (65, N'Kola', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (66, N'Kola', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (67, N'Kola', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (68, N'Kola', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (69, N'Sprite', 3, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (70, N'Sprite', 3, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (71, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (72, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (73, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (74, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (75, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (76, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (77, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (78, N'Su Böregi', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (79, N'Kola', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (80, N'Limonata', 5, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (81, N'Sprite', 3, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (82, N'Ayran', 2, 0, CAST(N'2019-05-30' AS Date), NULL, NULL)
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (83, N'Patates Kızart.', 10, 0, CAST(N'2019-05-30' AS Date), NULL, N'Kredi Kartı')
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (84, N'Fanta', 3, 0, CAST(N'2019-05-30' AS Date), NULL, N'Yemek Kartı')
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (85, N'Sprite', 3, 0, CAST(N'2019-05-30' AS Date), NULL, N'Yemek Kartı')
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (86, N'Portakal S.', 8, 0, CAST(N'2019-05-30' AS Date), NULL, N'Yemek Kartı')
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (87, N'Sprite', 3, 0, CAST(N'2019-05-30' AS Date), NULL, N'Kredi Kartı')
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (88, N'Çay', 3, 0, CAST(N'2019-05-31' AS Date), NULL, N'')
INSERT [dbo].[masasip] ([Id], [urun], [fiyat], [masaid], [tarih], [urunid], [ödemetur]) VALUES (89, N'Tiramisu', 5, 0, CAST(N'2019-05-31' AS Date), NULL, N'')
SET IDENTITY_INSERT [dbo].[masasip] OFF
SET IDENTITY_INSERT [dbo].[personelingörevi] ON 

INSERT [dbo].[personelingörevi] ([ID], [görev], [aciklama], [durum]) VALUES (4, N'Yönetici', N'Yönetici', 0)
INSERT [dbo].[personelingörevi] ([ID], [görev], [aciklama], [durum]) VALUES (5, N'Kasiyer', N'Kasiyer', 0)
INSERT [dbo].[personelingörevi] ([ID], [görev], [aciklama], [durum]) VALUES (6, N'Garson', N'Garson', 0)
SET IDENTITY_INSERT [dbo].[personelingörevi] OFF
SET IDENTITY_INSERT [dbo].[personeller] ON 

INSERT [dbo].[personeller] ([id], [gorevid], [ad], [soyad], [parola], [kullaniciadi], [durum]) VALUES (1006, 4, N'a', N'b', N'123', N'abc', 0)
INSERT [dbo].[personeller] ([id], [gorevid], [ad], [soyad], [parola], [kullaniciadi], [durum]) VALUES (1007, 5, N'c', N'd', N'123', N'cd', 0)
INSERT [dbo].[personeller] ([id], [gorevid], [ad], [soyad], [parola], [kullaniciadi], [durum]) VALUES (1008, 6, N'e', N'f', N'123', N'ef', 0)
SET IDENTITY_INSERT [dbo].[personeller] OFF
SET IDENTITY_INSERT [dbo].[rezervasyon] ON 

INSERT [dbo].[rezervasyon] ([ID], [masaid], [kisisayisi], [musteriadsoyad], [tarih]) VALUES (14, 10, 3, N'Yunus', CAST(N'2019-06-14' AS Date))
INSERT [dbo].[rezervasyon] ([ID], [masaid], [kisisayisi], [musteriadsoyad], [tarih]) VALUES (16, 5, 3, N'Emre', CAST(N'2019-07-04' AS Date))
SET IDENTITY_INSERT [dbo].[rezervasyon] OFF
SET IDENTITY_INSERT [dbo].[ürünler] ON 

INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (1, 1, N'Kola', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2, 2, N'Çay', 3.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (3, 3, N'Patates Kızart.', 10.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (6, 6, N'Beyaz Peynir', 3.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2002, 5, N'Pogaca', 2.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2003, 1, N'Fanta', 3.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2004, 1, N'Ice tea', 3.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2005, 1, N'Limonata', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2006, 1, N'Sprite', 3.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2007, 1, N'Ayran', 2.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2008, 1, N'Portakal S.', 8.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2010, 1, N'Soda', 2.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2011, 2, N'Bitki Cayi', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2012, 2, N'Sicak Su', 1.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2013, 2, N'Sahlep', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2014, 2, N'Sicak çikolata', 8.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2015, 2, N'Oralet', 3.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2016, 2, N'Büyük Cay', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2017, 2, N'Kahve Cesit', 10.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2018, 3, N'Tost', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2019, 3, N'Tavuk', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2020, 3, N'Et', 7.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2021, 3, N'Dürüm', 8.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2022, 3, N'Pide', 12.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2023, 3, N'Balik', 7.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2024, 4, N'Tiramisu', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2025, 4, N'Sütlac', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2026, 4, N'Kazandibi', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2027, 4, N'Yas Pasta', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2028, 4, N'Dilim Pasta', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2029, 4, N'Tralice', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2030, 4, N'Güllac', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2031, 5, N'Su Böregi', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2032, 5, N'Kete', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2033, 5, N'Simit', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2034, 5, N'Acma', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2035, 5, N'Kesme', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2036, 5, N'Sandvic', 5.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2037, 6, N'Bal', 1.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2038, 6, N'Zeytin', 1.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2039, 6, N'Recel', 1.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2040, 6, N'Yumurta', 1.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2041, 6, N'Domates', 1.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2042, 6, N'Krem Peynir', 1.0000, NULL, 0)
INSERT [dbo].[ürünler] ([ID], [kategoriid], [urunadi], [fiyat], [aciklama], [durum]) VALUES (2043, 6, N'Salatalık', 1.0000, NULL, 0)
SET IDENTITY_INSERT [dbo].[ürünler] OFF
ALTER TABLE [dbo].[adisyonlar] ADD  CONSTRAINT [DF_adisyonlar_id]  DEFAULT ((0)) FOR [ID]
GO
ALTER TABLE [dbo].[adisyonlar] ADD  CONSTRAINT [DF_adisyonlar_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[hesapödeme] ADD  CONSTRAINT [DF_hesapödeme_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[kategoriler] ADD  CONSTRAINT [DF_kategoriler_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[masalar] ADD  CONSTRAINT [DF_masalar_durum]  DEFAULT ((1)) FOR [durum]
GO
ALTER TABLE [dbo].[masalar] ADD  CONSTRAINT [DF_masalar_onay]  DEFAULT ((0)) FOR [onay]
GO
ALTER TABLE [dbo].[masasip] ADD  CONSTRAINT [DF_YourTable]  DEFAULT (getdate()) FOR [tarih]
GO
ALTER TABLE [dbo].[müşteriler] ADD  CONSTRAINT [DF_müşteriler_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[ödemeturleri] ADD  CONSTRAINT [DF_ödemeturleri_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[paket] ADD  CONSTRAINT [DF_paket_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[personeldurumları] ADD  CONSTRAINT [DF_personeldurumları_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[personelingörevi] ADD  CONSTRAINT [DF_personelingörevi_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[personeller] ADD  CONSTRAINT [DF_personeller_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[ürünler] ADD  CONSTRAINT [DF_ürünler_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[yapilansatis] ADD  CONSTRAINT [DF_yapilansatis_durum]  DEFAULT ((0)) FOR [durum]
GO
ALTER TABLE [dbo].[adisyonlar]  WITH CHECK ADD  CONSTRAINT [FK_adisyonlar_personeller] FOREIGN KEY([personelid])
REFERENCES [dbo].[personeller] ([id])
GO
ALTER TABLE [dbo].[adisyonlar] CHECK CONSTRAINT [FK_adisyonlar_personeller]
GO
ALTER TABLE [dbo].[adisyonlar]  WITH CHECK ADD  CONSTRAINT [FK_adisyonlar_servisturu] FOREIGN KEY([servisturno])
REFERENCES [dbo].[servisturu] ([ID])
GO
ALTER TABLE [dbo].[adisyonlar] CHECK CONSTRAINT [FK_adisyonlar_servisturu]
GO
ALTER TABLE [dbo].[hesapödeme]  WITH CHECK ADD  CONSTRAINT [FK_hesapödeme_adisyonlar] FOREIGN KEY([adisyonid])
REFERENCES [dbo].[adisyonlar] ([ID])
GO
ALTER TABLE [dbo].[hesapödeme] CHECK CONSTRAINT [FK_hesapödeme_adisyonlar]
GO
ALTER TABLE [dbo].[hesapödeme]  WITH CHECK ADD  CONSTRAINT [FK_hesapödeme_müşteriler] FOREIGN KEY([musteriid])
REFERENCES [dbo].[müşteriler] ([ID])
GO
ALTER TABLE [dbo].[hesapödeme] CHECK CONSTRAINT [FK_hesapödeme_müşteriler]
GO
ALTER TABLE [dbo].[hesapödeme]  WITH CHECK ADD  CONSTRAINT [FK_hesapödeme_ödemeturleri] FOREIGN KEY([ödemeturid])
REFERENCES [dbo].[ödemeturleri] ([ID])
GO
ALTER TABLE [dbo].[hesapödeme] CHECK CONSTRAINT [FK_hesapödeme_ödemeturleri]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_adisyonlar] FOREIGN KEY([adisyonid])
REFERENCES [dbo].[adisyonlar] ([ID])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_adisyonlar]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_müşteriler] FOREIGN KEY([musteriid])
REFERENCES [dbo].[müşteriler] ([ID])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_müşteriler]
GO
ALTER TABLE [dbo].[paket]  WITH CHECK ADD  CONSTRAINT [FK_paket_ödemeturleri] FOREIGN KEY([odemeturid])
REFERENCES [dbo].[ödemeturleri] ([ID])
GO
ALTER TABLE [dbo].[paket] CHECK CONSTRAINT [FK_paket_ödemeturleri]
GO
ALTER TABLE [dbo].[personeldurumları]  WITH CHECK ADD  CONSTRAINT [FK_personeldurumları_personeller] FOREIGN KEY([personelid])
REFERENCES [dbo].[personeller] ([id])
GO
ALTER TABLE [dbo].[personeldurumları] CHECK CONSTRAINT [FK_personeldurumları_personeller]
GO
ALTER TABLE [dbo].[personeller]  WITH CHECK ADD  CONSTRAINT [FK_personeller_personelingörevi] FOREIGN KEY([gorevid])
REFERENCES [dbo].[personelingörevi] ([ID])
GO
ALTER TABLE [dbo].[personeller] CHECK CONSTRAINT [FK_personeller_personelingörevi]
GO
ALTER TABLE [dbo].[rezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_rezervasyon_masalar] FOREIGN KEY([masaid])
REFERENCES [dbo].[masalar] ([ID])
GO
ALTER TABLE [dbo].[rezervasyon] CHECK CONSTRAINT [FK_rezervasyon_masalar]
GO
ALTER TABLE [dbo].[ürünler]  WITH CHECK ADD  CONSTRAINT [FK_ürünler_kategoriler] FOREIGN KEY([kategoriid])
REFERENCES [dbo].[kategoriler] ([ID])
GO
ALTER TABLE [dbo].[ürünler] CHECK CONSTRAINT [FK_ürünler_kategoriler]
GO
ALTER TABLE [dbo].[yapilansatis]  WITH CHECK ADD  CONSTRAINT [FK_yapilansatis_masalar] FOREIGN KEY([masaid])
REFERENCES [dbo].[masalar] ([ID])
GO
ALTER TABLE [dbo].[yapilansatis] CHECK CONSTRAINT [FK_yapilansatis_masalar]
GO
ALTER TABLE [dbo].[yapilansatis]  WITH CHECK ADD  CONSTRAINT [FK_yapilansatis_rezervasyon] FOREIGN KEY([adisyonid])
REFERENCES [dbo].[rezervasyon] ([ID])
GO
ALTER TABLE [dbo].[yapilansatis] CHECK CONSTRAINT [FK_yapilansatis_rezervasyon]
GO
ALTER TABLE [dbo].[yapilansatis]  WITH CHECK ADD  CONSTRAINT [FK_yapilansatis_ürünler] FOREIGN KEY([urunid])
REFERENCES [dbo].[ürünler] ([ID])
GO
ALTER TABLE [dbo].[yapilansatis] CHECK CONSTRAINT [FK_yapilansatis_ürünler]
GO
