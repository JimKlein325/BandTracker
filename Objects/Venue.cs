using System.Collections.Generic;
using System.Data.SqlClient;
using System;

namespace BandTracker.Objects
{
  public class Venue
  {
    private int _id;
    private string _name;

    public Venue(string name, int Id = 0)
    {
      _id = Id;
      _name = name;
    }

    public override bool Equals(System.Object otherVenue)
    {
      if (!(otherVenue is Venue))
      {
        return false;
      }
      else
      {
        Venue newVenue = (Venue) otherVenue;
        bool idEquality = (this.GetId() == newVenue.GetId());
        bool nameEquality = (this.GetName() == newVenue.GetName());
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
    public static List<Venue> GetAll()
    {
      List<Venue> allVenues = new List<Venue> {};
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM venues;", conn);
      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        string courseName = rdr.GetString(0);
        int courseId = rdr.GetInt32(1);
        Venue newVenue = new Venue(courseName, courseId);
        allVenues.Add(newVenue);
      }

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }

      return allVenues;
    }

    public void Save()
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr;
      conn.Open();

      SqlCommand cmd = new SqlCommand("INSERT INTO venues (name) OUTPUT INSERTED.id VALUES (@VenueName);", conn);

      SqlParameter nameParameter = new SqlParameter();
      nameParameter.ParameterName = "@VenueName";
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
    public static Venue Find(int id)
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM venues WHERE id = @VenueId;", conn);
      SqlParameter courseIdParameter = new SqlParameter();
      courseIdParameter.ParameterName = "@VenueId";
      courseIdParameter.Value = id.ToString();
      cmd.Parameters.Add(courseIdParameter);
      rdr = cmd.ExecuteReader();


      int foundVenueId = 0;
      string foundVenueName = null;

      while(rdr.Read())
      {
        foundVenueName = rdr.GetString(0);
        foundVenueId = rdr.GetInt32(1);
      }
      Venue foundVenue = new Venue(foundVenueName, foundVenueId);

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return foundVenue;
    }
    public void Delete(){
      SqlConnection conn = DB.Connection();
      conn.Open();
      SqlCommand cmd = new SqlCommand("DELETE FROM venues WHERE id = @id;", conn);
      SqlParameter venueIdParameter = new SqlParameter();
      venueIdParameter.ParameterName = "@id";
      venueIdParameter.Value = this.GetId();
      cmd.Parameters.Add(venueIdParameter);
      cmd.ExecuteNonQuery();
      if (conn != null)
      {
        conn.Close();
      }
    }
    public void Update(string name)
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr;
      conn.Open();
      SqlCommand cmd = new SqlCommand("UPDATE venues SET name = @NewName OUTPUT INSERTED.name WHERE id = @Id;", conn);
      SqlParameter newNameParameter = new SqlParameter();
      newNameParameter.ParameterName = "@NewName";
      newNameParameter.Value = name;
      cmd.Parameters.Add(newNameParameter);
      SqlParameter idParameter = new SqlParameter();
      idParameter.ParameterName = "@Id";
      idParameter.Value = this.GetId();
      cmd.Parameters.Add(idParameter);
      rdr = cmd.ExecuteReader();
      while(rdr.Read())
      {
        this._name = rdr.GetString(0);
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
    public bool AddBand(string bandName)
    {
      var newBand = new Band(bandName);
      newBand.Save();
      return AddBand(newBand);
    }
    public bool AddBand(Band band)
    {
      bool bandAdded = false;
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
      bandIdParameter.Value = band.GetId();

      cmd.Parameters.Add(bandIdParameter);

      SqlParameter nameParameter = new SqlParameter();
      nameParameter.ParameterName = "@VenueId";
      nameParameter.Value = this.GetId();

      cmd.Parameters.Add(nameParameter);

      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        bandAdded = true;
      }
      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return bandAdded;
    }
    public List<Band> GetBands()
    {
      List<Band> bands = new List<Band> {};
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand
      (
      "SELECT bands.* FROM venues JOIN bands_venues ON (venues.id = bands_venues.venue_id) JOIN bands ON (bands_venues.band_id = bands.id) WHERE venues.id = @VenueId;",
      conn
      );
      SqlParameter venuIdParameter = new SqlParameter();
      venuIdParameter.ParameterName = "@VenueId";
      venuIdParameter.Value = _id;
      Console.WriteLine("ID within Get Bands:" + _id.ToString());
      cmd.Parameters.Add(venuIdParameter);
      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        Console.WriteLine("adding band");
        string bandName = rdr.GetString(0);
        int bandId = rdr.GetInt32(1);
        Band newBand = new Band(bandName, bandId);
        bands.Add(newBand);

      }

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      Console.WriteLine("bands in GetBands: " + bands.Count);
      return bands;
    }

    public static void DeleteAll()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();
      SqlCommand cmd = new SqlCommand("DELETE FROM venues;", conn);
      cmd.ExecuteNonQuery();
    }
  }
}
