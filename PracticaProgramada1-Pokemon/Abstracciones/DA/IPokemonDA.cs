
using Abstracciones.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Abstracciones.DA;

namespace Abstracciones.DA
{
    internal interface IPokemonDA
    {

        public Task<IEnumerable<Equipo>> Obtener();
        public Task<IEnumerable<Pokemon>> Obtener(Guid Id);
    }
}
