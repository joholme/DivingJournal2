using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Divingjournal2
    //githuborjaneide
    //hei og ho
{
    public class TestClass
    {
        string name;
        string location;

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Location
        {
            get
            {
                return location;
            }

            set
            {
                location = value;
            }
        }

        public TestClass()
        {

        }

        public TestClass(string _name, string _location)
        {
            Name = _name;
            Location = _location;
        }

        public void test()
        {
            
        }
    }
}