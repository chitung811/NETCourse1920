﻿// <auto-generated />
using System;
using D06_EFCoreCodeFirst.DataModels;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace D06_EFCoreCodeFirst.Migrations
{
    [DbContext(typeof(MyDbContext))]
    [Migration("20191019015200_AddTable_MonHoc")]
    partial class AddTable_MonHoc
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.2.6-servicing-10079")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("D06_EFCoreCodeFirst.DataModels.Lop", b =>
                {
                    b.Property<int>("MaLop")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CVHT");

                    b.Property<string>("TenLop")
                        .HasMaxLength(50);

                    b.HasKey("MaLop");

                    b.ToTable("Lop");
                });

            modelBuilder.Entity("D06_EFCoreCodeFirst.DataModels.MonHoc", b =>
                {
                    b.Property<string>("MaMh")
                        .ValueGeneratedOnAdd()
                        .HasMaxLength(12);

                    b.Property<string>("MonDk")
                        .HasMaxLength(12);

                    b.Property<int>("SoTc");

                    b.Property<string>("TenMh")
                        .IsRequired()
                        .HasMaxLength(150);

                    b.HasKey("MaMh");

                    b.HasIndex("MonDk");

                    b.ToTable("MonHoc");
                });

            modelBuilder.Entity("D06_EFCoreCodeFirst.DataModels.SinhVien", b =>
                {
                    b.Property<string>("MaSV")
                        .ValueGeneratedOnAdd();

                    b.Property<double?>("DiemTichLuy");

                    b.Property<string>("HoTen")
                        .IsRequired()
                        .HasMaxLength(150);

                    b.Property<int?>("MaLop");

                    b.HasKey("MaSV");

                    b.HasIndex("MaLop");

                    b.ToTable("SinhVien");
                });

            modelBuilder.Entity("D06_EFCoreCodeFirst.DataModels.MonHoc", b =>
                {
                    b.HasOne("D06_EFCoreCodeFirst.DataModels.MonHoc", "MonDieuKien")
                        .WithMany()
                        .HasForeignKey("MonDk");
                });

            modelBuilder.Entity("D06_EFCoreCodeFirst.DataModels.SinhVien", b =>
                {
                    b.HasOne("D06_EFCoreCodeFirst.DataModels.Lop", "Lop")
                        .WithMany("SinhViens")
                        .HasForeignKey("MaLop");
                });
#pragma warning restore 612, 618
        }
    }
}
