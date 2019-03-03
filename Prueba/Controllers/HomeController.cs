using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Prueba.Models;

namespace Prueba.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HomeController : ControllerBase
    {
        private bdpruebaContext context = new bdpruebaContext();

        [HttpGet("[action]")]
        public JsonResult Get()//getFichas
        {
            var fichas = context.Tblficha.ToList();
            return new JsonResult(fichas);
        }

        [HttpPost("[action]")]
        public JsonResult InsertFicha([FromBody]Tblficha ficha)//getFichas
        {
            string res = string.Empty;
            try
            {
                context.Tblficha.Add(ficha);
                context.SaveChanges();
                res = "Saved";
            }
            catch (Exception)
            {
                res = "Didn't Save";
            }
            return new JsonResult(res);
        }
    }
}