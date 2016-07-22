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
      //Get["/"]=_=>View["index.cshtml"];

      Get["/"]=_=>
      {
        List<string> model = new List<string> {"one", "two", "three"};
        return View["patron.cshtml", model];
      };

    }
  }
}
