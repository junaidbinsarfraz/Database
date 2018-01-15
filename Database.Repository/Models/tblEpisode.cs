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
    
    public partial class tblEpisode
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblEpisode()
        {
            this.tblEpisodeMediaAudios = new HashSet<tblEpisodeMediaAudio>();
            this.tblEpisodeMediaCodecs = new HashSet<tblEpisodeMediaCodec>();
            this.tblEpisodeMediaReleaseTypes = new HashSet<tblEpisodeMediaReleaseType>();
            this.tblEpisodeMediaResolutions = new HashSet<tblEpisodeMediaResolution>();
            this.tblEpisodeMediaSpecials = new HashSet<tblEpisodeMediaSpecial>();
            this.tblActors = new HashSet<tblActor>();
            this.tblGenres = new HashSet<tblGenre>();
            this.tblMusics = new HashSet<tblMusic>();
            this.tblNetworks = new HashSet<tblNetwork>();
            this.tblProducers = new HashSet<tblProducer>();
            this.tblStudios = new HashSet<tblStudio>();
        }
    
        public long ID_Episode { get; set; }
        public string Title { get; set; }
        public Nullable<System.DateTime> Length { get; set; }
        public string Description { get; set; }
        public Nullable<int> Number { get; set; }
        public Nullable<long> ID_TVSeries { get; set; }
        public Nullable<int> ReleaseYear { get; set; }
        public Nullable<bool> Wished { get; set; }
        public Nullable<bool> Watched { get; set; }
        public string Poster { get; set; }
        public Nullable<long> ID_Director { get; set; }
        public Nullable<long> ID_ParentalRating { get; set; }
        public string IMDBLink { get; set; }
        public string RottenTomatoesLink { get; set; }
        public Nullable<bool> HDREnabled { get; set; }
        public Nullable<bool> C3D { get; set; }
        public Nullable<bool> ReDownload { get; set; }
        public string Comments { get; set; }
        public Nullable<bool> Subtitles { get; set; }
        public string Language { get; set; }
        public string Country { get; set; }
        public Nullable<int> FK_UserID { get; set; }
    
        public virtual tblDirector tblDirector { get; set; }
        public virtual tblParentalRating tblParentalRating { get; set; }
        public virtual tblTVSery tblTVSery { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblEpisodeMediaAudio> tblEpisodeMediaAudios { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblEpisodeMediaCodec> tblEpisodeMediaCodecs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblEpisodeMediaReleaseType> tblEpisodeMediaReleaseTypes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblEpisodeMediaResolution> tblEpisodeMediaResolutions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblEpisodeMediaSpecial> tblEpisodeMediaSpecials { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblActor> tblActors { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblGenre> tblGenres { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblMusic> tblMusics { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblNetwork> tblNetworks { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblProducer> tblProducers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblStudio> tblStudios { get; set; }
    }
}
