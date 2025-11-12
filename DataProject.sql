INSERT INTO [dbo].[Users]([name],[email],[password],[phone],[address],[role])
VALUES
('Admin1','admin1@gmail.com','admin123','999999999','VietNam','Admin'),
('Admin2','admin2@gmail.com','admin456','999999999','VietNam','Admin'),
('Pham Duc Minh','minhpd123@gmail.com','123456','0829698987',Null,'User'),
('Kiet Ha Doan','kiethd123@gmail.com','123456','069696969',Null,'User'),
('Hoang Minh Tu','tuhm123@gmail.com','123456','036363636','Thach That','User'),
('Hong Thai','thaihp123@gmail.com','123456','018181818',Null,'User');


INSERT INTO [dbo].[Factories](factoryName)
VALUES ('ASUS'),('LENOVO'),('GIGABYTE'),
	('MAC'),('ACER'),('MSI'),('DELL');

INSERT INTO [dbo].[Products]([productName],[price],[quantity],[image],[specs],[description],[factoryID],[discount])
VALUES
-- ASUS (factoryID = 1)
('ASUS VivoBook 15', 17800000, 10, 'asus_vivobook15.jpg',
'Man hinh: 15.6", Full HD (1920 x 1080) <br> CPU: Ryzen 5 7520U, 2.80 GHz (Len den 4.30 GHz khi tai nang)
<br> Card: Radeon <br> Chat lieu: Vo nhua <br> Khoi luong: 1.63 kg',
'ASUS VivoBook 15 la mau laptop phu hop cho sinh vien va dan van phong, thiet ke gon nhe, hieu nang on dinh cho hoc tap va lam viec hang ngay.',
1, 15),

('ASUS TUF Gaming F15', 18900000, 8, 'asus_tufgamingf15.jpg',
'Man hinh: 16", Full HD+, 144Hz <br> CPU: Core i5-210H, 2.20 GHz (Len den 4.80 GHz khi tai nang)
<br> Card: RTX 3050 6GB <br> Chat lieu: Vo nhua - nap lung bang kim loai <br> Khoi luong: 2.2 kg',
'ASUS TUF Gaming F15 mang den hieu nang manh me cho game thu voi man hinh 144Hz muot ma, card RTX 3050 va thiet ke ben bi dat chuan quan doi.',
1, 0),

('ASUS VivoBook 16', 19500000, 5, 'asus_vivobook16.jpg',
'Man hinh: 16", WUXGA (1920 x 1200), 144Hz <br> CPU: i5-13420H, 2.10 GHz (Len den 4.60 GHz khi tai nang)
<br> Card: RTX 3050 4GB <br> Chat lieu: Vo nhua - nap lung bang kim loai <br> Khoi luong: 1.8 kg',
'ASUS VivoBook 16 gay an tuong voi man hinh lon 16 inch vien mong, hieu nang khoe va phu hop cho lam viec da nhiem, hoc tap va giai tri.',
1, 0),


-- LENOVO (factoryID = 2)
('Lenovo IdeaPad 3', 15000000, 12, 'lenovo_ideapad3.jpg',
'Man hinh: 15.3", WUXGA (1920 x 1200) <br> CPU: i5-13420H, 2.10 GHz (Len den 4.60 GHz khi tai nang)
<br> Card: Intel UHD <br> Chat lieu: Vo nhua - nap lung bang kim loai <br> Khoi luong: 1.63 kg',
'Lenovo IdeaPad 3 la dong laptop pho thong huong den hoc sinh, sinh vien va nguoi dung van phong, voi thiet ke mong nhe va thoi luong pin tot.',
2, 10),

('Lenovo Gaming LOQ', 20900000, 6, 'lenovo_gamingloq.jpg',
'Man hinh: 15.6", Full HD (1920 x 1080), 144Hz <br> CPU: i5-12450HX, Len den 4.40 GHz khi tai nang
<br> Card: RTX 3050 6GB <br> Chat lieu: Vo nhua <br> Khoi luong: 1.77 kg',
'Lenovo Gaming LOQ mang lai hieu nang choi game manh voi RTX 3050, he thong tan nhiet tot va ban phim toi uu cho game thu.',
2, 0),

('Lenovo Legion 5', 12000000, 7, 'lenovo_legion5.jpg',
'Man hinh: 14", Full HD (1920 x 1080) <br> CPU: Ryzen 5 7520U, 2.80 GHz (Len den 4.30 GHz khi tai nang)
<br> Card: Radeon <br> Chat lieu: Vo nhua <br> Khoi luong: 1.37 kg',
'Lenovo Legion 5 la mau laptop gon nhe nhung manh me, phu hop cho nguoi dung can hieu nang do hoa va game nhe.',
2, 0),


-- GIGABYTE (factoryID = 3)
('Gigabyte G5 Gaming', 21700000, 9, 'gigabyte_g5gaming.jpg',
'Man hinh: 15.6", Full HD (1920 x 1080), 144Hz <br> CPU: i5-13500H, 2.60 GHz (Len den 4.70 GHz khi tai nang)
<br> Card: RTX 4050 6GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.115 kg',
'Gigabyte G5 Gaming duoc trang bi RTX 4050 manh me, phu hop cho game AAA va lam do hoa, render voi muc gia hap dan trong phan khuc.',
3, 5),

('Gigabyte A16', 23390000, 3, 'gigabyte_a16.jpg',
'Man hinh: 16", WUXGA (1920 x 1200), 165Hz <br> CPU: i5-13420H, 2.10 GHz (Len den 4.60 GHz khi tai nang)
<br> Card: RTX 4050 6GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.2 kg',
'Gigabyte A16 so huu man hinh lon 16 inch tan so quet 165Hz, rat phu hop cho lap trinh vien, nha sang tao noi dung va game thu.',
3, 0),

('Gigabyte AORUS 15', 24000000, 6, 'gigabyte_aorus15.jpg',
'Man hinh: 16", WUXGA (1920 x 1200), 165Hz <br> CPU: i7-13620H, 2.40 GHz (Len den 4.90 GHz khi tai nang)
<br> Card: RTX 4050 6GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.292 kg',
'Gigabyte AORUS 15 thuoc phan khuc gaming cao cap, hieu nang vuot troi voi Core i7 he thu 13 va RTX 4050, trai nghiem choi game cuc ky muot ma.',
3, 0),

-- ASUS (factoryID = 1)
('ASUS ROG Strix G16', 41900000, 5, 'asus_rog_strix_g16.jpg',
'Man hinh: 16", WQXGA (2560 x 1600), 165Hz <br> CPU: Intel Core i7-13700H, up to 5.0 GHz <br> Card: RTX 4060 8GB <br> Chat lieu: Vo nhua - nap kim loai <br> Khoi luong: 2.3 kg',
'ROG Strix G16 danh cho game thu can hieu nang cao va man hinh chat luong. He thong tan nhiet toi uu cho cac phien choi dai. Thiet ke ham ho, nhieu cong ket noi.', 
1, 8),

('ASUS ZenBook 14', 27900000, 7, 'asus_zenbook_14.jpg',
'Man hinh: 14", Full HD (1920 x 1080), 60Hz <br> CPU: Intel Core i5-1240P, up to 4.4 GHz <br> Card: Intel Iris Xe <br> Chat lieu: Kim loai <br> Khoi luong: 1.17 kg',
'ZenBook 14 mong nhe, phu hop lam viec di dong va van phong. Thoi luong pin tot cho ca ngay lam viec. Hoan thien cao cap, phu hop cho nguoi can tinh tham my.', 
1, 0),

('ASUS VivoBook S15', 15900000, 10, 'asus_vivobook_s15.jpg',
'Man hinh: 15.6", Full HD (1920 x 1080) <br> CPU: Ryzen 5 7530U, up to 4.0 GHz <br> Card: Radeon Graphics <br> Chat lieu: Vo nhua <br> Khoi luong: 1.65 kg',
'VivoBook S15 la lua chon pho thong cho sinh vien va van phong. Hieu nang du cho da nhiem va hoc tap. Gia hop ly, thiet ke tre trung.', 
1, 0),

('ASUS TUF Gaming A15', 23900000, 6, 'asus_tuf_gaming_a15.jpg',
'Man hinh: 15.6", Full HD, 144Hz <br> CPU: AMD Ryzen 7 7840HS, up to 5.1 GHz <br> Card: RTX 4060 8GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.4 kg',
'TUF A15 ben bi va manh me cho game nang. He thong lam mat hieu qua, toi uu hieu nang lau dai. Phu hop game thu can hieu nang/gia can bang.', 
1, 0),

('ASUS ProArt StudioBook', 45900000, 3, 'asus_proart_studiobook.jpg',
'Man hinh: 16", WUXGA (1920 x 1200), 120Hz <br> CPU: Intel Core i9-12900H, up to 5.0 GHz <br> Card: RTX 4070 8GB <br> Chat lieu: Kim loai <br> Khoi luong: 2.1 kg',
'ProArt StudioBook huong toi creator va designer chuyen nghiep. Man hinh chuan mau va hieu nang render tot. Build chac chan, cong ket noi day du cho workflow.', 
1, 0),

-- LENOVO (factoryID = 2)
('Lenovo IdeaPad 1', 10900000, 12, 'lenovo_ideapad_1.jpg',
'Man hinh: 14", HD (1366 x 768) <br> CPU: Intel Celeron N4500 <br> Card: Intel <br> Chat lieu: Vo nhua <br> Khoi luong: 1.5 kg',
'IdeaPad 1 phu hop nguoi dung can mot may co ban de luot web va soan thao. Nhe va de mang theo. Gia rat hop tui tien.', 
2, 20),

('Lenovo Yoga Slim 7', 29900000, 5, 'lenovo_yoga_slim_7.jpg',
'Man hinh: 14", Full HD (1920 x 1080), 60Hz <br> CPU: AMD Ryzen 7 7840U, up to 4.3 GHz <br> Card: Integrated <br> Chat lieu: Kim loai <br> Khoi luong: 1.35 kg',
'Yoga Slim 7 mong nhe, danh cho nguoi lam sang tao va doanh nhan. Hieu nang on dinh cho cong viec va giai tri. Thoi luong pin tot.', 
2, 0),

('Lenovo Legion 7', 47900000, 4, 'lenovo_legion_7.jpg',
'Man hinh: 16", QHD (2560 x 1600), 165Hz <br> CPU: AMD Ryzen 9 7945HX, up to 5.3 GHz <br> Card: RTX 4080 12GB <br> Chat lieu: Kim loai <br> Khoi luong: 2.5 kg',
'Legion 7 cho trai nghiem choi game cao cap voi cau hinh manh. Man hinh sac net, tan so quet cao. He thong tan nhiet tot cho tai nang.', 
2, 0),

('Lenovo IdeaPadGaming3', 19900000, 8, 'lenovo_ideapad_gaming_3.jpg',
'Man hinh: 15.6", Full HD, 120Hz <br> CPU: Intel Core i5-12450H <br> Card: RTX 3050 4GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.1 kg',
'IdeaPad Gaming 3 la option tam trung cho game thu moi choi. Hieu nang du chien cac tua game esports. Gia hop ly, de nang cap RAM/SSD.', 
2, 0),

('Lenovo ThinkPadX1Carbon', 55900000, 2, 'lenovo_thinkpad_x1_carbon.jpg',
'Man hinh: 14", UHD (3840 x 2160) option <br> CPU: Intel Core i7-1260P <br> Card: Integrated <br> Chat lieu: Carbon-Fiber <br> Khoi luong: 1.1 kg',
'ThinkPad X1 Carbon phu hop doanh nhan can may nhe, ben va an toan. Ban phim tot, build cao cap. Tich hop nhieu tinh nang bao mat doanh nghiep.', 
2, 0),

-- GIGABYTE (factoryID = 3)
('Gigabyte AERO16', 42900000, 3, 'gigabyte_aero_16.jpg',
'Man hinh: 16", 3K (2880 x 1800), 120Hz <br> CPU: Intel Core i9-12900H <br> Card: RTX 4070 8GB <br> Chat lieu: Kim loai <br> Khoi luong: 2.2 kg',
'AERO 16 thiet ke cho creator chuyen nghiep, man hinh chuan mau. Hieu nang render va dung video manh me. Build chac va cong ket noi da dang.', 
3, 0),

('Gigabyte G7', 24900000, 6, 'gigabyte_g7.jpg',
'Man hinh: 16", Full HD, 144Hz <br> CPU: Intel Core i7-13700H <br> Card: RTX 4060 8GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.3 kg',
'G7 la laptop gaming tam trung voi hieu nang tot cho game AAA. Man hinh 144Hz cho trai nghiem muot. Thiet ke huong performance.', 
3, 0),

('Gigabyte G5', 19900000, 9, 'gigabyte_g5.jpg',
'Man hinh: 15.6", Full HD, 144Hz <br> CPU: Intel Core i5-13500H <br> Card: RTX 4050 6GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.1 kg',
'G5 phu hop game thu can hieu nang tot o muc gia vua phai. Thoi luong pin trung binh, de nang cap. Build on cho gaming lau dai.', 
3, 0),

('Gigabyte AORUS17', 65900000, 2, 'gigabyte_aorus_17.jpg',
'Man hinh: 17.3", QHD, 240Hz <br> CPU: Intel Core i9-13900HX <br> Card: RTX 4090 16GB <br> Chat lieu: Kim loai <br> Khoi luong: 3.2 kg',
'AORUS 17 la may gaming cao cap cho nguoi choi hardcore. Cau hinh manh me, tan nhiet hang dau. Phu hop streamer va nguoi sang tao noi dung nang.', 
3, 12),

('Gigabyte AERO15', 34900000, 4, 'gigabyte_aero_15.jpg',
'Man hinh: 15.6", 4K AMOLED option <br> CPU: Intel Core i7-12700H <br> Card: RTX 3070 8GB <br> Chat lieu: Kim loai <br> Khoi luong: 1.9 kg',
'AERO 15 toi uu cho designer va photographer can mau chinh xac. Manh ve do hoa, nhe dang so voi cau hinh. Thiet ke thanh lich, chuyen nghiep.', 
3, 0),

-- MAC (factoryID = 4)
('Apple MacBookAirM1', 23900000, 10, 'macbook_air_m1.jpg',
'Man hinh: 13.3", Retina (2560 x 1600) <br> CPU: Apple M1 <br> Card: Apple Integrated <br> Chat lieu: Nhôm <br> Khoi luong: 1.29 kg',
'MacBook Air M1 mong nhe va rat tiet kiem pin. Hieu nang du cho hau het cong viec van phong va lap trinh nhe. He sinh thai macOS muot ma, it loi.', 
4, 15),

('Apple MacPro14 M2Pro', 68900000, 3, 'macbook_pro_14_m2_pro.jpg',
'Man hinh: 14", Liquid Retina XDR <br> CPU: Apple M2 Pro <br> Card: Apple Integrated <br> Chat lieu: Nhôm <br> Khoi luong: 1.6 kg',
'MacBook Pro 14 M2 Pro danh cho creator chuyen nghiep can render va dung phim. Hieu nang CPU/GPU manh me, quan ly nhiet tot. Man hinh xuat sac cho mau sac chinh xac.', 
4, 0),

('Apple MacPro16 M2Max', 129000000, 1, 'macbook_pro_16_m2_max.jpg',
'Man hinh: 16", Liquid Retina XDR <br> CPU: Apple M2 Max <br> Card: Apple Integrated <br> Chat lieu: Nhôm <br> Khoi luong: 2.1 kg',
'MacBook Pro 16 M2 Max la may hieu nang cuc cao cho do hoa va dung phim chuyen nghiep. Pin tot, nhieu cong ket noi khi can. Build cao cap, toi uu cho cong viec nang.', 
4, 0),

('Apple MacBook AirM2', 31900000, 4, 'macbook_air_m2.jpg',
'Man hinh: 13.6", Liquid Retina <br> CPU: Apple M2 <br> Card: Apple Integrated <br> Chat lieu: Nhôm <br> Khoi luong: 1.24 kg',
'MacBook Air M2 nhe, mong va hieu nang cai tien so voi M1. Rat phu hop cho sinh vien va nguoi lam sang tao noi dung nhe. Thiet ke hien dai, thoi luong pin dai.', 
4, 0),

-- ACER (factoryID = 5)
('Acer Aspire5', 11900000, 15, 'acer_aspire_5.jpg',
'Man hinh: 15.6", Full HD (1920 x 1080) <br> CPU: Intel Core i3-1215U <br> Card: Integrated <br> Chat lieu: Vo nhua <br> Khoi luong: 1.8 kg',
'Aspire 5 phu hop hoc sinh, sinh vien can may lam bai va giai tri co ban. Gia re, bao tri de dang. Thoi luong pin chap nhan duoc cho nhu cau co ban.', 
5, 25),

('Acer Swift3', 17900000, 8, 'acer_swift_3.jpg',
'Man hinh: 14", Full HD <br> CPU: AMD Ryzen 7 7840U <br> Card: Integrated <br> Chat lieu: Kim loai <br> Khoi luong: 1.2 kg',
'Swift 3 mong nhe, hieu nang on cho cong viec van phong va lap trinh. Thiet ke thanh lich, de mang theo. Pin tot cho ca ngay lam viec.', 
5, 0),

('Acer Nitro16', 22900000, 6, 'acer_nitro_16.jpg',
'Man hinh: 16", Full HD, 165Hz <br> CPU: Intel Core i7-13620H <br> Card: RTX 4050 6GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.4 kg',
'Nitro 16 la lua chon gaming tam trung voi cau hinh manh. Tan nhiet on, phu hop game thu can hieu nang/gia can doi. Thiet ke the thao, nhieu tuy chon nang cap.', 
5, 0),

('Acer Predator Helios', 32900000, 3, 'acer_predator_helios.jpg',
'Man hinh: 15.6", QHD, 240Hz <br> CPU: Intel Core i9-12900HX <br> Card: RTX 4070 8GB <br> Chat lieu: Kim loai <br> Khoi luong: 2.7 kg',
'Predator Helios danh cho game thu can hieu nang cao va tan nhiet manh. Man hinh tan so lon, phu hop choi competitive va AAA. Build chac va nhieu tinh nang cho gaming.', 
5, 0),

-- MSI (factoryID = 6)
('MSI Modern14', 13900000, 9, 'msi_modern_14.jpg',
'Man hinh: 14", Full HD <br> CPU: Intel Core i5-1235U <br> Card: Integrated <br> Chat lieu: Kim loai <br> Khoi luong: 1.3 kg',
'MSI Modern 14 phu hop dan van phong va creator nhe. Thiet ke toi gian, hieu nang on cho da nhiem. Thoi luong pin du cho cong viec di dong.', 
6, 0),

('MSI Katana15', 21900000, 7, 'msi_katana_15.jpg',
'Man hinh: 15.6", Full HD, 144Hz <br> CPU: Intel Core i7-13620H <br> Card: RTX 4060 8GB <br> Chat lieu: Vo nhua <br> Khoi luong: 2.2 kg',
'Katana 15 la may gaming tam trung manh me. Trong luong vua phai, cau hinh can bang cho choi game lan lam viec. Gia/hieu nang hap dan.', 
6, 0),

('MSI Stealth16', 47900000, 2, 'msi_stealth_16.jpg',
'Man hinh: 16", QHD, 165Hz <br> CPU: Intel Core i9-13900H <br> Card: RTX 4080 12GB <br> Chat lieu: Kim loai <br> Khoi luong: 2.0 kg',
'Stealth 16 huong toi nguoi dung can may manh nhung van mong nhe. Hieu nang cao cho game va sang tao noi dung. Thiet ke sang trong, nhieu tinh nang cao cap.', 
6, 35),

('MSI CreatorZ16', 55900000, 2, 'msi_creator_z16.jpg',
'Man hinh: 16", QHD+ (2560 x 1600) <br> CPU: Intel Core i9-13980HX <br> Card: RTX 4080 <br> Chat lieu: Kim loai <br> Khoi luong: 2.6 kg',
'Creator Z16 la lua chon cho nha sang tao noi dung chuyen nghiep. Man hinh chuan mau, hieu nang xu ly video/3D tot. Build chac, nhieu cong ket noi chuyen nghiep.', 
6, 0),

-- DELL (factoryID = 7)
('Dell Inspiron15', 12900000, 14, 'dell_inspiron_15.jpg',
'Man hinh: 15.6", Full HD <br> CPU: Intel Core i5-1235U <br> Card: Integrated <br> Chat lieu: Vo nhua <br> Khoi luong: 1.9 kg',
'Inspiron 15 phu hop nhu cau van phong va hoc tap. Gia de tiep can, cau hinh can doi. Bao hanh rong rai va de sua chua.', 
7, 0),

('Dell XPS13', 42900000, 4, 'dell_xps_13.jpg',
'Man hinh: 13.4", Full HD+ (1920 x 1200) <br> CPU: Intel Core i7-1250U <br> Card: Integrated <br> Chat lieu: Kim loai <br> Khoi luong: 1.2 kg',
'XPS 13 noi bat voi vien man hinh mong va thiet ke cao cap. Phu hop dan van phong va developer can may di dong. Hieu nang on va build tinh te.', 
7, 0),

('Dell G15', 21900000, 6, 'dell_g15.jpg',
'Man hinh: 15.6", Full HD, 120Hz <br> CPU: AMD Ryzen 7 6800H <br> Card: RTX 3050 Ti <br> Chat lieu: Vo nhua <br> Khoi luong: 2.5 kg',
'G15 la laptop gaming pho thong voi hieu nang on dinh. Ban phim tot cho choi game dai. De nang cap RAM va storage.', 
7, 18),

('Dell Precision5570', 69900000, 2, 'dell_precision_5570.jpg',
'Man hinh: 16", 3K (3072 x 1920) <br> CPU: Intel Core i9-12900HK <br> Card: RTX A2000 <br> Chat lieu: Kim loai <br> Khoi luong: 2.0 kg',
'Precision 5570 danh cho workstation di dong chuyen nghiep. Hieu nang render va xu ly CAD tot. Build ben, trang bi cho cong viec chuyen sau.', 
7, 0);
INSERT INTO [dbo].[Orders]([userID], [orderDate], [total], [status])
VALUES
-- Đơn hàng 1: Phạm Đức Minh (UserID=3) - Đã hoàn thành (3)
-- Tổng tiền: 49,160,000
(3, DATEADD(DAY, -10, GETDATE()), 49160000.00, 3), 

-- Đơn hàng 2: Kiệt Hà Đoàn (UserID=4) - Đang giao hàng (3)
-- Tổng tiền: 34,115,000
(4, DATEADD(DAY, -5, GETDATE()), 34115000.00, 3), 

-- Đơn hàng 3: Hoàng Minh Tú (UserID=5) - Đang chờ xử lý (1)
-- Tổng tiền: 45,000,000
(5, GETDATE(), 45000000.00, 1), 

-- Đơn hàng 4: Minh - Đang giao (3)
(3, DATEADD(DAY, -8, GETDATE()), 40840000.00, 3),

-- Đơn hàng 5: Kiệt - Xác nhận thành công (2)
(4, DATEADD(DAY, -6, GETDATE()), 33520000.00, 2),

-- Đơn hàng 6: Tú - Chờ xác nhận (1)
(5, DATEADD(DAY, -4, GETDATE()), 23900000.00, 1),

-- Đơn hàng 7: Minh - Xác nhận thành công (2)
(3, DATEADD(DAY, -3, GETDATE()), 15130000.00, 2),

-- Đơn hàng 8: Kiệt - Đang giao (3)
(4, DATEADD(DAY, -2, GETDATE()), 27900000.00, 3),

-- Đơn hàng 9: Tú - Chờ xác nhận (1) - Thêm một đơn HỦY để có ví dụ
(5, DATEADD(DAY, -1, GETDATE()), 34115000.00, 4), 

-- Đơn hàng 10: Minh - Xác nhận thành công (2)
(3, GETDATE(), 56155000.00, 2),

-- Đơn hàng 11: Kiệt - Đã giao hàng thành công (3)
(4, GETDATE(), 49900000.00, 3),

-- Đơn hàng 12: Tú - Đang giao (3)
(5, GETDATE(), 11900000.00, 3),

-- Đơn hàng 13: Minh - Chờ xác nhận (1)
(3, GETDATE(), 24900000.00, 1);

INSERT INTO [dbo].[OrderDetails]([orderID], [productID], [price], [quantity])
VALUES
-- Chi tiết Đơn hàng 1 (orderID=1, Total: 49,160,000)
(1, 1, 15130000.00, 2),
(1, 2, 18900000.00, 1),

-- Chi tiết Đơn hàng 2 (orderID=2, Total: 34,115,000)
(2, 4, 13500000.00, 1),
(2, 7, 20615000.00, 1),

-- Chi tiết Đơn hàng 3 (orderID=3, Total: 45,000,000)
(3, 4, 15000000.00, 3),

-- Chi tiết Đơn hàng 4 (orderID=4, Total: 40,840,000)
(4, 3, 19500000.00, 1), 
(4, 9, 21340000.00, 1), 

-- Đơn hàng 5 (orderID=5, Total: 33,520,000)
(5, 22, 20315000.00, 1), 
(5, 11, 13205000.00, 1), 

-- Đơn hàng 6 (orderID=6, Total: 23,900,000)
(6, 12, 23900000.00, 1), 

-- Đơn hàng 7 (orderID=7, Total: 15,130,000)
(7, 1, 15130000.00, 1), 

-- Đơn hàng 8 (orderID=8, Total: 27,900,000)
(8, 10, 27900000.00, 1), 

-- Đơn hàng 9 (orderID=9, Total: 34,115,000)
(9, 4, 13500000.00, 1), 
(9, 7, 20615000.00, 1), 

-- Đơn hàng 10 (orderID=10, Total: 56,155,000)
(10, 33, 31135000.00, 1), 
(10, 36, 25020000.00, 1), 

-- Đơn hàng 11 (orderID=11, Total: 49,900,000)
(11, 18, 47900000.00, 1), 
(11, 3, 2000000.00, 1), 

-- Đơn hàng 12 (orderID=12, Total: 11,900,000)
(12, 26, 8925000.00, 1),
(12, 35, 2975000.00, 1), 

-- Đơn hàng 13 (orderID=13, Total: 24,900,000)
(13, 29, 24900000.00, 1);
