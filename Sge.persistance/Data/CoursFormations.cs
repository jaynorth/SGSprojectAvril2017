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
    
    public partial class CoursFormations
    {
        public int Id { get; set; }
        public int CoursId { get; set; }
        public int FormationsId { get; set; }
    
        public virtual Cours Cour { get; set; }
        public virtual Formations Formation { get; set; }
    }
}