//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Database.Repository.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblStudio
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblStudio()
        {
            this.tblEpisodes = new HashSet<tblEpisode>();
            this.tblMovies = new HashSet<tblMovie>();
            this.tblTVSeries = new HashSet<tblTVSery>();
        }
    
        public long ID_Studio { get; set; }
        public string Studio { get; set; }
        public byte[] Logo { get; set; }
        public Nullable<long> FK_UserID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblEpisode> tblEpisodes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblMovie> tblMovies { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblTVSery> tblTVSeries { get; set; }
    }
}
