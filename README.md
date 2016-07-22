# Band Tracker - O - Rama

#### C# skill demonstration project:  Week 4 - July, 2016

#### By Jim Klein

## Description

Band Tracker - O - Rama is a sample application for demonstrating basic proficiency in basic SQL queries, HTTP CRUD method use, BDD coding techniques, and creating simple web apps using Nancy, Razor and related technologies.

A user can view bands, venues, and add bands to venues and venues to bands.

## Setup/Installation Requirements
* Install this project by cloning this repository:
    https://github.com/JimKlein325/BandTracker.git
* Compile using the PowerShell "dnx kestrel" command in the project directory
* View the app in your browser at "localhost:5004"

##Database Notes
* Production database: band_tracker
* Development database: band_tracker_test
* Resource table names:  venues, bands, bands_venues

## Database Set up with Microsoft SQL Server Management Studio (SSMS)
1. Open SSMS
2. Select File > Open > File and select the .sql files: band_tracker.sql & band_tracker_test.sql
3. Save the file.
4. Click ! Execute.
5. Verify that the database has been created and the schema and/or data imported.

## Technologies Used
* Nancy, a lightweight web application framework, used to create websites using C#.
* Razor, a view engine that gives us a way to combine C# code with markup with an easy-to-use syntax.
* HTML
* Bootstrap
* Microsoft SQL Server Management Studio (SSMS), is an integrated environment that provides a number of tools and an interface for managing and developing all parts of SQL Server.
* Used the same URL and different HTTP methods to convey what action the server should take, which is part of a widely-accepted approach for designing web applications called REST, or REpresentational State Transfer. If you follow REST, each part of your application is modeled as a resource.
* CRUD functionality with HTTP Methods and RESTful naming conventions for routes, SQL commands:
      Create a stylist/client: POST
      Read (View) a stylist/client: GET
      Update a stylist/client: PATCH
      Delete a stylist/client: DELETE



### License
MIT License  Copyright (c) 2016 **Jim Klein**
