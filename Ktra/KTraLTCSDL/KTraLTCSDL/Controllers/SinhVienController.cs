using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace KtraLTCSDL.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class SinhVienController : ControllerBase
    {
        private readonly List<SinhVienNganhHoc> danhSachSinhVienNganhHoc = new List<SinhVienNganhHoc>();

        [HttpPut("{maSinhVien}")]
        public IActionResult ThayDoiMaNganhCuaSinhVien(int maSinhVien, int maNganhMoi)
        {
          
            var sinhVien = danhSachSinhVienNganhHoc.FirstOrDefault(sv => sv.MaSinhVien == maSinhVien);
            if (sinhVien == null)
            {
                return NotFound("Không tìm thấy sinh viên.");
            }

          
            if (danhSachSinhVienNganhHoc.Any(sv => sv.MaSinhVien != maSinhVien && sv.MaNganh == maNganhMoi))
            {
                return BadRequest("Mã ngành mới đã tồn tại cho sinh viên khác.");
            }

           
            sinhVien.MaNganh = maNganhMoi;

            return Ok("Thay đổi mã ngành của sinh viên thành công.");
        }
    }
}
