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
    
    public partial class tblEpisodeMediaReleaseType
    {
        public long FK_Episode { get; set; }
        public long FK_Media { get; set; }
        public long FK_ReleaseType { get; set; }
    
        public virtual tblEpisode tblEpisode { get; set; }
        public virtual tblMedia tblMedia { get; set; }
        public virtual tblReleaseType tblReleaseType { get; set; }
    }
}
