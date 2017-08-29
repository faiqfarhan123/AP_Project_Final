package com.seecs.dao;

import java.util.List;
import com.seecs.model.Employee;

//data access object for Employee class
public interface EmployeeDAO {
        //add employee
	public void addEmployee(Employee employee);

        //show all employees
	public List<Employee> getAllEmployees();

        //delete employee
	public void deleteEmployee(Integer employeeId);

        //update employee
	public Employee updateEmployee(Employee employee);

        //show employee
	public Employee getEmployee(int employeeid);
}
