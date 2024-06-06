using Abstracciones.Entidades;
using Abstracciones.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.DA
{
    public interface IEquiposDA
    {

        public Task<IEnumerable<Equipos>> Obtener();
        
        public Equipos Obtener(Guid Id);
    }
}
