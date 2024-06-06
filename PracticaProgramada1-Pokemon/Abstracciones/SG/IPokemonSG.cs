using Abstracciones.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.SG
{
    public interface IPokemonDA
    {
        Task<Pokemon> Obtener(int numero);
    }
}
