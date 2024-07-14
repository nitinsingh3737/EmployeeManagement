﻿// <auto-generated />
using DataAccessLayer;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

#nullable disable

namespace DataAccessLayer.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    partial class ApplicationDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.20")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("DataTransferObject.Model.District", b =>
                {
                    b.Property<short>("DistrictId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("smallint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<short>("DistrictId"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<byte>("StateId")
                        .HasColumnType("tinyint");

                    b.HasKey("DistrictId");

                    b.HasIndex("StateId");

                    b.ToTable("District");
                });

            modelBuilder.Entity("DataTransferObject.Model.Employee", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Address")
                        .HasColumnType("varchar(100)");

                    b.Property<short>("DistrictId")
                        .HasColumnType("smallint");

                    b.Property<byte>("GenderId")
                        .HasColumnType("tinyint");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.HasIndex("DistrictId");

                    b.HasIndex("GenderId");

                    b.ToTable("Employee");
                });

            modelBuilder.Entity("DataTransferObject.Model.Gender", b =>
                {
                    b.Property<byte>("GenderId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("tinyint");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<byte>("GenderId"));

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(10)");

                    b.HasKey("GenderId");

                    b.ToTable("Gender");
                });

            modelBuilder.Entity("DataTransferObject.Model.State", b =>
                {
                    b.Property<byte>("StateId")
                        .HasColumnType("tinyint");

                    b.Property<string>("StateCode")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.Property<string>("StateName")
                        .IsRequired()
                        .HasColumnType("varchar(100)");

                    b.HasKey("StateId");

                    b.ToTable("State");
                });

            modelBuilder.Entity("DataTransferObject.Model.District", b =>
                {
                    b.HasOne("DataTransferObject.Model.State", "State")
                        .WithMany()
                        .HasForeignKey("StateId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();

                    b.Navigation("State");
                });

            modelBuilder.Entity("DataTransferObject.Model.Employee", b =>
                {
                    b.HasOne("DataTransferObject.Model.District", "District")
                        .WithMany()
                        .HasForeignKey("DistrictId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();

                    b.HasOne("DataTransferObject.Model.Gender", "Gender")
                        .WithMany()
                        .HasForeignKey("GenderId")
                        .OnDelete(DeleteBehavior.Restrict)
                        .IsRequired();

                    b.Navigation("District");

                    b.Navigation("Gender");
                });
#pragma warning restore 612, 618
        }
    }
}
