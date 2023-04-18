create database QuanLyBanHang;
use QuanLyBanHang;
create table PhieuXuat(
	SoPX int primary key auto_increment,
    NgayXuat datetime
);
create table VatTu(
	MaVTu int primary key auto_increment,
    TenVTu varchar(255)
);
create table PhieuNhap(
	SoPN int primary key auto_increment,
    NgayNhap datetime
);
create table DonDH(
	SoDH int primary key auto_increment,
    NgayDH datetime
);
create table NhaCC(
	MaNCC int primary key auto_increment,
    TenNCC varchar(255),
    DiaChi varchar(255),
    Sdt varchar(10)
);
create table ChiTietPX(
	DGXuat float,
    SLXuat int,
    SoPX int,
    MaVTU int,
    foreign key (SoPX) references PhieuXuat (SoPX),
    foreign key (MaVTU) references VatTu(MaVTu)
);
create table ChiTietPN(
	DGNhap float,
    SLNhap int,
    MaVTu int,
    SoPN int,
    foreign key (MaVtu) references VatTu (MaVTu),
    foreign key (SoPN) references PhieuNhap(SoPN)
);
create table ChiTietDonDH(
	MaVTu int ,
    SoDH int,
    foreign key (MaVTu) references VatTu (MaVTu),
    foreign key (SoDH) references DonDH (SoDH)
);
create table CungCap(
	SoDH int,
    MaNCC int,
    foreign key (SoDH) references DonDH (SoDH),
	foreign key (MaNCC) references NhaCC (MaNCC)
);
 ALTER TABLE CungCap DROP FOREIGN KEY cungcap_ibfk_1;
 alter table ChiTietPX add primary key (SoPX ,MaVTU );
 alter table ChiTietPN add primary key (MaVTu, SoPN);
 alter table ChiTietDonDH add primary key(MaVTu,SoDH);
 
 create table CungCap(
	SoDH int primary key,
    MaNCC int,
    foreign key (SoDH) references DonDH (SoDH),
	foreign key (MaNCC) references NhaCC (MaNCC)
);
alter table ChiTietDonDH drop primary key;
drop table ChiTietDonDH;
create table ChiTietDonDH(
	MaVTu int ,
    SoDH int,
    primary key(MaVTu,SoDH),
    foreign key (MaVTu) references VatTu (MaVTu),
    foreign key (SoDH) references DonDH (SoDH)
);
 

  
 
 









