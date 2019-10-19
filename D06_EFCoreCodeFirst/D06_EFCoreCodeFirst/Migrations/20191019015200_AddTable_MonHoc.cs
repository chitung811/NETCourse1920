using Microsoft.EntityFrameworkCore.Migrations;

namespace D06_EFCoreCodeFirst.Migrations
{
    public partial class AddTable_MonHoc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SinhViens_Lops_MaLop",
                table: "SinhViens");

            migrationBuilder.DropPrimaryKey(
                name: "PK_SinhViens",
                table: "SinhViens");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Lops",
                table: "Lops");

            migrationBuilder.RenameTable(
                name: "SinhViens",
                newName: "SinhVien");

            migrationBuilder.RenameTable(
                name: "Lops",
                newName: "Lop");

            migrationBuilder.RenameIndex(
                name: "IX_SinhViens_MaLop",
                table: "SinhVien",
                newName: "IX_SinhVien_MaLop");

            migrationBuilder.AlterColumn<string>(
                name: "HoTen",
                table: "SinhVien",
                maxLength: 150,
                nullable: false,
                oldClrType: typeof(string));

            migrationBuilder.AddPrimaryKey(
                name: "PK_SinhVien",
                table: "SinhVien",
                column: "MaSV");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Lop",
                table: "Lop",
                column: "MaLop");

            migrationBuilder.CreateTable(
                name: "MonHoc",
                columns: table => new
                {
                    MaMh = table.Column<string>(maxLength: 12, nullable: false),
                    TenMh = table.Column<string>(maxLength: 150, nullable: false),
                    SoTc = table.Column<int>(nullable: false),
                    MonDk = table.Column<string>(maxLength: 12, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MonHoc", x => x.MaMh);
                    table.ForeignKey(
                        name: "FK_MonHoc_MonHoc_MonDk",
                        column: x => x.MonDk,
                        principalTable: "MonHoc",
                        principalColumn: "MaMh",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MonHoc_MonDk",
                table: "MonHoc",
                column: "MonDk");

            migrationBuilder.AddForeignKey(
                name: "FK_SinhVien_Lop_MaLop",
                table: "SinhVien",
                column: "MaLop",
                principalTable: "Lop",
                principalColumn: "MaLop",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SinhVien_Lop_MaLop",
                table: "SinhVien");

            migrationBuilder.DropTable(
                name: "MonHoc");

            migrationBuilder.DropPrimaryKey(
                name: "PK_SinhVien",
                table: "SinhVien");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Lop",
                table: "Lop");

            migrationBuilder.RenameTable(
                name: "SinhVien",
                newName: "SinhViens");

            migrationBuilder.RenameTable(
                name: "Lop",
                newName: "Lops");

            migrationBuilder.RenameIndex(
                name: "IX_SinhVien_MaLop",
                table: "SinhViens",
                newName: "IX_SinhViens_MaLop");

            migrationBuilder.AlterColumn<string>(
                name: "HoTen",
                table: "SinhViens",
                nullable: false,
                oldClrType: typeof(string),
                oldMaxLength: 150);

            migrationBuilder.AddPrimaryKey(
                name: "PK_SinhViens",
                table: "SinhViens",
                column: "MaSV");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Lops",
                table: "Lops",
                column: "MaLop");

            migrationBuilder.AddForeignKey(
                name: "FK_SinhViens_Lops_MaLop",
                table: "SinhViens",
                column: "MaLop",
                principalTable: "Lops",
                principalColumn: "MaLop",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
