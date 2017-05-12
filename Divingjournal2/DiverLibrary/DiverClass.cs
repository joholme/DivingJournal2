using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiverLibrary
{
    //Enums for Radiobuttons in journal

    public enum OF_Type { OF_Heavy, OF_Light, scuba };
    public enum Direct { direct, d_Stopp, OD_O2}
    public enum AirType { air, nitrox}
    public enum Transport { divingBasket, divingBell}

    public class Diver
    {
        //Common variables for all dives
        
        public string name;
        
        OF_Type of_type;
        Direct direct;
        AirType airType;
        string nitroxType;
        bool repeatedAir;
        Transport transport;

        string breathingGear;

        string volume;
        string pressure;

        string plannedDepth;
        string plannedTime;

        string courseDive;


        //Perhaps more if common also for pressure chamber
        //These might be available for all dives
        string leftSurface;
        string reachedBottom;
        string leftBottom_Depth;
        string leftBottom_Time;
        string bottomTime;
        string maxDepth;
        string ELD;
        string additionToBottomTime;
        string tableUsed_Meter;
        string tableUsed_Minutes;
        string ascensionToFirstStop;
        string timeAtSafetyStop; //Should perhaps be time (string)

        //After dive is finished
        bool isEverythingOK;


        //Constructor
        public Diver()
        {
            
        }

        public Diver(string _name)
        {
            Name = _name;
        }

        // public Diver(string _name, OF_Type _of_type, Direct _direct, AirType _airType, bool _repeated)

        
        //Get-Set

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

        public OF_Type Of_type
        {
            get
            {
                return of_type;
            }

            set
            {
                of_type = value;
            }
        }

        public Direct Direct
        {
            get
            {
                return direct;
            }

            set
            {
                direct = value;
            }
        }

        public AirType AirType
        {
            get
            {
                return airType;
            }

            set
            {
                airType = value;
            }
        }

        public string NitroxType
        {
            get
            {
                return nitroxType;
            }

            set
            {
                nitroxType = value;
            }
        }

        public bool RepeatedAir
        {
            get
            {
                return repeatedAir;
            }

            set
            {
                repeatedAir = value;
            }
        }

        public Transport Transport
        {
            get
            {
                return transport;
            }

            set
            {
                transport = value;
            }
        }

        public string BreathingGear
        {
            get
            {
                return breathingGear;
            }

            set
            {
                breathingGear = value;
            }
        }

        public string Volume
        {
            get
            {
                return volume;
            }

            set
            {
                volume = value;
            }
        }

        public string Pressure
        {
            get
            {
                return pressure;
            }

            set
            {
                pressure = value;
            }
        }

        public string PlannedDepth
        {
            get
            {
                return plannedDepth;
            }

            set
            {
                plannedDepth = value;
            }
        }

        public string PlannedTime
        {
            get
            {
                return plannedTime;
            }

            set
            {
                plannedTime = value;
            }
        }

        public string CourseDive
        {
            get
            {
                return courseDive;
            }

            set
            {
                courseDive = value;
            }
        }

        public bool IsEverythingOK
        {
            get
            {
                return isEverythingOK;
            }

            set
            {
                isEverythingOK = value;
            }
        }



        public string LeftSurface
        {
            get
            {
                return leftSurface;
            }

            set
            {
                leftSurface = value;
            }
        }

        public string ReachedBottom
        {
            get
            {
                return reachedBottom;
            }

            set
            {
                reachedBottom = value;
            }
        }

        public string LeftBottom_Depth
        {
            get
            {
                return leftBottom_Depth;
            }

            set
            {
                leftBottom_Depth = value;
            }
        }

        public string LeftBottom_Time
        {
            get
            {
                return leftBottom_Time;
            }

            set
            {
                leftBottom_Time = value;
            }
        }

        public string BottomTime
        {
            get
            {
                return bottomTime;
            }

            set
            {
                bottomTime = value;
            }
        }

        public string MaxDepth
        {
            get
            {
                return maxDepth;
            }

            set
            {
                maxDepth = value;
            }
        }

        public string ELD1
        {
            get
            {
                return ELD;
            }

            set
            {
                ELD = value;
            }
        }

        public string AdditionToBottomTime
        {
            get
            {
                return additionToBottomTime;
            }

            set
            {
                additionToBottomTime = value;
            }
        }

        public string TableUsed_Meter
        {
            get
            {
                return tableUsed_Meter;
            }

            set
            {
                tableUsed_Meter = value;
            }
        }

        public string TableUsed_Minutes
        {
            get
            {
                return tableUsed_Minutes;
            }

            set
            {
                tableUsed_Minutes = value;
            }
        }

        public string AscensionToFirstStop
        {
            get
            {
                return ascensionToFirstStop;
            }

            set
            {
                ascensionToFirstStop = value;
            }
        }

        public string TimeAtSafetyStop
        {
            get
            {
                return timeAtSafetyStop;
            }

            set
            {
                timeAtSafetyStop = value;
            }
        }


        //Slutt på Get-Set


        void test() {
            CourseDive = "Test";
            string s = CourseDive; }
    }

    public class Diver_Standard : Diver
    {
        //Variables for Standard dive

        //These are spesific for Standard dive
        string arrived9m, left9m;
        string arrived6m, left6m;
        string arrived3m, left3m;

        string reachedSurface;
        string ascensionTime;
        string totalDivingTime;
        string N2GroupAfterDive; //perhaps string

        public Diver_Standard(string _name) : base(_name)
        {
        }

        

        public string Arrived9m
        {
            get
            {
                return arrived9m;
            }

            set
            {
                arrived9m = value;
            }
        }

        public string Left9m
        {
            get
            {
                return left9m;
            }

            set
            {
                left9m = value;
            }
        }

        public string Arrived6m
        {
            get
            {
                return arrived6m;
            }

            set
            {
                arrived6m = value;
            }
        }

        public string Left6m
        {
            get
            {
                return left6m;
            }

            set
            {
                left6m = value;
            }
        }

        public string Arrived3m
        {
            get
            {
                return arrived3m;
            }

            set
            {
                arrived3m = value;
            }
        }

        public string Left3m
        {
            get
            {
                return left3m;
            }

            set
            {
                left3m = value;
            }
        }

        public string ReachedSurface
        {
            get
            {
                return reachedSurface;
            }

            set
            {
                reachedSurface = value;
            }
        }

        public string AscensionTime
        {
            get
            {
                return ascensionTime;
            }

            set
            {
                ascensionTime = value;
            }
        }

        public string TotalDivingTime
        {
            get
            {
                return totalDivingTime;
            }

            set
            {
                totalDivingTime = value;
            }
        }

        public string N2GroupAfterDive1
        {
            get
            {
                return N2GroupAfterDive;
            }

            set
            {
                N2GroupAfterDive = value;
            }
        }

        
    }

    public class Diver_Compression : Diver
    {
        //Variables for Surface Compression dive

        //These are spesific for Surface Compression dive

        string left18m, left15m, left12m;
        string time12_0m;
        string reached15mInChamber;
        string o2_1, o2_2, o2_3; 
        string surfaceInterval;
        string air_1, air_2, air_3;
        //Perhaps more variables are needed for timestamp here. 

        string left12mWithoutO2;
        string reachedSurface;
        string timeInChamber;
        string timeAtSea;
        string totalDecompression;
        string totalDivingTime;

        public Diver_Compression(string _name) : base(_name)
        {

        }

        public string Left18m
        {
            get
            {
                return left18m;
            }

            set
            {
                left18m = value;
            }
        }

        public string Left15m
        {
            get
            {
                return left15m;
            }

            set
            {
                left15m = value;
            }
        }

        public string Left12m
        {
            get
            {
                return left12m;
            }

            set
            {
                left12m = value;
            }
        }

        public string Time12_0m
        {
            get
            {
                return time12_0m;
            }

            set
            {
                time12_0m = value;
            }
        }

        public string Reached15mInChamber
        {
            get
            {
                return reached15mInChamber;
            }

            set
            {
                reached15mInChamber = value;
            }
        }

        public string O2_1
        {
            get
            {
                return o2_1;
            }

            set
            {
                o2_1 = value;
            }
        }

        public string O2_2
        {
            get
            {
                return o2_2;
            }

            set
            {
                o2_2 = value;
            }
        }

        public string O2_3
        {
            get
            {
                return o2_3;
            }

            set
            {
                o2_3 = value;
            }
        }

        public string SurfaceInterval
        {
            get
            {
                return surfaceInterval;
            }

            set
            {
                surfaceInterval = value;
            }
        }

        public string Air_1
        {
            get
            {
                return air_1;
            }

            set
            {
                air_1 = value;
            }
        }

        public string Air_2
        {
            get
            {
                return air_2;
            }

            set
            {
                air_2 = value;
            }
        }

        public string Air_3
        {
            get
            {
                return air_3;
            }

            set
            {
                air_3 = value;
            }
        }

        public string Left12mWithoutO2
        {
            get
            {
                return left12mWithoutO2;
            }

            set
            {
                left12mWithoutO2 = value;
            }
        }

        public string ReachedSurface
        {
            get
            {
                return reachedSurface;
            }

            set
            {
                reachedSurface = value;
            }
        }

        public string TimeInChamber
        {
            get
            {
                return timeInChamber;
            }

            set
            {
                timeInChamber = value;
            }
        }

        public string TimeAtSea
        {
            get
            {
                return timeAtSea;
            }

            set
            {
                timeAtSea = value;
            }
        }

        public string TotalDecompression
        {
            get
            {
                return totalDecompression;
            }

            set
            {
                totalDecompression = value;
            }
        }

        public string TotalDivingTime
        {
            get
            {
                return totalDivingTime;
            }

            set
            {
                totalDivingTime = value;
            }
        }

        
    }

    public class Diver_Pressurechamber : Diver
    {
        public Diver_Pressurechamber(string _name) : base(_name)
        {
        }
    }


}


