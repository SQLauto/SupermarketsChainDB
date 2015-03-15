﻿namespace SupermarketsChainDb.Manager
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using Oracle.DataAccess.Client;
    using SupermarketsChainDB.Data;
    using SupermarketsChainDB.Models;

    public static class OracleToSqlDb
    {
        private static string ConnectionString = Connection.GetOracleConnectionString();
        private static OracleConnection con;

        public static void MigrateToSql()
        {
            MigrateMeasures();
            MigrateVendors();
            MigrateProducts();
        }

        private static void Connect()
        {
            var con = new OracleConnection();
            if (OracleConnection.IsAvailable)
            {
                con.ConnectionString = "context connection=true";
            }
            else
            {
                con = new OracleConnection { ConnectionString = ConnectionString };
                con.Open();
                Console.WriteLine("Connected to Oracle" + con.ServerVersion);
            }
        }

        private static void MigrateMeasures()
        {
            SupermarketSystemData data = new SupermarketSystemData();
            con = new OracleConnection { ConnectionString = ConnectionString };
            con.Open();
            OracleCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT M_ID, MEASURE_NAME FROM MEASURE_UNITS";

            using (OracleDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    Measure measure = new Measure();
                    measure.Id = int.Parse(reader["M_ID"].ToString());
                    measure.MeasureName = (string)reader["MEASURE_NAME"];

                    data.Measures.Add(measure);

                }

                data.SaveChanges();
            }

            Close();
        }

        private static void MigrateVendors()
        {
            SupermarketSystemData data = new SupermarketSystemData();
            con = new OracleConnection { ConnectionString = ConnectionString };
            con.Open();
            OracleCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT V_ID,VENDOR_NAME FROM VENDORS";

            using (OracleDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    Vendor vendor = new Vendor();
                    vendor.Id = int.Parse(reader["V_ID"].ToString());
                    vendor.VendorName = (string)reader["VENDOR_NAME"];

                    data.Vendors.Add(vendor);
                }

                data.SaveChanges();
            }
            Close();
        }


        private static void MigrateProducts()
        {
            SupermarketSystemData data = new SupermarketSystemData();
            con = new OracleConnection { ConnectionString = ConnectionString };
            con.Open();
            OracleCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT P_ID, " +
                                    "VENDOR_ID," +
                                    "PRODUCT_NAME, " +
                                    "MEASURE_ID, " +
                                    "PRICE, " +
                                    "PRODUCT_TYPE " +
                              "FROM PRODUCTS";

            using (OracleDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    Product product = new Product();
                    // for debugging
                    product.Id = int.Parse(reader["P_ID"].ToString());
                    product.VendorId = int.Parse(reader["VENDOR_ID"].ToString());
                    product.ProductName = reader["PRODUCT_NAME"].ToString();
                    product.MeasureId = int.Parse(reader["MEASURE_ID"].ToString());
                    product.Price = decimal.Parse(reader["PRICE"].ToString());
                    product.ProductType = (ProductType)Enum.Parse(typeof(ProductType), reader["PRODUCT_TYPE"].ToString());

                    data.Products.Add(product);

                }

                data.SaveChanges();
            }
            Close();
        }

        private static void Close()
        {
            con.Close();
            con.Dispose();
        }
    }
}