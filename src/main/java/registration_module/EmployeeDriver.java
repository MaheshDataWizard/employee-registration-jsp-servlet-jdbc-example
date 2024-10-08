package registration_module;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmployeeDriver {

    public int registerEmployee(Employee employee) throws ClassNotFoundException {
        // Adjusted SQL to exclude the ID from the insert statement
        String insert_sql_query = "INSERT INTO employee (firstName, lastName, username, password, address, contact) VALUES (?, ?, ?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_details?useSSL=false", "root", "1111");
             PreparedStatement stmt = con.prepareStatement(insert_sql_query, PreparedStatement.RETURN_GENERATED_KEYS)) {

            // Set parameters for the prepared statement without ID
            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setString(3, employee.getUsername());
            stmt.setString(4, employee.getPassword());
            stmt.setString(5, employee.getAddress());
            stmt.setString(6, employee.getContact());

            System.out.println(stmt);

            // Execute update and return the result
            result = stmt.executeUpdate();

            // Fetch the generated ID if the insertion was successful
            if (result > 0) {
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        generatedKeys.getLong(1);
//                        System.out.println("Inserted Employee ID: " + newId);
                        // You can use newId as needed
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
