package Emp_Mngmnt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.GroupLayout.Group;

import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class EmployeeDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/employeesmanagemet?useSSL=false";		
	private String jdbcEmployeename = "root";
	private String jdbcPassword = "It21348716#";

	private static final String INSERT_EMPLOYEES_SQL = "INSERT INTO employees" + "  (Fname, Lname, gender, age, employeetype, joineddate,  departmentname, jobtitle,  salary, noofleaves, email, telno) VALUES "
			+ " (?, ?, ?,?, ?, ?,?, ?, ?,?, ?, ?);";

	private static final String SELECT_USER_BY_ID = "select id,Fname, Lname, gender, age, employeetype, joineddate,  departmentname, jobtitle,  salary, noofleaves, email, telno from employees where id =?";
	private static final String SELECT_ALL_EMPLOYEES = "select * from employees";
	private static final String DELETE_EMPLOYEES_SQL = "delete from employees where id = ?;";
	private static final String UPDATE_EMPLOYEES_SQL = "update employees set Fname = ?, Lname= ?, gender =?, age = ?, employeetype= ?, joineddate =?, departmentname = ?, jobtitle= ?, salary =?, noofleaves = ?, email= ?, telno =? where id = ?;";
	private static final String SELECT_EMPLOYEES_BY_ID = "select * from employees where id = ?;";;

	public EmployeeDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcEmployeename, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertEmployee(Employee employee) throws SQLException {
		System.out.println(INSERT_EMPLOYEES_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEES_SQL)) {
			preparedStatement.setString(1, employee.getFname());
			preparedStatement.setString(2, employee.getLname());
			preparedStatement.setString(3, employee.getGender());
			preparedStatement.setInt   (4, employee.getAge());
			preparedStatement.setString(5, employee.getEmployeetype());
			preparedStatement.setString(6, employee.getJoineddate());
			preparedStatement.setString(7, employee.getDepartmentname());
			preparedStatement.setString(8, employee.getJobtitle());
			preparedStatement.setString(9, employee.getSalary());
			preparedStatement.setString(10, employee.getNoofleaves());
			preparedStatement.setString(11, employee.getEmail());
			preparedStatement.setString(12, employee.getTelno());
			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Employee selectEmployee(int id) {
		Employee employee = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EMPLOYEES_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String Fname = rs.getString("Fname");
				String Lname = rs.getString("Lname");
				String gender = rs.getString("gender");
				int age       = rs.getInt("age");
				String employeetype = rs.getString("employeetype");
				String joineddate = rs.getString("joineddate");
				String departmentname = rs.getString("departmentname");
				String jobtitle = rs.getString("jobtitle");
				String salary = rs.getString("salary");
				String noofleaves = rs.getString("noofleaves");
				String email = rs.getString("email");
				String telno = rs.getString("telno");
				employee = new Employee(id, Fname, Lname, gender, age, employeetype, joineddate,  departmentname, jobtitle,  salary, noofleaves, email, telno);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return employee;
	}

	public List<Employee> selectAllEmployees() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Employee> employees = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEES);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String Fname = rs.getString("Fname");
				String Lname = rs.getString("Lname");
				String gender = rs.getString("gender");
				int age       = rs.getInt("age");
				String employeetype = rs.getString("employeetype");
				String joineddate = rs.getString("joineddate");
				String departmentname = rs.getString("departmentname");
				String jobtitle = rs.getString("jobtitle");
				String salary = rs.getString("salary");
				String noofleaves = rs.getString("noofleaves");
				String email = rs.getString("email");
				String telno = rs.getString("telno");
				int id = rs.getInt("id");
				System.out.println(Fname);
				Employee employee = new Employee(id, Fname, Lname, gender, age, employeetype, joineddate,  departmentname, jobtitle,  salary, noofleaves, email, telno);
			    employees.add(employee);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return employees;
	}

	public boolean deleteEmployee(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_EMPLOYEES_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateEmployee(Employee employee) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_EMPLOYEES_SQL);) {
			statement.setString(1, employee.getFname());
			statement.setString(2, employee.getLname());
			statement.setString(3, employee.getGender());
			statement.setInt   (4, employee.getAge());
			statement.setString(5, employee.getEmployeetype());
			statement.setString(6, employee.getJoineddate());
			statement.setString(7, employee.getDepartmentname());
			statement.setString(8, employee.getJobtitle());
			statement.setString(9, employee.getSalary());
			statement.setString(10, employee.getNoofleaves());
			statement.setString(11, employee.getEmail());
			statement.setString(12, employee.getTelno());
			statement.setInt   (13, employee.id);

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
