using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public static class getter_setter_for_variables
{
    private static string emailLabel;
    private static bool unhiding;

    public static void setLabel(string a)
    {
       emailLabel = a;
    }
    public static string getLabel()
    {
        return emailLabel;
    } 
    public static void setunhide(bool a)
    {
        unhiding = a;
    }
    public static bool getunhide()
    {
        return unhiding;
    }
}