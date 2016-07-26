using Nancy;
using System.Collections.Generic;
using System;
using BandTracker.Objects;

namespace BandTracker
{
  public class HomeModule : NancyModule
  {
    public HomeModule()
    {
      Get["/"]=_=> {
        List<Band> bands = Band.GetAll();
        List<Venue> venues = Venue.GetAll();
        Dictionary<string, object> model = new Dictionary<string, object>();
        model.Add("bands", bands);
        model.Add("venues", venues);
        return View["/index.cshtml", model];
      };
      Get["/band/{id}"] = parameters => {
        Band model = Band.Find(parameters.id);
        return View["band.cshtml", model];
      };
      Post["/band/add/venue"] = _ =>{
        Band band = Band.Find(Request.Form["band-id"]);
        int selectedVenue = Request.Form["venue-select-name"];
        string name = Request.Form["venue-name"];
        if(! String.IsNullOrEmpty(name)){
          Venue newVenue = new Venue(name);
          newVenue.Save();
          band.AddVenue(newVenue);
        }
        else if(selectedVenue > 0)
        {
          band.AddVenue(Venue.Find(selectedVenue));
        }
        // fall through condition does not add a Venue since none was selected and there is no text input
        return View["band.cshtml", band];
      };
      Get["/venue/{id}"] = parameters => {
        Venue model = Venue.Find(parameters.id);
        return View["venue.cshtml", model];
      };
      Post["/venue/add/band"] = _ =>{
        Venue venue = Venue.Find(Request.Form["venue-id"]);
        int selectedBand = Request.Form["band-select-name"];
        string name = Request.Form["band-name"];
        if(! String.IsNullOrEmpty(name))
        {
          Band newBand = new Band(name);
          newBand.Save();
          venue.AddBand(newBand);
        }
        else if(selectedBand > 0)
        {
          venue.AddBand(Band.Find(selectedBand));
        }
        // fall through condition does not add a Venue since none was selected and there is no text input
        return View["venue.cshtml", venue];
      };
      Get["/venue/edit/{id}"] = parameters => {
        Venue model = Venue.Find(parameters.id);
        return View["venue_edit.cshtml", model];
      };

      Patch["venue/edit/{id}"] = parameters => {
        Venue selectedVenue = Venue.Find(parameters.id);
        selectedVenue.Update(Request.Form["venue-name"]);
        return View["venue.cshtml", selectedVenue];
      };
      Delete["venue/delete/{id}"] = parameters =>{
        Venue selectedVenue = Venue.Find(parameters.id);
        selectedVenue.Delete();
        List<Band> bands = Band.GetAll();
        List<Venue> venues = Venue.GetAll();
        Dictionary<string, object> model = new Dictionary<string, object>();
        model.Add("bands", bands);
        model.Add("venues", venues);
        return View["/index.cshtml", model];
      };
    }
  }
}
