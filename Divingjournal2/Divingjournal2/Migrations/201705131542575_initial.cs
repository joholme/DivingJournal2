namespace Divingjournal2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Diver_Compression",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        name = c.String(),
                        of_type = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal", t => t.JournalID, cascadeDelete: true)
                .Index(t => t.JournalID);
            
            CreateTable(
                "dbo.Journal",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        date = c.String(),
                        location = c.String(),
                        divingSpot = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Diver_Pressurechamber",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        name = c.String(),
                        of_type = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal", t => t.JournalID, cascadeDelete: true)
                .Index(t => t.JournalID);
            
            CreateTable(
                "dbo.Diver_Standard",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        JournalID = c.Int(nullable: false),
                        name = c.String(),
                        of_type = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Journal", t => t.JournalID, cascadeDelete: true)
                .Index(t => t.JournalID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Diver_Standard", "JournalID", "dbo.Journal");
            DropForeignKey("dbo.Diver_Pressurechamber", "JournalID", "dbo.Journal");
            DropForeignKey("dbo.Diver_Compression", "JournalID", "dbo.Journal");
            DropIndex("dbo.Diver_Standard", new[] { "JournalID" });
            DropIndex("dbo.Diver_Pressurechamber", new[] { "JournalID" });
            DropIndex("dbo.Diver_Compression", new[] { "JournalID" });
            DropTable("dbo.Diver_Standard");
            DropTable("dbo.Diver_Pressurechamber");
            DropTable("dbo.Journal");
            DropTable("dbo.Diver_Compression");
        }
    }
}
