
INSERT INTO Khoa (MaKhoa, TenKhoa) VALUES
(1, 'Khoa 1'),
(2, 'Khoa 2'),
(3, 'Khoa 3'),
(4, 'Khoa 4'),
(5, 'Khoa 5');


INSERT INTO BoMon (MaBoMon, TenBoMon, MaKhoa) VALUES
(1, 'Bo Mon 1', 1),
(2, 'Bo Mon 2', 1),
(3, 'Bo Mon 3', 2),
(4, 'Bo Mon 4', 2),
(5, 'Bo Mon 5', 3);


INSERT INTO SinhVien (MaSinhVien, HoTen, NamNhapHoc) VALUES
(1, 'Sinh Vien 1', 2020),
(2, 'Sinh Vien 2', 2021),
(3, 'Sinh Vien 3', 2019),
(4, 'Sinh Vien 4', 2020),
(5, 'Sinh Vien 5', 2021);


INSERT INTO NganhHoc (MaNganh, TenNganh, MaBoMon) VALUES
(1, 'Nganh 1', 1),
(2, 'Nganh 2', 1),
(3, 'Nganh 3', 2),
(4, 'Nganh 4', 2),
(5, 'Nganh 5', 3);


INSERT INTO SinhVien_NganhHoc (MaSinhVien, MaNganh, NgayDangKy) VALUES
(1, 1, '2023-01-01'),
(2, 2, '2023-02-01'),
(3, 3, '2023-03-01'),
(4, 4, '2023-04-01'),
(5, 5, '2023-05-01');


INSERT INTO MonHoc (MaMon, TenMon, SoTinChi, MaNganh) VALUES
(1, 'Mon 1', 3, 1),
(2, 'Mon 2', 4, 1),
(3, 'Mon 3', 3, 2),
(4, 'Mon 4', 4, 2),
(5, 'Mon 5', 3, 3);


INSERT INTO SinhVien_MonHoc (MaSinhVien, MaMon, DiemChuyenCan, DiemGiuaKy, DiemCuoiKy) VALUES
(1, 1, 7.5, 8.0, 7.0),
(2, 2, 8.5, 7.5, 8.0),
(3, 3, 9.0, 8.0, 8.5),
(4, 4, 8.0, 7.0, 7.5),
(5, 5, 7.0, 6.5, 7.0);
