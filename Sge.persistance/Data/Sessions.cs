//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Sge.persistance.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sessions
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sessions()
        {
            this.Inscriptions = new HashSet<Inscriptions>();
        }
    
        public int Id { get; set; }
        public int MaxInscription { get; set; }
        public int AnneeAcademique { get; set; }
        public string JourCours { get; set; }
        public System.DateTime HeureCours { get; set; }
        public System.DateTime DateDebutCours { get; set; }
        public System.DateTime DateFinCours { get; set; }
        public int CoursId { get; set; }
        public int EnseignantsId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Inscriptions> Inscriptions { get; set; }
        public virtual Cours Cour { get; set; }
        public virtual Enseignants Enseignant { get; set; }
    }
}
