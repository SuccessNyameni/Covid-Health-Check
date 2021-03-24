using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HealthCheck
{
    public class Visitors
    {
        public string name { get; set; }
        public string surname { get; set; }
        public int mobile { get; set; }
        

        public Visitors(string firstName, string lastName, int mobileNumbers)
        {
            name = firstName;
            surname = lastName;
            mobile = mobileNumbers;
            
        }
    }
}
