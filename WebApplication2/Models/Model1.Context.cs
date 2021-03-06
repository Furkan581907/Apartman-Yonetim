﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication2.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class apartment_systemEntities : DbContext
    {
        public apartment_systemEntities()
            : base("name=apartment_systemEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Apartment> Apartments { get; set; }
        public virtual DbSet<Leas> Leases { get; set; }
        public virtual DbSet<Unit> Units { get; set; }
    
        public virtual int sp_DaireninKirasiniArtir(Nullable<int> daireNo, Nullable<decimal> fiyat)
        {
            var daireNoParameter = daireNo.HasValue ?
                new ObjectParameter("daireNo", daireNo) :
                new ObjectParameter("daireNo", typeof(int));
    
            var fiyatParameter = fiyat.HasValue ?
                new ObjectParameter("fiyat", fiyat) :
                new ObjectParameter("fiyat", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_DaireninKirasiniArtir", daireNoParameter, fiyatParameter);
        }
    
        public virtual int sp_KatinKirasiniArtir(Nullable<int> kat, Nullable<decimal> fiyat)
        {
            var katParameter = kat.HasValue ?
                new ObjectParameter("kat", kat) :
                new ObjectParameter("kat", typeof(int));
    
            var fiyatParameter = fiyat.HasValue ?
                new ObjectParameter("fiyat", fiyat) :
                new ObjectParameter("fiyat", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_KatinKirasiniArtir", katParameter, fiyatParameter);
        }
    }
}
