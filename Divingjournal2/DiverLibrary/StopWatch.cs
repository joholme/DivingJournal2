using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiverLibrary
{
    public class StopWatch
    {
        private DateTime startTime;
        private DateTime stopTime;
        private bool running = false;

        public void Start()
        {
            this.startTime = DateTime.Now;
            this.running = true;

        }

        public void Stop()
        {
            this.stopTime = DateTime.Now;
            this.running = false;
        }

        //Elapsed time in milliseconds

        public double GetElapsedTime()
        {
            TimeSpan interval;
            if (running)
            {
                interval = DateTime.Now - startTime;

            } else
            {
                interval = stopTime - startTime;

            }
            return interval.TotalMilliseconds;
        }

        public double GetElapsedTimeSecs()
        {
            TimeSpan interval;
            if (running)
            {
                interval = DateTime.Now - startTime;

            }
            else
            {
                interval = stopTime - startTime;

            }
            return interval.TotalSeconds;
        }
        
    }
}
