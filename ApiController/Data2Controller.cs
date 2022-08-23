using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using HttpGetAttribute = System.Web.Http.HttpGetAttribute;
using RouteAttribute = System.Web.Http.RouteAttribute;
using System.Web.Mvc;
using DBTest2.Models;
using Newtonsoft.Json;
using DAL;
//using HttpGetAttribute = System.Web.Mvc.HttpGetAttribute;

namespace DBTest2.Controllers
{
    [System.Web.Http.RoutePrefix("api/data2")]
    public class Data2Controller : ApiController
    {
        static ExampleDBEntities db = new ExampleDBEntities();

        [HttpGet]
        [Route("heighst/{year}")]
        public HttpResponseMessage heighst(int year = 2021)
        {
            var _heighst = dbMethods.highestSumOfAdvanceAmount(year);
            return Request.CreateResponse(HttpStatusCode.OK, _heighst, Configuration.Formatters.JsonFormatter);
        }

        [HttpGet]
        [Route("more/{ordersNum}/{year}")]
        public HttpResponseMessage more(int ordersNum, int year = 2021)
        {
            var _more = dbMethods.moreOrEqualOrders(ordersNum,year);
            return Request.CreateResponse(HttpStatusCode.OK, _more, Configuration.Formatters.JsonFormatter);
        }

        [HttpGet]
        [Route("nthrow/{agents}/{year}")]
        public HttpResponseMessage nthrow([FromUri] string[]  agents, int year = 2021)
        {
            var _nthrow = dbMethods.nthRowOfAgents(ordersNum, year);
            return Request.CreateResponse(HttpStatusCode.OK, _nthrow, Configuration.Formatters.JsonFormatter);
        }
       
    }
}
