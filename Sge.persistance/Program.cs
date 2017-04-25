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
            using (SGS_dbContainer context = new SGS_dbContainer())
            {

                List<Etudiants> listeEtudiants = new List<Etudiants>(context.Etudiants);

                foreach (Etudiants et in listeEtudiants) {

                    Console.WriteLine(et.Nom);
                }
            }

        }
    }
}
