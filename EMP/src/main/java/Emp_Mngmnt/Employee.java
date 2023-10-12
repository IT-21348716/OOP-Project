package Emp_Mngmnt;


public class Employee {
	protected int id;
	protected String Fname;
	protected String Lname;
	protected String gender;
	protected int age;
	protected String employeetype;
	protected String joineddate;
	protected String departmentname;
	protected String jobtitle;
	protected String salary;
	protected String noofleaves;
	protected String email;
	protected String telno;
	
	
	public Employee() {
	}
	
	public Employee(String Fname, String Lname, String gender, int age,  String employeetype, String joineddate, 
			String departmentname, String jobtitle, String salary, String noofleaves, String email, String telno ) {
		super();
		this.Fname = Fname;
		this.Lname = Lname;
		this.gender = gender;
		this.age = age;
		this.employeetype = employeetype;
		this.joineddate = joineddate;
		this.departmentname = departmentname;
		this.jobtitle = jobtitle;
		this.salary = salary;
		this.noofleaves = noofleaves;
		this. email =  email;
		this.telno = telno;
	}

	public Employee(int id, String Fname, String Lname, String gender, int age,  String employeetype, String joineddate, 
			String departmentname, String jobtitle, String salary, String noofleaves, String email, String telno) {
		super();
		this.id = id;
		this.Fname = Fname;
		this.Lname = Lname;
		this.gender = gender;
		this.age = age;
		this.employeetype = employeetype;
		this.joineddate = joineddate;
		this.departmentname = departmentname;
		this.jobtitle = jobtitle;
		this.salary = salary;
		this.noofleaves = noofleaves;
		this. email =  email;
		this.telno = telno;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return Fname;
	}

	public void setFname(String fname) {
		Fname = fname;
	}

	public String getLname() {
		return Lname;
	}

	public void setLname(String lname) {
		Lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmployeetype() {
		return employeetype;
	}

	public void setEmployeetype(String employeetype) {
		this.employeetype = employeetype;
	}

	public String getJoineddate() {
		return joineddate;
	}

	public void setJoineddate(String joineddate) {
		this.joineddate = joineddate;
	}

	public String getDepartmentname() {
		return departmentname;
	}

	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}

	public String getJobtitle() {
		return jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getNoofleaves() {
		return noofleaves;
	}

	public void setNoofleaves(String noofleaves) {
		this.noofleaves = noofleaves;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}
	
	
}

