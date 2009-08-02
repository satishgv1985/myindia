using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


namespace bherila {
    public class DBCache {

        public static DateTime EmptyDate {
            get { return new DateTime(10); }
        }


        public static void Put(string key, string value, DateTime expires) {
            Connection c = DBConfig.GetMySQLConnection();
            string SQL = string.Format("INSERT INTO cache (`key`, `value`, `expires`) VALUES ('{0}', '{1}', '{2}') ON DUPLICATE KEY UPDATE `value` = '{1}', `expires` = '{2}'",
                DBConfig.Sanitize(key.ToLower()),
                DBConfig.Sanitize(value),
                expires.Ticks.ToString());
            c.ExecuteNonQuery(SQL);
            SQL = string.Format("DELETE FROM cache WHERE `expires` < {0}",
                DateTime.Now.Ticks.ToString());
            c.ExecuteNonQuery(SQL);
            c.Dispose();
        }

        public static string Get(string Key, DateTime Expires) {
            Connection Conn = DBConfig.GetMySQLConnection();



            string SQL = string.Format("DELETE FROM cache WHERE `expires` < {0}",
                DateTime.Now.Ticks.ToString());
            Conn.ExecuteNonQuery(SQL);



            SQL = string.Format("SELECT `value` FROM cache WHERE `key` = '{0}' LIMIT 1",
                DBConfig.Sanitize(Key.ToLower()));
            string RetVal = null;
            try {
                Conn.ExecuteReader(SQL);
                if (Conn.Reader.Read())
                    RetVal = Conn.Reader.GetString(0);
                Conn.Reader.Close();
            }
            catch { }



            if (Expires.Ticks != 10) {
                SQL = string.Format("UPDATE cache SET `expires` = '{0}' WHERE `key` = '{1} LIMIT 1",
                    Expires.Ticks.ToString(),
                    DBConfig.Sanitize(Key.ToLower()));
                Conn.ExecuteNonQuery(SQL);
            }



            return RetVal;
        }

    }
}
