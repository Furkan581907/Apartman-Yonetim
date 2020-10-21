namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Leases")]
    public partial class Leas
    {
        [Key]
        public int Lease_ID { get; set; }

        public int? Apartment_ID { get; set; }

        public int? Unit_ID { get; set; }

        [StringLength(75)]
        public string FirstName { get; set; }

        [StringLength(75)]
        public string LastName { get; set; }

        [StringLength(15)]
        public string Phone { get; set; }

        public bool? Active { get; set; }

        public DateTime? StartDate { get; set; }

        public DateTime? FinishDate { get; set; }

        public decimal? Rent { get; set; }
    }
}
