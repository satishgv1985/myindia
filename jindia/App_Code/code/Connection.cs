using System;
using System.Configuration;
using System.Data.Common;
using System.Collections.Generic;
using System.Text;
using System.Web.UI;
using System.Data.SqlClient;

namespace JayahoIndia
{
    public class Connection : IDisposable {

        /// <summary>
        /// Private constructor.
        /// </summary>
        private Connection() {
            
        }

        private DbConnection conn;
        private DbCommand cmd;
        private bool locked = false;
        public DbConnection UnderlyingConnection {
            get { return conn; }
            //set { conn = value; }
        }

        public DbCommand UnderlyingCommand {
            get { return cmd; }
            //set { cmd = value; }
        }

        private void wait() {
            while (locked) {
                System.Threading.Thread.Sleep(60);
            }
        }

        public int ExecuteNonQuery(string query) {
            wait();
            try {
                locked = true;
                string sql = query;
                conn.Open();
                cmd.CommandText = sql.Trim();
                cmd.CommandTimeout = 5;
                return cmd.ExecuteNonQuery();
            }
            catch (Exception x) {
                locked = false;
                throw x;
            }
            finally {
                locked = false;
                conn.Close();
            }
        }

        private DbDataReader my_reader = null;
        public void ExecuteReader(string query) {
            wait();
            if (conn.State != System.Data.ConnectionState.Open)
                conn.Open();
            cmd.CommandText = query;
            DbDataReader r = cmd.ExecuteReader();
            my_reader = r;
            locked = true;
        }

        public void ExecuteReader(string query, params object[] args) {
            ExecuteReader(string.Format(query, args));
        }
        

        public DbDataReader Reader {
            get { return my_reader; }
        }

        /// <summary>
        /// Closes the open reader. Never throws an exception.
        /// </summary>
        public void CloseReader() {
            try {
                if (my_reader != null) {
                    my_reader.Close();
                }
            }
            catch {
            }
            finally {
                try {
                    conn.Close();
                }
                catch (Exception x) { 
                    x.GetType();
                }
                locked = false;
                my_reader = null;
            }
        }

        public Object ExecuteScalar(String sql) {
            wait();
            locked = true;
            Object result;
            try {
                conn.Open();
                cmd.CommandText = sql;
                result = cmd.ExecuteScalar();
            }
            catch (Exception x) {
                result = x;
            }
            finally {
                locked = false;
                conn.Close();
            }
            return result;
        }

        /// <summary>
        /// Creates and initializes MySql.Data.MySqlClient objects
        /// </summary>
        /// <param name="connectionString"></param>
        public static Connection createSQLConnection(string connectionString) {
            Connection c = new Connection();
            c.conn = new SqlConnection(connectionString);
            c.cmd = new SqlCommand();
            c.cmd.Connection = c.conn;
            return c;
        }

        //   Short term fixes
        //   >> from http://www.15seconds.com/issue/040830.htm
        // 
        // 
        //   What if you discovered the connection pooling issue in production and you cannot take it offline to troubleshoot? Turn pooling off. Even though your app will take a performance hit, it shouldn't crash! Your memory footprint will also grow. What if it doesn't crash all that often, and you don't want to take a performance hit? Try this: 
        //   conn = new SqlConnection();
        //   try 
        //   {
        //     conn.ConnectionString = "integrated security=SSPI;SERVER=YOUR_SERVER;DATABASE=YOUR_DB_NAME;Min Pool Size=5;Max Pool Size=60;Connect Timeout=2;";     // Notice Connection Timeout set to only two seconds!
        //     conn.Open();
        //   }
        //   catch(Exception)
        //   {
        //     if (conn.State != ConnectionState.Closed) conn.Close();
        //     conn.ConnectionString = "integrated security=SSPI;SERVER=YOUR_SERVER;DATABASE=YOUR_DB_NAME;Pooling=false;Connect Timeout=45;";
        //     conn.Open();
        //   If I fail to open a pooled connection within two seconds, I am trying to open a non-pooled connection. This introduces a two second delay when no pooled connections are available, but if your connection leak doesn't show most of the time, this is a good steam valve.


        public void Dispose() {
            //try { conn.Dispose(); }             catch { }
            //try { cmd.Dispose(); }              catch { }
            this.CloseReader();
            try { this.my_reader.Dispose(); }   catch { }
        }

        public bool HasRecords(string SQL) {
            try {
                this.ExecuteReader(SQL);
                return (this.Reader.Read());
            }
            catch {
                return false;
            }
            finally {
                this.CloseReader();
            }
        }

    }


}
