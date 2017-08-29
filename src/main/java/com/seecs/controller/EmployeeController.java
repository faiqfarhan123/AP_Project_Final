package com.seecs.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.seecs.model.Employee;
import com.seecs.service.EmployeeService;

//Controller Class
@Controller
public class EmployeeController {

    //logger
    private static final Logger logger = Logger
            .getLogger(EmployeeController.class);

    public EmployeeController() {
        System.out.println("EmployeeController()");
    }
    //autowiring
    @Autowired
    private EmployeeService employeeService;

    //if '/' is requested, following code runs
    @RequestMapping(value = "/")
    public ModelAndView listEmployee(ModelAndView model) throws IOException {
        //gets list of all employees and displays it
        List<Employee> listEmployee = employeeService.getAllEmployees();
        model.addObject("listEmployee", listEmployee);
        model.setViewName("home");
        return model;
    }

    //if '/newEmployee' is requested, following code runs
    @RequestMapping(value = "/newEmployee", method = RequestMethod.GET)
    public ModelAndView newContact(ModelAndView model) {
        //adds employee object into database
        Employee employee = new Employee();
        model.addObject("employee", employee);
        model.setViewName("EmployeeForm");
        return model;
    }

    //if '/saveEmployee' is requested, following code runs
    @RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public ModelAndView saveEmployee(@ModelAttribute Employee employee) {

        // if employee id is 0 then creating the new employee
        if (employee.getId() == 0) {
            employeeService.addEmployee(employee);
        } // otherwise updating the existing employee
        else {
            employeeService.updateEmployee(employee);
        }
        //redirects to homepage
        return new ModelAndView("redirect:/");
    }
//if '/deleteEmployee' is requested, following code runs

    @RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
    public ModelAndView deleteEmployee(HttpServletRequest request) {
        //deletes the employee with the requested id 
        int employeeId = Integer.parseInt(request.getParameter("id"));
        employeeService.deleteEmployee(employeeId);
        //redirects to homepage
        return new ModelAndView("redirect:/");
    }
//if '/editEmployee' is requested, following code runs

    @RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
    public ModelAndView editContact(HttpServletRequest request) {
        //edits and updates the employee with the requested id
        int employeeId = Integer.parseInt(request.getParameter("id"));
        Employee employee = employeeService.getEmployee(employeeId);
        ModelAndView model = new ModelAndView("EmployeeForm");
        model.addObject("employee", employee);

        return model;
    }

}
