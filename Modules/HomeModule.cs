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
    }
  }
}
