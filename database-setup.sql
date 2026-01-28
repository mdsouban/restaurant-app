-- Restaurant POS Database Tables
-- Run this script in DBeaver to create all required tables

-- 1. Menu table
CREATE TABLE IF NOT EXISTS menu (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

-- 2. Bills table
CREATE TABLE IF NOT EXISTS bills (
    id BIGSERIAL PRIMARY KEY,
    mobile VARCHAR(15) NOT NULL,
    total NUMERIC(10,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW()
);

-- 3. Bill items table
CREATE TABLE IF NOT EXISTS bill_items (
    id BIGSERIAL PRIMARY KEY,
    bill_id BIGINT REFERENCES bills(id) ON DELETE CASCADE,
    item_name VARCHAR(150) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    qty INT NOT NULL DEFAULT 1
);

-- Optional: Insert sample menu data
INSERT INTO menu (name, price) VALUES 
('Chicken Biryani', 250.00),
('Mutton Curry', 300.00),
('Fish Fry', 180.00),
('Veg Fried Rice', 150.00),
('Dal Tadka', 120.00)
ON CONFLICT DO NOTHING;

-- Verify tables created
SELECT 'menu' as table_name, COUNT(*) as record_count FROM menu
UNION ALL
SELECT 'bills' as table_name, COUNT(*) as record_count FROM bills
UNION ALL
SELECT 'bill_items' as table_name, COUNT(*) as record_count FROM bill_items;