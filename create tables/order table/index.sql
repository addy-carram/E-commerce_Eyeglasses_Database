CREATE INDEX idx_order_patient ON  Order_Table(id_patient);
CREATE INDEX idx_order_date ON Order_Table(order_date);
CREATE INDEX idx_order_order_status ON Order_Table(id_order_status);
CREATE INDEX idx_order_type ON Order_Table(total_amount);
CREATE INDEX idx_order_payment_status ON Order_Table(id_payment_status);
CREATE INDEX idx_order_payment_method ON Order_Table(id_payment_method);
