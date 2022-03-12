using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace kargo_tms
{
    public class DatabaseGetSet
    {

        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["livedb"].ConnectionString);
            public Boolean DbQueryInsert(string query)
            {
                try
                {
                    SqlDataReader rd;
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand(query, con);
                    rd = cmd2.ExecuteReader();
                    con.Close();
                    return true;
                }
                catch (Exception e)
                {
                    con.Close();
                    return false;
                }
            }
            public DataTable DbQuerySelect(string query)
            {
                try
                {

                    DataTable dataTable = new DataTable();

                    SqlCommand cmd = new SqlCommand(query, con);
                    //SqlDataReader rd = cmd.ExecuteReader();
                    con.Open();

                    // create data adapter
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    // this will query your database and return the result to your datatable
                    da.Fill(dataTable);

                    con.Close();
                    return dataTable;
                }
                catch (Exception e)
                {
                    return null;
                }
            }

        }
    }