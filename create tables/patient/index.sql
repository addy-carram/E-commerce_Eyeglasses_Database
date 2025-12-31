CREATE INDEX idx_patient_name ON Patient(last_name, first_name);
CREATE INDEX idx_patient_email ON Patient(email);
CREATE INDEX idx_patient_idnp ON Patient(idnp);
CREATE INDEX idx_patient_phone ON Patient(phone);
CREATE INDEX idx_patient_active ON Patient(is_active) WHERE is_active = 1;