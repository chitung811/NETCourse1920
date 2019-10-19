using AutoMapper;
using D07_EFCore_DBFirst.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace D07_EFCore_DBFirst.Models
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            //đảo ngược (2 chiều) .ReverseMap()
            CreateMap<HangHoa, HangHoaViewModel>()
                .ForMember(d => d.GiaBan, 
                opt => opt.MapFrom(s => s.DonGia * (1 - s.GiamGia)
                ))
                .ForMember(d => d.Loai, opt => opt.MapFrom(s => s.MaLoaiNavigation.TenLoai))
                .ForMember(d => d.NhaCungCap, opt => opt.MapFrom(s => s.MaNccNavigation.TenCongTy))
            ;
        }
    }
}
