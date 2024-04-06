
CREATE TABLE Khoa (
  MaKhoa INT NOT NULL,
  TenKhoa VARCHAR(255) NOT NULL,
  PRIMARY KEY (MaKhoa)
);


CREATE TABLE BoMon (
  MaBoMon INT NOT NULL,
  TenBoMon VARCHAR(255) NOT NULL,
  MaKhoa INT,
  FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa),
  PRIMARY KEY (MaBoMon)
);


CREATE TABLE SinhVien (
  MaSinhVien INT NOT NULL,
  HoTen VARCHAR(255) NOT NULL,
  NamNhapHoc INT,
  PRIMARY KEY (MaSinhVien)
);


CREATE TABLE NganhHoc (
  MaNganh INT NOT NULL,
  TenNganh VARCHAR(255) NOT NULL,
  MaBoMon INT,
  FOREIGN KEY (MaBoMon) REFERENCES BoMon(MaBoMon),
  PRIMARY KEY (MaNganh)
);


CREATE TABLE SinhVien_NganhHoc (
  MaSinhVien INT,
  MaNganh INT,
  NgayDangKy DATE,
  FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien),
  FOREIGN KEY (MaNganh) REFERENCES NganhHoc(MaNganh)
);


CREATE TABLE MonHoc (
  MaMon INT NOT NULL,
  TenMon VARCHAR(255) NOT NULL,
  SoTinChi INT,
  MaNganh INT,
  FOREIGN KEY (MaNganh) REFERENCES NganhHoc(MaNganh),
  PRIMARY KEY (MaMon)
);


CREATE TABLE SinhVien_MonHoc (
  MaSinhVien INT,
  MaMon INT,
  DiemChuyenCan FLOAT,
  DiemGiuaKy FLOAT,
  DiemCuoiKy FLOAT,
  FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien),
  FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon)
);
