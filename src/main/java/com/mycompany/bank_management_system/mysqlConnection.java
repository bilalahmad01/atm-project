/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.bank_management_system;

/**
 *
 * @author Bilal Ahmad
 */
import java.sql.*;
public class mysqlConnection {
    Connection conn;
    Statement s;
    public mysqlConnection(){                 // Constructor
    try{                                      // for finding run time error
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankManagementSystem","root","");
      s = conn.createStatement();
    }catch(SQLException ex){
    System.out.println(ex);
    }
    }
}
