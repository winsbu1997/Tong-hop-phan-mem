//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLiKhachSan
{
    using System;
    using System.Collections.Generic;
    
    public partial class DANG_KI_DICH_VU
    {
        public int MaDangKi { get; set; }
        public int MaDichVu { get; set; }
        public int MaPhong { get; set; }
        public int SoLuong { get; set; }
    
        public virtual DICH_VU DICH_VU { get; set; }
        public virtual PHONG PHONG { get; set; }
    }
}