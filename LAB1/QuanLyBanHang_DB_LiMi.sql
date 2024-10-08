CREATE DATABASE QuanLyBanHang_DB
USE QuanLyBanHang_DB

CREATE TABLE KHACHHANG
(
	MAKH CHAR(4),
	HOTEN VARCHAR(40),
	DCHI VARCHAR(50),
	SODT VARCHAR(20),
	NGSINH SMALLDATETIME,
	DOANHSO MONEY,
	NGDK SMALLDATETIME,
);

CREATE TABLE NHANVIEN
(
	MANV CHAR(4),
	HOTEN VARCHAR(40),
	SODT VARCHAR(20),
	NGVL SMALLDATETIME,
);

CREATE TABLE SANPHAM
(
	MASP CHAR(4),
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY,
)

CREATE TABLE HOADON
(
	SOHD INT,
	NGHD SMALLDATETIME,
	MAKH CHAR(4),
	MANV CHAR(4),
	TRIGIA MONEY,
);

CREATE TABLE CTHD
(
	SOHD INT,
	MASP CHAR(4),
	SL INT,
);

----------PRIMARY KEYS----------
ALTER TABLE KHACHHANG ADD CONSTRAINT PK_KHACHHANG PRIMARY KEY(MAKH);
ALTER TABLE NHANVIEN ADD CONSTRAINT PK_NHANVIEN PRIMARY KEY(MANV);
ALTER TABLE SANPHAM ADD CONSTRAINT PK_SANPHAM PRIMARY KEY(MASP);
ALTER TABLE HOADON ADD CONSTRAINT PK_HOADON PRIMARY KEY(SOHD);
ALTER TABLE CTHD ADD CONSTRAINT PK_CTHD PRIMARY KEY(SOHD, MASP);

----------FOREIGN KEYS ----------
ALTER TABLE HOADON ADD CONSTRAINT FK_HOADON_KHACHHANG FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH);
ALTER TABLE HOADON ADD CONSTRAINT FK_HOADON_NHANVIEN FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV);
ALTER TABLE CTHD ADD CONSTRAINT FK_CTHD_HOADON FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD);
ALTER TABLE CTHD ADD CONSTRAINT FK_CTHD_SANPHAM FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP);

---------INSERT KHACHHANG----------
SET DATEFORMAT DMY;
INSERT INTO KHACHHANG VALUES ('KH01','Nguyen Van A', '731 Tran Hung Dao, Q5, TpHCM', '08823451', '1960/10/22','13,060,000','2006/07/22')
INSERT INTO KHACHHANG VALUES ('KH02','Tran Ngoc Han', '23/5 Nguyen Trai, Q5, TpHCM', '0908256478', '3/4/1974','280,000','30/07/2006')
INSERT INTO KHACHHANG VALUES ('KH03', 'Tran Ngoc Linh', '45 Nguyen Canh Chan, Q1, TpHCM', '0938776266', '12/6/1980', '3,860,000', '05/08/2006')
INSERT INTO KHACHHANG VALUES ('KH04','Tran Minh Long', '50/34 Le Dai Hanh, Q10, TpHCM', '0917325476', '9/3/1965', '250,000', '02/10/2006')
INSERT INTO KHACHHANG VALUES ('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM', '08246108','10/3/1950','21,000', '28/10/2006')
INSERT INTO KHACHHANG VALUES ('KH06','Le Hoai Thuong', '227 Nguyen Van Cu, Q5, TpHCM', '08631738', '31/12/1981', '915,000', '24/11/2006')
INSERT INTO KHACHHANG VALUES ('KH07','Nguyen Van Tam', '32/3 Tran Binh Trong, Q5, TpHCM', '0916783565' ,'6/4/1971', '12,500' ,'01/12/2006')
INSERT INTO KHACHHANG VALUES ('KH08','Phan Thi Thanh', '45/2 An Duong Vuong, Q5, TpHCM', '0938435756', '10/1/1971', '365,000', '13/12/2006')
INSERT INTO KHACHHANG VALUES ('KH09','Le Ha Vinh', '873 Le Hong Phong, Q5, TpHCM', '08654763' ,'3/9/1979' ,'70,000' ,'14/01/2007')
INSERT INTO KHACHHANG VALUES ('KH10','Ha Duy Lap', '34/34B Nguyen Trai, Q1, TpHCM', '08768904', '2/5/1983' ,'67,500' ,'16/01/2007')

---------INSERT NHANVIEN-----------
INSERT INTO NHANVIEN VALUES ('NV01', 'Nguyen Nhu Nhut', '0927345678' ,'13/4/2006')
INSERT INTO NHANVIEN VALUES ('NV02', 'Le Thi Phi Yen', '0987567390' ,'21/4/2006')
INSERT INTO NHANVIEN VALUES ('NV03', 'Nguyen Van B', '0997047382' ,'27/4/2006')
INSERT INTO NHANVIEN VALUES ('NV04', 'Ngo Thanh Tuan' ,'0913758498', '24/6/2006')
INSERT INTO NHANVIEN VALUES ('NV05', 'Nguyen Thi Truc Thanh' ,'0918590387' ,'20/7/2006')

---------INSERT SANPHAM--------
INSERT INTO SANPHAM VALUES ('BC01', 'But chi','cay','Singapore', '3,000')
INSERT INTO SANPHAM VALUES ('BC02', 'But chi','cay','Singapore' ,'5,000')
INSERT INTO SANPHAM VALUES ('BC03', 'But chi','cay','Viet Nam' ,'3,500')
INSERT INTO SANPHAM VALUES ('BC04', 'But chi','hop', 'Viet Nam', '30,000')
INSERT INTO SANPHAM VALUES ('BB01', 'But bi','cay','Viet Nam', '5,000')
INSERT INTO SANPHAM VALUES ('BB02', 'But bi','cay','Trung Quoc' ,'7,000')
INSERT INTO SANPHAM VALUES ('BB03', 'But bi','hop','Thai Lan', '100,000')
INSERT INTO SANPHAM VALUES ('TV01', 'Tap 100 giay mong','quyen','Trung Quoc','2,500')
INSERT INTO SANPHAM VALUES ('TV02', 'Tap 200 giay mong','quyen','Trung Quoc','4,500')
INSERT INTO SANPHAM VALUES ('TV03', 'Tap 100 giay tot','quyen','Viet Nam','3,000')
INSERT INTO SANPHAM VALUES ('TV04', 'Tap 200 giay tot','quyen','Viet Nam','5,500')
INSERT INTO SANPHAM VALUES ('TV05', 'Tap 100 trang','chuc','Viet Nam','23,000')
INSERT INTO SANPHAM VALUES ('TV06', 'Tap 200 trang','chuc','Viet Nam','53,000')
INSERT INTO SANPHAM VALUES ('TV07', 'Tap 100 trang', 'chuc','Trung Quoc', '34,000')
INSERT INTO SANPHAM VALUES ('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc', '40,000')
INSERT INTO SANPHAM VALUES ('ST02', 'So tay loai 1','quyen','Viet Nam','55,000')
INSERT INTO SANPHAM VALUES ('ST03', 'So tay loai 2','quyen','Viet Nam','51,000')
INSERT INTO SANPHAM VALUES ('ST04', 'So tay', 'quyen','Thai Lan', '55,000')
INSERT INTO SANPHAM VALUES ('ST05', 'So tay mong', 'quyen', 'Thai Lan', '20,000')
INSERT INTO SANPHAM VALUES ('ST06', 'Phan viet bang','hop','Viet Nam', '5,000')
INSERT INTO SANPHAM VALUES ('ST07', 'Phan khong bui','hop','Viet Nam ','7,000')
INSERT INTO SANPHAM VALUES ('ST08', 'Bong bang', 'cai', 'Viet Nam', '1,000')
INSERT INTO SANPHAM VALUES ('ST09', 'But long','cay','Viet Nam', '5,000')
INSERT INTO SANPHAM VALUES ('ST10', 'But long','cay','Trung Quoc','7,000')

---------INSERT HOADON----------
INSERT INTO HOADON VALUES ('1001', '23/07/2006', 'KH01', 'NV01', '320,000')
INSERT INTO HOADON VALUES ('1002', '12/08/2006', 'KH01', 'NV02', '840,000')
INSERT INTO HOADON VALUES ('1003', '23/08/2006', 'KH02', 'NV01', '100,000')
INSERT INTO HOADON VALUES ('1004', '01/09/2006', 'KH02', 'NV01', '180,000')
INSERT INTO HOADON VALUES ('1005', '20/10/2006', 'KH01', 'NV02', '3,800,000')
INSERT INTO HOADON VALUES ('1006', '16/10/2006', 'KH01', 'NV03', '2,430,000')
INSERT INTO HOADON VALUES ('1007', '28/10/2006', 'KH03', 'NV03', '510,000')
INSERT INTO HOADON VALUES ('1008', '28/10/2006', 'KH01', 'NV03', '440,000')
INSERT INTO HOADON VALUES ('1009', '28/10/2006', 'KH03', 'NV04', '200,000')
INSERT INTO HOADON VALUES ('1010', '01/11/2006', 'KH01', 'NV01', '5,200,000')
INSERT INTO HOADON VALUES ('1011', '04/11/2006', 'KH04', 'NV03', '250,000')
INSERT INTO HOADON VALUES ('1012', '30/11/2006', 'KH05', 'NV03', '21,000')
INSERT INTO HOADON VALUES ('1013', '12/12/2006', 'KH06', 'NV01', '5,000')
INSERT INTO HOADON VALUES ('1014', '31/12/2006', 'KH03', 'NV02', '3,150,000')
INSERT INTO HOADON VALUES ('1015', '01/01/2007', 'KH06', 'NV01', '910,000')
INSERT INTO HOADON VALUES ('1016', '01/01/2007', 'KH07', 'NV02', '12,500')
INSERT INTO HOADON VALUES ('1017', '02/01/2007', 'KH08', 'NV03', '35,000')
INSERT INTO HOADON VALUES ('1018', '13/01/2007', 'KH08', 'NV03', '330,000')
INSERT INTO HOADON VALUES ('1019', '13/01/2007', 'KH01', 'NV03', '30,000')
INSERT INTO HOADON VALUES ('1020', '14/01/2007', 'KH09', 'NV04', '70,000')
INSERT INTO HOADON VALUES ('1021', '16/01/2007', 'KH10', 'NV03', '67,500')
INSERT INTO HOADON VALUES ('1022', '16/01/2007', Null, 'NV03', '7,000')
INSERT INTO HOADON VALUES ('1023', '17/01/2007', Null, 'NV01', '330,000')

---------INSERT CTHD------------
INSERT INTO CTHD VALUES('1001','TV02','10')
INSERT INTO CTHD VALUES('1001','ST01','5')
INSERT INTO CTHD VALUES('1001','BC01','5')
INSERT INTO CTHD VALUES('1001','BC02','10')
INSERT INTO CTHD VALUES('1001','ST08','10')
INSERT INTO CTHD VALUES('1002','BC04','20')
INSERT INTO CTHD VALUES('1002','BB01','20')
INSERT INTO CTHD VALUES('1002','BB02','20')
INSERT INTO CTHD VALUES('1003','BB03','10')
INSERT INTO CTHD VALUES('1004','TV01','20')
INSERT INTO CTHD VALUES('1004','TV02','10')
INSERT INTO CTHD VALUES('1004','TV03','10')
INSERT INTO CTHD VALUES('1004','TV04','10')
INSERT INTO CTHD VALUES('1005','TV05','50')
INSERT INTO CTHD VALUES('1005','TV06','50')
INSERT INTO CTHD VALUES('1006','TV07','20')
INSERT INTO CTHD VALUES('1006','ST01','30')
INSERT INTO CTHD VALUES('1006','ST02','10')
INSERT INTO CTHD VALUES('1007','ST03','10')
INSERT INTO CTHD VALUES('1008','ST04','8')
INSERT INTO CTHD VALUES('1009','ST05','10')
INSERT INTO CTHD VALUES('1010','TV07','50')
INSERT INTO CTHD VALUES('1010','ST07','50')
INSERT INTO CTHD VALUES('1010','ST08','100')
INSERT INTO CTHD VALUES('1010','ST04','50')
INSERT INTO CTHD VALUES('1010','TV03','100')
INSERT INTO CTHD VALUES('1011','ST06','50')
INSERT INTO CTHD VALUES('1012','ST07','3')
INSERT INTO CTHD VALUES('1013','ST08','5')
INSERT INTO CTHD VALUES('1014','BC02','80')
INSERT INTO CTHD VALUES('1014','BB02','100')
INSERT INTO CTHD VALUES('1014','BC04','60')
INSERT INTO CTHD VALUES('1014','BB01','50')
INSERT INTO CTHD VALUES('1015','BB02','30')
INSERT INTO CTHD VALUES('1015','BB03','7')
INSERT INTO CTHD VALUES('1016','TV01','5')
INSERT INTO CTHD VALUES('1017','TV02','1')
INSERT INTO CTHD VALUES('1017','TV03','1')
INSERT INTO CTHD VALUES('1017','TV04','5')
INSERT INTO CTHD VALUES('1018','ST04','6')
INSERT INTO CTHD VALUES('1019','ST05','1')
INSERT INTO CTHD VALUES('1019','ST06','2')
INSERT INTO CTHD VALUES('1020','ST07','10')
INSERT INTO CTHD VALUES('1021','ST08','5')
INSERT INTO CTHD VALUES('1021','TV01','7')
INSERT INTO CTHD VALUES('1021','TV02','10')
INSERT INTO CTHD VALUES('1022','ST07','1')
INSERT INTO CTHD VALUES('1023','ST04','6') 