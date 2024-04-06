using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

namespace KtraLTCSDL.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MonHocController : ControllerBase
    {
        
        private readonly List<MonHoc> danhSachMonHoc = new List<MonHoc>
        {
            new MonHoc { MaMon = 1, TenMon = "Mon 1", SoTinChi = 3 },
            new MonHoc { MaMon = 2, TenMon = "Mon 2", SoTinChi = 4 },
          
        };

        [HttpGet("{maNganh}")]
        public IEnumerable<MonHoc> GetMonHoc(int maNganh)
        {
            
            return danhSachMonHoc.Where(m => m.MaNganh == maNganh);
        }
    }
}
