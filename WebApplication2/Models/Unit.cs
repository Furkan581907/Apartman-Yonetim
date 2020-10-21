namespace WebApplication2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Unit
    {
        [Key]
        public int Unit_Id { get; set; }

        public int? Apartment_ID { get; set; }

        public int? Number { get; set; }

        public int? Floors { get; set; }

        public int? Bedrooms { get; set; }

        public int? Bathrooms { get; set; }
    }
}
