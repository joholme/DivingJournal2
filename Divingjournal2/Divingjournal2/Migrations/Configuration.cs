namespace Divingjournal2.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using Models;

    internal sealed class Configuration : DbMigrationsConfiguration<Divingjournal2.DAL.DivingJournalContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(Divingjournal2.DAL.DivingJournalContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
            context.Users.AddOrUpdate(
                     x => x.Id,
                     new Models.User { Id = 1, Name = "Johan" }
                );
            
            context.Journal_Caches.AddOrUpdate(
                   x => x.Id,
                   new Models.Journal_Cache()
                   {
                       Id = 1,
                       UserId = 1,
                       subject = Subject.DYK600_Safety,
                       courseNumber = "16/17",
                       other = "noe annet",
                       date = "18.05.17",
                       location = "Skålevik",
                       divingSpot = "DP1",
                       divingchief = "Johnny Jensen",
                       divingleader_teacher = "Harald",
                       divingleader_student = "Jeanette",
                       diver_1 = "Daniel Næss",
                       diver_2 = "Tor Gunnar",
                       standby = "Mathias",
                       lineman_1 = "Tor Gunnar",
                       lineman_2 = "Andrew",
                       helpman = "Earl",
                       helpman_assisting = "Ørjan",
                       others = "Jonas og Nils",
                       airsystem_main = "190",
                       airsystem_secondary = "190",
                       oxygenForChamber_inUse = "110",
                       oxygenForChamber_readyForUse = "180",
                       emergencyGas_divingBell = "180",
                       emergencyGas_divingBasket = "170",
                       notes = "Ikke noe spesielt og legge til",
                       changelog = "Pusteutstyr skulle være KM1337"
                   }
               );
            //Dykker 1
            context.Diver_Standard_Caches.AddOrUpdate(
                      x => x.Id,
                      new Models.Diver_Standard_Cache()
                      {
                          Id = 1,
                          Journal_CacheID = 1,
                          name = "dykker1",
                          transport = Transport.divingBell,
                          of_type = OF_Type.OF_Heavy,
                          direct = Direct.d_Stopp,
                          airType = AirType.air,
                          nitroxType = " noe med type",
                          repeatedAir = "x",
                          breathingGear = "KM 17 K",
                          volume = "10 L",
                          pressure = "180 bar",
                          plannedDepth = "15 m",
                          courseDive = " RB 6 ",
                          leftSurface = "KL 14:29",
                          reachedBottom = "14:30",
                          leftBottom_Depth = "12 m",
                          leftBottom_Time = "KL 15:29",
                          bottomTime = "60 min",
                          maxDepth = "15 m",
                          ELD = "ELD",
                          additionToBottomTime = "",
                          tableUsed_Meter = "15 m",
                          tableUsed_Minutes = "60 min",
                          ascensionToFirstStop = "0:38",
                          timeAtSafetyStop = "3 min",
                          isEverythingOK = "JA",
                          arrived9m = "15:15",
                          left9m = "15:17",
                          arrived6m = "15:17",
                          left6m = "15:18",
                          arrived3m = "15:18",
                          left3m = "15:19",
                          reachedSurface = "KL 15:34",
                          ascensionTime = "5 min",
                          totalDivingTime = "65 min",
                          N2GroupAfterDive = "I"
                      }
                  );

            //Dykker 2
            context.Diver_Standard_Caches.AddOrUpdate(
                    x => x.Id,
                    new Models.Diver_Standard_Cache()
                    {
                        Id = 1,
                        Journal_CacheID = 1,
                        name = "dykker2",
                        transport = Transport.divingBell,
                        of_type = OF_Type.OF_Heavy,
                        direct = Direct.d_Stopp,
                        airType = AirType.air,
                        nitroxType = " noe med type",
                        repeatedAir = "x",
                        breathingGear = "KM 17 K",
                        volume = "10 L",
                        pressure = "180 bar",
                        plannedDepth = "15 m",
                        courseDive = " RB 6 ",
                        leftSurface = "KL 14:29",
                        reachedBottom = "14:30",
                        leftBottom_Depth = "12 m",
                        leftBottom_Time = "KL 15:29",
                        bottomTime = "60 min",
                        maxDepth = "15 m",
                        ELD = "ELD",
                        additionToBottomTime = "",
                        tableUsed_Meter = "15 m",
                        tableUsed_Minutes = "60 min",
                        ascensionToFirstStop = "0:53",
                        timeAtSafetyStop = "3 min",
                        isEverythingOK = "JA",
                        arrived9m = "15:15",
                        left9m = "15:17",
                        arrived6m = "15:17",
                        left6m = "15:18",
                        arrived3m = "15:18",
                        left3m = "15:19",
                        reachedSurface = "KL 15:34",
                        ascensionTime = "5 min",
                        totalDivingTime = "65 min",
                        N2GroupAfterDive = "I"
                    }
                );
            //Standbydykker
            context.Diver_Standard_Caches.AddOrUpdate(
                  x => x.Id,
                  new Models.Diver_Standard_Cache()
                  {
                      Id = 1,
                      Journal_CacheID = 1,
                      name = "standby",
                      transport = Transport.divingBell,
                      of_type = OF_Type.OF_Heavy,
                      direct = Direct.d_Stopp,
                      airType = AirType.air,
                      nitroxType = " noe med type",
                      repeatedAir = "x",
                      breathingGear = "KM 17 K",
                      volume = "10 L",
                      pressure = "180 bar",
                      plannedDepth = "15 m",
                      courseDive = " RB 6 ",
                      leftSurface = "KL 14:29",
                      reachedBottom = "14:30",
                      leftBottom_Depth = "12 m",
                      leftBottom_Time = "KL 15:29",
                      bottomTime = "60 min",
                      maxDepth = "15 m",
                      ELD = "ELD",
                      additionToBottomTime = "",
                      tableUsed_Meter = "15 m",
                      tableUsed_Minutes = "60 min",
                      ascensionToFirstStop = "0:53",
                      timeAtSafetyStop = "3 min",
                      isEverythingOK = "JA",
                      arrived9m = "15:15",
                      left9m = "15:17",
                      arrived6m = "15:17",
                      left6m = "15:18",
                      arrived3m = "15:18",
                      left3m = "15:19",
                      reachedSurface = "KL 15:34",
                      ascensionTime = "5 min",
                      totalDivingTime = "65 min",
                      N2GroupAfterDive = "I"
                  }
              );

    

        }
    }
}
