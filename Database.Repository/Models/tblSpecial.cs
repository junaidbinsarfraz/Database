//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Database.Repository.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblSpecial
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblSpecial()
        {
            this.tblEpisodeMediaSpecials = new HashSet<tblEpisodeMediaSpecial>();
            this.tblMovies = new HashSet<tblMovie>();
            this.tblTVSeriesMediaSpecials = new HashSet<tblTVSeriesMediaSpecial>();
        }
    
        public long ID_Specials { get; set; }
        public string Speciality { get; set; }
        public string Description { get; set; }
        public Nullable<long> FK_UserID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblEpisodeMediaSpecial> tblEpisodeMediaSpecials { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblMovie> tblMovies { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblTVSeriesMediaSpecial> tblTVSeriesMediaSpecials { get; set; }
    }
}
