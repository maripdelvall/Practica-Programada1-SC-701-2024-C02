﻿using Abstracciones.Entidades;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.API
{
    public interface IEquipoController
    {
        public Task<IActionResult> Obtener();
        public Task<IActionResult> Obtener(Guid Id);
    }
}
