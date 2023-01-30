/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package G1DB_Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author maryam
 */
public class G1_DB_Connection {
    
    String G1URL = "jdbc:mysql://localhost:3306/muganndb?useSSL=false";
    String G1UserName = "GroupB10_ 1";
    String G1Password = "GroupB10_ 1123";
    Connection G1Connection = null;
    PreparedStatement G1preparedStmt = null;
    ResultSet G1resultSet = null;
    String G1sqlQuery = "";

    public G1_DB_Connection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(G1_DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            G1Connection = DriverManager.getConnection(G1URL, G1UserName, G1Password);
        } catch (SQLException ex) {
            Logger.getLogger(G1_DB_Connection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ResultSet DisplayClients() {
        G1sqlQuery = "SELECT * FROM CLIENT;";
        try {
            G1preparedStmt = G1Connection.prepareStatement(G1sqlQuery);
            G1resultSet = G1preparedStmt.executeQuery();
        } catch (SQLException e) {
        }
        return G1resultSet;
    }
    
    public ResultSet DisplayCases() {
        G1sqlQuery = "SELECT * FROM CASE;";
        try {
            G1preparedStmt = G1Connection.prepareStatement(G1sqlQuery);
            G1resultSet = G1preparedStmt.executeQuery();
        } catch (SQLException e) {
        }
        return G1resultSet;
    }

    public boolean isLawyerExist(String Username, String Password) {
        boolean isLawyerExist = false;
        G1sqlQuery = "SELECT * FROM LAWYER WHERE Username = '" + Username + "' AND Password = '" + Password + "'";
        try {
            G1preparedStmt = G1Connection.prepareStatement(G1sqlQuery);
            G1resultSet = G1preparedStmt.executeQuery();
            isLawyerExist = G1resultSet.next();
        } catch (SQLException e) {
            System.out.println("Lawyer is not exist!");
        }
        return isLawyerExist;
    }

    public int AddClient(int Client_ID, int Phone_number, String Email, String Name) {
        G1sqlQuery = "insert into CLIENT(Client_ID, Phone_number ,Email ,Name)values('" + Client_ID + "','" + Phone_number
                + "','" + Email + "','" + Name + "');";
        
        int i = 0;
        try {
            Statement stmt = G1Connection.createStatement();
            i = stmt.executeUpdate(G1sqlQuery);

        } catch (SQLException e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }
    
    public int AddCase(int Case_ID, int Client_ID, String Title, String Category, String Status, String Fees) {
        G1sqlQuery = "insert into Case(Case_ID, Client_ID, Title, Category,Status, Fees)values('" + Case_ID + "','" + Client_ID
                + "','" +Title + "','" + Category + "','" +Status+ "','" + Fees + "');";
        int i = 0;
        try {
            Statement stmt = G1Connection.createStatement();
            i = stmt.executeUpdate(G1sqlQuery);

        } catch (SQLException e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }
        
        public int DeleteClient(int Client_ID) {
        G1sqlQuery = "DELETE FROM CLIENT WHERE Client_ID='" + Client_ID + "';";    
        int i = 0;
        try {
            Statement stmt = G1Connection.createStatement();
            i = stmt.executeUpdate(G1sqlQuery);

        } catch (SQLException e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }
        public int DeleteCase(int Case_ID) {
        G1sqlQuery = "DELETE FROM CASE WHERE Case_ID='" + Case_ID + "';";    
        int i = 0;
        try {
            Statement stmt = G1Connection.createStatement();
            i = stmt.executeUpdate(G1sqlQuery);

        } catch (SQLException e) {
            //System.out.print(e);
            e.printStackTrace();
        }
        return i;
    }
}
