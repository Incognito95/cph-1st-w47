package com.company;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
// import java.util.ArrayList;

public class Main {

    public static void main(String[] args) throws Exception {

        // calling the methods
        getPopulationOfAllCities();
        getPopulationGreaterThanFiveHundred();
        CityList();
        closeConnection();
    }

    // 4a - connect to database
    public static Connection getConnection() throws Exception {
        try {
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:8889/world";
            String username = "root";
            String password = "root";
            Class.forName(driver);

            Connection conn = DriverManager.getConnection(url, username, password);
            //   System.out.println("Connected");
            return conn;
        } catch (Exception e) {
            System.out.println(e);
        }


        return null;
    }

    // 4b - retrieves count of all cities in the city table
    public static void getPopulationOfAllCities() throws Exception {
        try {
            Connection con = getConnection();
            PreparedStatement statement = con.prepareStatement("SELECT COUNT(*) Population FROM city");

            ResultSet result = statement.executeQuery();

            while (result.next()) {
                System.out.println("The population of all cities: " + result.getString("Population"));
            }

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    // 4c - retrieves all cities with a population greater than 5.000.000
    public static void getPopulationGreaterThanFiveHundred() throws Exception {
        try {
            Connection con = getConnection();
            PreparedStatement statement = con.prepareStatement("SELECT Population, Name FROM country WHERE Population > 500000");

            ResultSet result = statement.executeQuery();

            System.out.println("Cities with population greater than 500,000: ");
            while (result.next()) {
                System.out.println(result.getString("Population"));
                System.out.println(result.getString("Name"));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    // 4d - class called City with relevant data fields, and populate an arraylist\<City\> with the results retrieved from the above task (c)
    private static void CityList() {
        // fields
      //  String name;
       // String population;

       // ArrayList<String> cityList = new ArrayList<String>();
       // cityList.add("this is an array!");
       // System.out.println(cityList);
    }

    // 4e - Override toString for the City class and print the arrayList to console.
    @Override public String toString() {
        return super.toString();
    }

    // 4f - close connection
    public static void closeConnection() throws Exception {
        try {
            Connection con = getConnection();
            if (con.isClosed()) {
                System.out.println("The connection is closed");
            }

        } catch(Exception e){
            e.printStackTrace();
        }
    }
}