namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Apartment
    {
        [Key]
        public int Apartment_ID { get; set; }

        [StringLength(75)]
        public string Apartment_Name { get; set; }

        [StringLength(75)]
        public string UserName { get; set; }

        [StringLength(25)]
        public string Password { get; set; }

        [Column(TypeName = "text")]
        public string Address { get; set; }

        [StringLength(75)]
        public string City { get; set; }

        public DateTime? SaveDate { get; set; }

        public int? SaveUser { get; set; }

        public DateTime? EditDate { get; set; }

        public int? EditUser { get; set; }
    }
}
