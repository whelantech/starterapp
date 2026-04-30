using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace StarterApp.Migrations.Migrations
{
    /// <summary>
    /// Aligns the persisted model with Item.ImageUrl as text and User stats columns.
    /// </summary>
    public partial class AlignItemImageUrlAndUserStats : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "ImageUrl",
                table: "Items",
                type: "text",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "integer",
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "AverageRating",
                table: "users",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "ItemsListed",
                table: "users",
                type: "integer",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "RentalsCompleted",
                table: "users",
                type: "integer",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AverageRating",
                table: "users");

            migrationBuilder.DropColumn(
                name: "ItemsListed",
                table: "users");

            migrationBuilder.DropColumn(
                name: "RentalsCompleted",
                table: "users");

            migrationBuilder.AlterColumn<int>(
                name: "ImageUrl",
                table: "Items",
                type: "integer",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "text",
                oldNullable: true);
        }
    }
}
