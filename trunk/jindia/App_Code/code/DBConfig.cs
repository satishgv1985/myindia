using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;

namespace JayahoIndia {
    public class DBConfig {

        public DBConfig() {

        }

        public static string ConnectionString {
            get {
                return ConfigurationManager.ConnectionStrings["jayahoConnectionString"].ConnectionString;
            }
        }

        public static Connection createSQLConnection()
        {
            JayahoIndia.Connection conn = JayahoIndia.Connection.createSQLConnection(DBConfig.ConnectionString);
            return conn;
        }

        public static string Sanitize(string input) {
            List<char> allowed_chars = new List<char>("QWERTYUIOPASDFGHJKLZXCVBNMqwertyu\"'<>\\iopasdfghjklzxcvbnm1234567890-+=-.,;:[]{}_!@#$%^?&*()|/`~! ".ToCharArray());
            char CR = '\r';
            char LF = '\n';
            allowed_chars.Add(CR);
            allowed_chars.Add(LF);
            char[] src = input.ToCharArray();
            StringBuilder result = new StringBuilder(input.Length);
            foreach (char c in src) {
                if (allowed_chars.Contains(c))
                    result.Append(c);
            }
            result = result
                .Replace("\\", "\\\\")
                .Replace("\"", "\\\"")
                .Replace("'", "\\'")
                .Replace(CR.ToString(), "\\r")
                .Replace(LF.ToString(), "\\n");
            //.Replace("@", "\\@");

            // remove unwanted html tags and attributes **************************
            String x = result.ToString();
            x = Sanitize_rmBlockTag(x, "script");
            x = Sanitize_rmBlockTag(x, "iframe");
            x = Sanitize_rmBlockTag(x, "marquee");
            x = Sanitize_rmBlockTag(x, "img");
            x = Sanitize_rmBlockTag(x, "style");
            x = Sanitize_rmBlockTag(x, "object");
            x = Sanitize_rmBlockTag(x, "embed");

            return x;
        }

        private static string Sanitize_rmBlockTag(string input, string tag) {
            Regex RegexObj = new Regex("<" + tag + ".+>(.+)</" + tag + ">",
                RegexOptions.Singleline | RegexOptions.IgnoreCase);
            return RegexObj.Replace(input, "$1");
        }

    }

}
