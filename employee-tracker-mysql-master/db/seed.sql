USE employee_db;

INSERT INTO department
    (id, name)
VALUES
    (NULL, "Human Resources"),
    (NULL, "Operations"),
    (NULL, "Finance"),
    (NULL, "Marketing"),
    (NULL, "Sales"),
    (NULL, "Information Technology");

INSERT INTO role
    (id, department_id, title, salary)
VALUES
    (NULL, 1, "HR Manager", 60000),
    (NULL, 1, "HR Advisor", 25000),
    (NULL, 2, "Operations Lead", 70000),
    (NULL, 2, "Operations Analyst", 30000),
    (NULL, 3, "Internal Auditor", 70000),
    (NULL, 3, "Accountant", 50000),
    (NULL, 4, "Events Officer", 40000),
    (NULL, 4, "Marketing Assistant", 20000),
    (NULL, 5, "Sales Manager", 80000),
    (NULL, 5, "Sales Advisor", 40000),
    (NULL, 6, "Junior Developer", 25000),
    (NULL, 6, "Network Engineer", 40000)

INSERT INTO employee
    (id, first_name, last_name, role_id, manager_id)
VALUES
    (NULL, "Marvin", "Hernandez", 12, NULL),
    (NULL, "Jennifer", "Chan", 11, 3),
    (NULL, "Ora", "Carter", 2, 10),
    (NULL, "Woodrow", "Stevens", 3, NULL),
    (NULL, "Owen", "Hampton", 4, 4),
    (NULL, "Irvin", "Newman", 10, 9),
    (NULL, "Rafael", "Wheeler", 7, NULL),
    (NULL, "Jana", "Hanson", 2, 10),
    (NULL, "Casey", "Huff", 9, NULL),
    (NULL, "Don", "Floyd", 1, NULL),
    (NULL, "Terri", "Lloyd", 12, NULL)