using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;
using BandTracker.Objects;

namespace BandTracker.Tests
{
  public class VenueTest : IDisposable
  {
    public VenueTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=band_tracker_test;Integrated Security=SSPI;";
    }

    public void Dispose()
    {
      Venue.DeleteAll();
      Band.DeleteAll();
    }

    [Fact]
    public void Test_DatabaseEmptyAtFirst()
    {
      //Arrange, Act
      int result = Venue.GetAll().Count;
      //Assert
      Assert.Equal(0,result);
    }

    [Fact]
    public void Test_Equal_ReturnsTrueIfNamesAndIdsAreTheSame()
    {
      //Arrange, Act
      Venue firstVenue = new Venue("Edgefield");
      Venue secondVenue = new Venue("Edgefield");

      //Assert
      Assert.Equal(firstVenue, secondVenue);
    }
    [Fact]
    public void Test_Save_SavesToDatabase()
    {
      //Arrange
      Venue testVenue = new Venue("Crystal Ballroom");

      //Act
      testVenue.Save();
      List<Venue> result = Venue.GetAll();
      List<Venue> testList = new List<Venue>{testVenue};

      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void Test_Save_AssignsIdToObject()
    {
      //Arrange
      Venue testVenue = new Venue("Crystal Ballroom");

      //Act
      testVenue.Save();
      Venue savedVenue = Venue.GetAll()[0];

      int result = savedVenue.GetId();
      int testId = testVenue.GetId();

      //Assert
      Assert.Equal(testId, result);
    }
    [Fact]
    public void Test_Find_FindsVenueInDatabase()
    {
      //Arrange
      Venue testVenue = new Venue("Crystal Ballroom");
      testVenue.Save();

      //Act
      Venue foundVenue = Venue.Find(testVenue.GetId());

      //Assert
      Assert.Equal(testVenue, foundVenue);
    }
    [Fact]
    public void Test_Delete_DeletesVenueFromDB()
     {
       //Arrange
       Venue firstVenue = new Venue("The Aladin Theater");
       Venue secondVenue = new Venue("Hollywood Theater");
       firstVenue.Save();
       secondVenue.Save();
       //Act
       secondVenue.Delete();
       List<Venue> testList = new List<Venue> {firstVenue};
       List<Venue> result = Venue.GetAll();
       //Assert
       Assert.Equal(testList, result);
     }
     [Fact]
     public void Test_Update_UpdatesVenueName()
     {
       //Arrange
       Venue firstVenue = new Venue("The Cave");
       firstVenue.Save();
       string newName = "First Avenue";
       //Act
       firstVenue.Update(newName);
       string venueUpdatedName = Venue.Find(firstVenue.GetId()).GetName();
       //Assert
       Assert.Equal(newName, venueUpdatedName);
     }
     [Fact]
     public void Test_AddBand_ForBandThatPlayedAtThisVenue()
     {
       //Arrange
       Venue firstVenue = new Venue("The Cave");
       firstVenue.Save();
       Band testBand = new Band("Grateful Dead");
       testBand.Save();
       List<Band> testList = new List<Band> {testBand};

       //Act
       firstVenue.AddBand(testBand);
       var result = firstVenue.GetBands();

       //Assert
       Assert.Equal(testList, result);
     }
     [Fact]
     public void Test_AddBand_StringAsInput_ForBandThatPlayedAtThisVenue()
     {
       //Arrange
       Venue firstVenue = new Venue("The Cave");
       firstVenue.Save();
       Console.WriteLine("Venue ID: "+firstVenue.GetId());
       var testBandName = "Cream";

       //Act
       var addedSuccessfully = firstVenue.AddBand(testBandName);
       Console.WriteLine("String Test Added: " + addedSuccessfully);
       var result = firstVenue.GetBands()[0].GetName();

       //Assert
       Assert.Equal(testBandName, result);
     }

  }
}
