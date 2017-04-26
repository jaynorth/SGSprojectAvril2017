using Sge.persistance.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sge.persistance
{
    class Program
    {
        public static void Main(string[] args)
        {

            Etudiants etudiant = new Etudiants
            {

                Nom = "Dupont",
                Prenom = "Roger",
                Rue = "Tivoli 56",
                Npa = "1018",
                Localite = "Renens"

            };

            using (SGS_dbContainer context = new SGS_dbContainer())
            {

                context.Etudiants.Add(etudiant);
                context.SaveChanges();

                List<Etudiants> listeEtudiants = new List<Etudiants>(context.Etudiants);

                foreach (Etudiants et in listeEtudiants) {

                    Console.WriteLine(et.Nom);
                }
            }

            Console.ReadKey();

        }
    }
}
