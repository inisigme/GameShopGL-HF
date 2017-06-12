using System;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using EFGameShopDatabase.Entities;
using System.Collections.Generic;
using EFGameShopDatabase.Models;

namespace EFGameShopDatabase
{
    public partial class GameShopDatabase : DbContext
    {
        public GameShopDatabase() : base("name=DbConnectionString")
        //public GameShopDatabase() : base("name=localdb")
        {
        }

        public virtual DbSet<ItemDb> Items { get; set; }
        public virtual DbSet<OrderEntryDb> OrderEntries { get; set; }
        public virtual DbSet<OrderDb> Orders { get; set; }
        public virtual DbSet<UserDb> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ItemDb>()
                .Property(e => e.Price)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ItemDb>()
                .HasMany(e => e.OrderEntries)
                .WithRequired(e => e.Items)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<OrderDb>()
                .HasMany(e => e.OrderEntries)
                .WithRequired(e => e.Orders)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<UserDb>()
                .HasMany(e => e.Orders)
                .WithRequired(e => e.Users)
                .WillCascadeOnDelete(false);            
        }        
    }
}
