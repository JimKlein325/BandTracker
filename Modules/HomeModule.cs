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
      // Get["/band"] = _ => {
      //
      // }
      Post["/band/addEntirelyNewVenue"] = _ =>{
        Band band = Band.Find(Request.Form["band-id"]);
        band.AddVenue(Request.Form["venue-name"]);
        return View["band.cshtml", band];
      };
    }
  }
}
