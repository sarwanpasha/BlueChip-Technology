﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class GlobalClass
{
    public static SqlDataAdapter adap;
    public static DataTable dt; 
    // Stored image path before updating the record
    public static string imgEditPath;
    public static string imgEditPath1;

}