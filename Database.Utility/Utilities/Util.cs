using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Database.Utility.Utilities
{
    public class Util
    {
        public static Boolean IsNullOrEmpty(String str)
        {
            return (str == null || str == String.Empty);
        }

        public static Boolean IsNotNullAndEmpty(String str)
        {
            return (str != null && str != String.Empty);
        }

        public static Boolean IsNull(Object obj)
        {
            return obj == null;
        }

        public static Boolean IsNotNull(Object obj)
        {
            return obj != null;
        }
    }
}