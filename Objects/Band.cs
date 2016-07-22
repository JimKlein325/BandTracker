using System.Collections.Generic;
using System.Data.SqlClient;
using System;

namespace BandTracker.Objects
{
  public class Band
  {
    private int _id;
    private string _name;

    public Band(string name, int Id = 0)
    {
      _id = Id;
      _name = name;
    }

    public override bool Equals(System.Object otherBand)
    {
      if (!(otherBand is Band))
      {
        return false;
      }
      else
      {
        Band newBand = (Band) otherBand;
        bool idEquality = (this.GetId() == newBand.GetId());
        bool nameEquality = (this.GetName() == newBand.GetName());
        return (idEquality && nameEquality);
      }
    }

    public int GetId()
    {
      return _id;
    }

    public string GetName()
    {
      return _name;
    }
    public static List<Band> GetAll()
    {
      List<Band> allBands = new List<Band> {};
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM bands;", conn);
      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        string bandName = rdr.GetString(0);
        int bandId = rdr.GetInt32(1);
        Band newBand = new Band(bandName, bandId);
        allBands.Add(newBand);
      }

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }

      return allBands;
    }

    public void Save()
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr;
      conn.Open();

      SqlCommand cmd = new SqlCommand("INSERT INTO bands (name) OUTPUT INSERTED.id VALUES (@BandName);", conn);

      SqlParameter nameParameter = new SqlParameter();
      nameParameter.ParameterName = "@BandName";
      nameParameter.Value = this.GetName();

      cmd.Parameters.Add(nameParameter);

      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        this._id = rdr.GetInt32(0);
      }
      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
    }
    public static Band Find(int id)
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM bands WHERE id = @BandId;", conn);
      SqlParameter bandIdParameter = new SqlParameter();
      bandIdParameter.ParameterName = "@BandId";
      bandIdParameter.Value = id.ToString();
      cmd.Parameters.Add(bandIdParameter);
      rdr = cmd.ExecuteReader();


      int foundBandId = 0;
      string foundBandName = null;

      while(rdr.Read())
      {
        foundBandName = rdr.GetString(0);
        foundBandId = rdr.GetInt32(1);
      }
      Band foundBand = new Band(foundBandName, foundBandId);

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return foundBand;
    }
    public bool AddVenue(string venueName)
    {
      var newVenue = new Venue(venueName);
      newVenue.Save();
      return AddVenue(newVenue);
    }
    public bool AddVenue(Venue venue)
    {
      bool venueAdded = false;
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr;
      conn.Open();

      SqlCommand cmd = new SqlCommand
      (
        "INSERT INTO bands_venues (band_id, venue_id) OUTPUT INSERTED.id VALUES (@BandId, @VenueId);",
        conn
      );

      SqlParameter bandIdParameter = new SqlParameter();
      bandIdParameter.ParameterName = "@BandId";
      bandIdParameter.Value = this.GetId();

      cmd.Parameters.Add(bandIdParameter);

      SqlParameter venueID = new SqlParameter();
      venueID.ParameterName = "@VenueId";
      venueID.Value = venue.GetId();

      cmd.Parameters.Add(venueID);

      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        venueAdded = true;
      }
      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return venueAdded;
    }
    public List<Venue> GetVenues()
    {
      List<Venue> venues = new List<Venue> {};
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand(
      "SELECT venues.* FROM bands JOIN bands_venues ON (bands.id = bands_venues.band_id) JOIN venues ON ( bands_venues.venue_id = venues.id) WHERE bands.id = @BandId;",
      conn
      );
      SqlParameter bandIdParameter = new SqlParameter();
      bandIdParameter.ParameterName = "@BandId";
      bandIdParameter.Value = _id;
      cmd.Parameters.Add(bandIdParameter);

      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        string venueName = rdr.GetString(0);
        int venueId = rdr.GetInt32(1);
        Venue newVenue = new Venue(venueName, venueId);
        venues.Add(newVenue);
      }

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }

      return venues;
    }
    public List<Venue> GetAllKnowVenues()
    {
      return Venue.GetAll();
    }

    public static void DeleteAll()
     {
       SqlConnection conn = DB.Connection();
       conn.Open();
       SqlCommand cmd = new SqlCommand("DELETE FROM bands;", conn);
       cmd.ExecuteNonQuery();
     }
  }
}
