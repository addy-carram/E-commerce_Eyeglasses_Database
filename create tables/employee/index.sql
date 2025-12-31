CREATE INDEX idx_employee_role ON Employee(id_role);
CREATE INDEX idx_employee_name ON Employee(last_name, first_name);
CREATE INDEX idx_employee_active ON Employee(is_active) WHERE is_active = 1;