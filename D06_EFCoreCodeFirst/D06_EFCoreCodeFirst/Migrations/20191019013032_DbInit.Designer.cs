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
    [Migration("20191019013032_DbInit")]
    partial class DbInit
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

                    b.ToTable("Lops");
                });

            modelBuilder.Entity("D06_EFCoreCodeFirst.DataModels.SinhVien", b =>
                {
                    b.Property<string>("MaSV")
                        .ValueGeneratedOnAdd();

                    b.Property<double?>("DiemTichLuy");

                    b.Property<string>("HoTen")
                        .IsRequired();

                    b.Property<int?>("MaLop");

                    b.HasKey("MaSV");

                    b.HasIndex("MaLop");

                    b.ToTable("SinhViens");
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
