using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;

namespace KtraLTCSDL.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class SinhVienController : ControllerBase
    {
        
        private readonly List<SinhVien> danhSachSinhVien = new List<SinhVien>
        {
            new SinhVien { MaSinhVien = 1, HoTen = "Sinh Vien 1" },
            new SinhVien { MaSinhVien = 2, HoTen = "Sinh Vien 2" },
          
        };

        private readonly List<NganhHoc> danhSachNganhHoc = new List<NganhHoc>
        {
            new NganhHoc { MaNganh = 1, TenNganh = "Nganh 1" },
            new NganhHoc { MaNganh = 2, TenNganh = "Nganh 2" },
            
        };

        private readonly List<SinhVienNganhHoc> danhSachSinhVienNganhHoc = new List<SinhVienNganhHoc>();

        [HttpPost]
        public IActionResult ThemNganhHocChoSinhVien(SinhVienNganhHoc sinhVienNganhHoc)
        {
            
            if (sinhVienNganhHoc.NgayDangKy > DateTime.Now)
            {
                return BadRequest("Ngày đăng ký phải nhỏ hơn hoặc bằng ngày hiện tại.");
            }

           
            if (danhSachSinhVienNganhHoc.Any(item => item.MaSinhVien == sinhVienNganhHoc.MaSinhVien && item.MaNganh == sinhVienNganhHoc.MaNganh))
            {
                return BadRequest("Sinh viên đã đăng ký ngành học này.");
            }

            
            danhSachSinhVienNganhHoc.Add(sinhVienNganhHoc);

            return Ok("Thêm ngành học cho sinh viên thành công.");
        }
    }
}
