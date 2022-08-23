using DAL.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class dbMethods
    {
        static ExampleDBEntities db = new ExampleDBEntities();
        public static string highestSumOfAdvanceAmount(int year)
        {
            var agentCode = db.highestSumOfAdvanceAmount(year);
            return agentCode;
        }

        public static List<nthRowOfAgents_Result> nthRowOfAgents(string[] agent_codes, int year)
        {
            var agentCodes = createAgentsCodeTable(agent_codes);
            return db.nthRowOfAgents(agentCodes, year).ToList();
        }

        public static List<moreOrEqualOrders_Result> moreOrEqualOrders(int ordersNum, int year)
        {
            return db.moreOrEqualOrders(ordersNum, year).ToList()
        }

        public static DataTable createAgentsCodeTable(string[] agent_codes)
        {
            var table = new DataTable();
            table.Columns.Add("agent_code", typeof(string));
            foreach (var agentCode in agent_codes)
            {
                var newRow = table.NewRow();
                newRow["agent_code"] = agentCode;
            }

            return table;
        }
    }
}
