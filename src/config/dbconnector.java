/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;/**
 *
 * @author SCC-PC10
 */
public class dbconnector {
    private Connection connect;

    public dbconnector(){
        try{
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/logger", "root", "");
            }catch(SQLException e){
                System.err.println("Cannot connect to database: " + e.getMessage());
            }
        
     
    }

    

//for SELECT or DISPLAY data, must be inside the connector class
    public ResultSet getData(String sql) throws SQLException {
        Statement statement = connect.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        return resultSet;
    }
   
       //for INSERT or CREATE data, must be inside the connector class
    public int insertData(String sql){
        int result;
            try{
            PreparedStatement pstmt = connect.prepareStatement(sql);
           
            pstmt.executeUpdate();
            System.out.println("Inserted Successfully!");
            pstmt.close();
            }catch(SQLException e){
                System.out.println("Connection Error: "+e);
            }
             return result = 0;
    }
   
      //for DELETE or REMOVE data, must be inside the connector class
    public void deleteData(int id) {
    try {
        PreparedStatement stmt = connect.prepareStatement("DELETE FROM tbl_student WHERE st_id = ?");
        stmt.setInt(1, id);
        int rowsDeleted = stmt.executeUpdate();
        if (rowsDeleted > 0) {
            System.out.println(rowsDeleted + " rows were deleted.");
        } else {
            System.out.println("No rows were deleted.");
        }
        stmt.close();
        connect.close();
    } catch (SQLException e) {
        System.out.println("Error deleting data: " + e.getMessage());
    }
}
    
   public void deleteData1(int ISBN) {
    try {
        PreparedStatement stmt = connect.prepareStatement("DELETE FROM tbl_books WHERE ISBN = ?");
        stmt.setInt(1, ISBN);
        int rowsDeleted = stmt.executeUpdate();
        if (rowsDeleted > 0) {
            System.out.println(rowsDeleted + " rows were deleted.");
        } else {
            System.out.println("No rows were deleted.");
        }
        stmt.close();
        connect.close();
    } catch (SQLException e) {
        System.out.println("Error deleting data: " + e.getMessage());
    }
}  
   
      //for UPDATE or CHANGE data, must be inside the connector class
    public int updateData(String sql){
        int num = 0;
        try {
       
            String query = sql;
            PreparedStatement pstmt = connect.prepareStatement(query);
            int rowsUpdated = pstmt.executeUpdate();
            if(rowsUpdated > 0) {
                System.out.println("Data updated successfully!");
                num = 1;
            } else {
                System.out.println("Data update failed!");
                num = 0;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
       
        return num;
    }
}