-- ============================================================
-- Seed: More booking data for northstar-health tenant
-- Tenant ID  : 2b967285-e8b3-4822-86f1-c827dbfe3301
-- Run via    : Get-Content scripts\seed_more_data.sql | docker exec -i slotly-postgres-1 psql -U slotly_example_user -d slotly_example
-- ============================================================

-- ── New customers ─────────────────────────────────────────────────────────────
INSERT INTO customers (id, tenant_id, name, email, phone, created_at, updated_at)
VALUES
  ('9a111111-1111-4111-8111-111111111111','2b967285-e8b3-4822-86f1-c827dbfe3301','Yassine Kadiri',      'yassine.kadiri@example.ma',   '+212600000001', NOW(), NOW()),
  ('9a222222-2222-4222-8222-222222222222','2b967285-e8b3-4822-86f1-c827dbfe3301','Fatima Zahra El Fassi','fz.elfassi@example.ma',       '+212600000002', NOW(), NOW()),
  ('9a333333-3333-4333-8333-333333333333','2b967285-e8b3-4822-86f1-c827dbfe3301','Omar Tazi',           'omar.tazi@example.ma',         '+212600000003', NOW(), NOW()),
  ('9a444444-4444-4444-8444-444444444444','2b967285-e8b3-4822-86f1-c827dbfe3301','Kenza Bennani',       'kenza.bennani@example.ma',     '+212600000004', NOW(), NOW()),
  ('9a555555-5555-4555-8555-555555555555','2b967285-e8b3-4822-86f1-c827dbfe3301','Amina Alaoui',        'amina.alaoui@example.ma',      '+212600000005', NOW(), NOW()),
  ('9a666666-6666-4666-8666-666666666666','2b967285-e8b3-4822-86f1-c827dbfe3301','Reda Chraibi',        'reda.chraibi@example.ma',      '+212600000006', NOW(), NOW()),
  ('9a777777-7777-4777-8777-777777777777','2b967285-e8b3-4822-86f1-c827dbfe3301','Zineb Idrissi',       'zineb.idrissi@example.ma',     '+212600000007', NOW(), NOW()),
  ('9a888888-8888-4888-8888-888888888888','2b967285-e8b3-4822-86f1-c827dbfe3301','Hamza Sqalli',        'hamza.sqalli@example.ma',      '+212600000008', NOW(), NOW())
ON CONFLICT (tenant_id, email) DO NOTHING;

-- ── IDs reference ─────────────────────────────────────────────────────────────
-- Staff:
--   Amira   : ca8b67ed-b659-421b-87ee-3126c1695ad3
--   Nadia   : 7329d04f-4328-4345-a47e-3240fb67cb7e
--   Othmane : 71102d41-4521-4ae3-a141-f452038254bb
-- Services:
--   General (30+10) : 5be861d3-de9b-4ec2-beac-3c01dd8f9af0
--   Follow-up(20+10): 0d1071e5-2272-4a64-8b0c-4cc2348ebf7e
--   Physio (60+15)  : 24aab298-566f-404e-ba55-e8a01e101656
--   Nutrition(45+15): 4e3ec7c8-4704-4b92-b585-1a8c6a562e7f

-- ══════════════════════════════════════════════════════════════════════════════
-- TODAY: Saturday 2026-10-31  (Nadia works Sat 09:00–13:00)
-- ══════════════════════════════════════════════════════════════════════════════

-- Nadia – General  09:00–09:30
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-31 09:00:00+00','2026-10-31 09:30:00+00','2026-10-31 09:40:00+00',gen_random_uuid(),NOW(),NOW());

-- Nadia – Follow-up 09:40–10:00
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-31 09:40:00+00','2026-10-31 10:00:00+00','2026-10-31 10:10:00+00',gen_random_uuid(),NOW(),NOW());

-- Nadia – General 10:10–10:40
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-10-31 10:10:00+00','2026-10-31 10:40:00+00','2026-10-31 10:50:00+00',gen_random_uuid(),NOW(),NOW());

-- Nadia – Follow-up 10:50–11:10
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-10-31 10:50:00+00','2026-10-31 11:10:00+00','2026-10-31 11:20:00+00',gen_random_uuid(),NOW(),NOW());

-- Nadia – General 11:20–11:50
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-10-31 11:20:00+00','2026-10-31 11:50:00+00','2026-10-31 12:00:00+00',gen_random_uuid(),NOW(),NOW());

-- Amira – General (Sat override – admin direct insert) 09:00–09:30
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-31 09:00:00+00','2026-10-31 09:30:00+00','2026-10-31 09:40:00+00',gen_random_uuid(),NOW(),NOW());

-- Amira – Nutrition 09:40–10:25
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-10-31 09:40:00+00','2026-10-31 10:25:00+00','2026-10-31 10:40:00+00',gen_random_uuid(),NOW(),NOW());

-- Othmane – Physio (Sat override) 09:00–10:00
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-31 09:00:00+00','2026-10-31 10:00:00+00','2026-10-31 10:15:00+00',gen_random_uuid(),NOW(),NOW());

-- Othmane – General 10:15–10:45
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-10-31 10:15:00+00','2026-10-31 10:45:00+00','2026-10-31 10:55:00+00',gen_random_uuid(),NOW(),NOW());

-- ══════════════════════════════════════════════════════════════════════════════
-- OCTOBER 2026 – past weekdays  (all Completed / NoShow / Cancelled)
-- ══════════════════════════════════════════════════════════════════════════════

-- ── Oct 01 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-01 09:00:00+00','2026-10-01 09:30:00+00','2026-10-01 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-01 09:40:00+00','2026-10-01 10:00:00+00','2026-10-01 10:10:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-01 09:00:00+00','2026-10-01 10:00:00+00','2026-10-01 10:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-01 10:00:00+00','2026-10-01 10:45:00+00','2026-10-01 11:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 02 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-02 10:00:00+00','2026-10-02 10:30:00+00','2026-10-02 10:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-02 09:00:00+00','2026-10-02 09:30:00+00','2026-10-02 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-02 09:00:00+00','2026-10-02 10:00:00+00','2026-10-02 10:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 05 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-05 09:00:00+00','2026-10-05 09:30:00+00','2026-10-05 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-05 09:40:00+00','2026-10-05 10:00:00+00','2026-10-05 10:10:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-05 09:00:00+00','2026-10-05 09:45:00+00','2026-10-05 10:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','NoShow','2026-10-05 09:00:00+00','2026-10-05 10:00:00+00','2026-10-05 10:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 06 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-06 11:00:00+00','2026-10-06 11:30:00+00','2026-10-06 11:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-06 10:00:00+00','2026-10-06 10:20:00+00','2026-10-06 10:30:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-06 09:00:00+00','2026-10-06 10:00:00+00','2026-10-06 10:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 07 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Cancelled','2026-10-07 14:00:00+00','2026-10-07 14:30:00+00','2026-10-07 14:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-07 13:00:00+00','2026-10-07 13:45:00+00','2026-10-07 14:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-07 09:00:00+00','2026-10-07 09:30:00+00','2026-10-07 09:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 08 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','24aab298-566f-404e-ba55-e8a01e101656','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-08 09:00:00+00','2026-10-08 10:00:00+00','2026-10-08 10:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-08 09:00:00+00','2026-10-08 09:20:00+00','2026-10-08 09:30:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-08 10:00:00+00','2026-10-08 10:30:00+00','2026-10-08 10:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 09 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-09 10:00:00+00','2026-10-09 10:45:00+00','2026-10-09 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-09 11:00:00+00','2026-10-09 11:30:00+00','2026-10-09 11:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','NoShow','2026-10-09 09:00:00+00','2026-10-09 10:00:00+00','2026-10-09 10:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 12 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-12 09:00:00+00','2026-10-12 09:30:00+00','2026-10-12 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-12 09:40:00+00','2026-10-12 10:00:00+00','2026-10-12 10:10:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-12 09:00:00+00','2026-10-12 10:00:00+00','2026-10-12 10:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-12 10:00:00+00','2026-10-12 10:45:00+00','2026-10-12 11:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 13 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-13 14:00:00+00','2026-10-13 14:30:00+00','2026-10-13 14:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-13 09:00:00+00','2026-10-13 09:30:00+00','2026-10-13 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-13 10:00:00+00','2026-10-13 11:00:00+00','2026-10-13 11:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 14 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-14 11:00:00+00','2026-10-14 11:45:00+00','2026-10-14 12:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-14 10:00:00+00','2026-10-14 10:30:00+00','2026-10-14 10:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','71102d41-4521-4ae3-a141-f452038254bb','Cancelled','2026-10-14 09:00:00+00','2026-10-14 09:20:00+00','2026-10-14 09:30:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 15 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','24aab298-566f-404e-ba55-e8a01e101656','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-15 14:00:00+00','2026-10-15 15:00:00+00','2026-10-15 15:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-15 09:00:00+00','2026-10-15 09:30:00+00','2026-10-15 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-15 10:00:00+00','2026-10-15 10:45:00+00','2026-10-15 11:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 16 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-16 09:00:00+00','2026-10-16 09:30:00+00','2026-10-16 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-16 09:00:00+00','2026-10-16 09:20:00+00','2026-10-16 09:30:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-16 11:00:00+00','2026-10-16 12:00:00+00','2026-10-16 12:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 19 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-19 09:00:00+00','2026-10-19 09:30:00+00','2026-10-19 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-19 10:00:00+00','2026-10-19 10:45:00+00','2026-10-19 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-19 09:00:00+00','2026-10-19 10:00:00+00','2026-10-19 10:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 20 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-20 11:00:00+00','2026-10-20 11:30:00+00','2026-10-20 11:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-20 09:30:00+00','2026-10-20 10:00:00+00','2026-10-20 10:10:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-20 14:00:00+00','2026-10-20 14:20:00+00','2026-10-20 14:30:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 21 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-21 09:00:00+00','2026-10-21 09:30:00+00','2026-10-21 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-21 10:00:00+00','2026-10-21 11:00:00+00','2026-10-21 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-21 13:00:00+00','2026-10-21 13:45:00+00','2026-10-21 14:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 22 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-22 09:00:00+00','2026-10-22 09:30:00+00','2026-10-22 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-22 10:00:00+00','2026-10-22 10:30:00+00','2026-10-22 10:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-22 11:00:00+00','2026-10-22 12:00:00+00','2026-10-22 12:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 23 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-23 13:00:00+00','2026-10-23 13:45:00+00','2026-10-23 14:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-23 09:00:00+00','2026-10-23 09:20:00+00','2026-10-23 09:30:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-23 10:00:00+00','2026-10-23 10:30:00+00','2026-10-23 10:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 26 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-26 09:00:00+00','2026-10-26 09:30:00+00','2026-10-26 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-26 10:00:00+00','2026-10-26 11:00:00+00','2026-10-26 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-26 09:00:00+00','2026-10-26 09:45:00+00','2026-10-26 10:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 27 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-27 09:00:00+00','2026-10-27 09:30:00+00','2026-10-27 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-27 10:30:00+00','2026-10-27 11:00:00+00','2026-10-27 11:10:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-27 10:30:00+00','2026-10-27 11:30:00+00','2026-10-27 11:45:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 28 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-28 09:00:00+00','2026-10-28 09:45:00+00','2026-10-28 10:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-28 13:00:00+00','2026-10-28 13:30:00+00','2026-10-28 13:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-28 14:00:00+00','2026-10-28 14:20:00+00','2026-10-28 14:30:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 29 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-29 09:00:00+00','2026-10-29 09:30:00+00','2026-10-29 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-29 10:00:00+00','2026-10-29 11:00:00+00','2026-10-29 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-29 09:00:00+00','2026-10-29 09:45:00+00','2026-10-29 10:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Oct 30 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Completed','2026-10-30 09:00:00+00','2026-10-30 09:30:00+00','2026-10-30 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Completed','2026-10-30 09:30:00+00','2026-10-30 10:15:00+00','2026-10-30 10:30:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Completed','2026-10-30 10:00:00+00','2026-10-30 10:30:00+00','2026-10-30 10:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ══════════════════════════════════════════════════════════════════════════════
-- NOVEMBER 2026 – upcoming (Confirmed / Pending)
-- ══════════════════════════════════════════════════════════════════════════════

-- ── Nov 03 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-03 09:00:00+00','2026-11-03 09:30:00+00','2026-11-03 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-03 09:00:00+00','2026-11-03 10:00:00+00','2026-11-03 10:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-03 10:00:00+00','2026-11-03 10:45:00+00','2026-11-03 11:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 04 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-04 14:00:00+00','2026-11-04 14:30:00+00','2026-11-04 14:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-04 09:00:00+00','2026-11-04 09:20:00+00','2026-11-04 09:30:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-04 10:00:00+00','2026-11-04 11:00:00+00','2026-11-04 11:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 05 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-05 09:00:00+00','2026-11-05 09:30:00+00','2026-11-05 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-05 10:00:00+00','2026-11-05 10:45:00+00','2026-11-05 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-05 09:00:00+00','2026-11-05 09:30:00+00','2026-11-05 09:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 06 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-06 11:00:00+00','2026-11-06 11:30:00+00','2026-11-06 11:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-06 14:00:00+00','2026-11-06 15:00:00+00','2026-11-06 15:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-06 09:00:00+00','2026-11-06 09:20:00+00','2026-11-06 09:30:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 07 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-07 09:00:00+00','2026-11-07 09:30:00+00','2026-11-07 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-07 10:00:00+00','2026-11-07 10:45:00+00','2026-11-07 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-07 14:00:00+00','2026-11-07 14:30:00+00','2026-11-07 14:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 10 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-10 09:00:00+00','2026-11-10 09:30:00+00','2026-11-10 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-10 10:00:00+00','2026-11-10 11:00:00+00','2026-11-10 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-10 09:00:00+00','2026-11-10 09:30:00+00','2026-11-10 09:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 11 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-11 09:00:00+00','2026-11-11 09:20:00+00','2026-11-11 09:30:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-11 14:00:00+00','2026-11-11 14:30:00+00','2026-11-11 14:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-11 10:00:00+00','2026-11-11 10:45:00+00','2026-11-11 11:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 12 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-12 09:00:00+00','2026-11-12 09:30:00+00','2026-11-12 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-12 10:00:00+00','2026-11-12 11:00:00+00','2026-11-12 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-12 14:00:00+00','2026-11-12 14:20:00+00','2026-11-12 14:30:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 13 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-13 09:00:00+00','2026-11-13 09:30:00+00','2026-11-13 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-13 14:00:00+00','2026-11-13 14:45:00+00','2026-11-13 15:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-13 10:00:00+00','2026-11-13 11:00:00+00','2026-11-13 11:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 14 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-14 09:00:00+00','2026-11-14 09:30:00+00','2026-11-14 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-14 10:00:00+00','2026-11-14 10:30:00+00','2026-11-14 10:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-14 13:00:00+00','2026-11-14 13:45:00+00','2026-11-14 14:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 17 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-17 09:00:00+00','2026-11-17 09:30:00+00','2026-11-17 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-17 10:00:00+00','2026-11-17 11:00:00+00','2026-11-17 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-17 14:00:00+00','2026-11-17 14:30:00+00','2026-11-17 14:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 18 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-18 09:00:00+00','2026-11-18 09:30:00+00','2026-11-18 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-18 10:00:00+00','2026-11-18 10:45:00+00','2026-11-18 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-18 14:00:00+00','2026-11-18 14:20:00+00','2026-11-18 14:30:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 19 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-19 09:00:00+00','2026-11-19 09:30:00+00','2026-11-19 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-19 14:00:00+00','2026-11-19 15:00:00+00','2026-11-19 15:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-19 10:00:00+00','2026-11-19 10:30:00+00','2026-11-19 10:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 20 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-20 09:00:00+00','2026-11-20 09:30:00+00','2026-11-20 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-20 10:00:00+00','2026-11-20 10:45:00+00','2026-11-20 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-20 13:00:00+00','2026-11-20 14:00:00+00','2026-11-20 14:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 21 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-21 09:00:00+00','2026-11-21 09:30:00+00','2026-11-21 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-21 14:00:00+00','2026-11-21 14:30:00+00','2026-11-21 14:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-21 10:00:00+00','2026-11-21 10:45:00+00','2026-11-21 11:00:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 24 Mon ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-24 09:00:00+00','2026-11-24 09:30:00+00','2026-11-24 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-24 10:00:00+00','2026-11-24 11:00:00+00','2026-11-24 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a888888-8888-4888-8888-888888888888','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-24 14:00:00+00','2026-11-24 14:30:00+00','2026-11-24 14:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 25 Tue ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','6c1f9ecf-13d1-46c7-a340-5dd9988e9f20','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-25 09:00:00+00','2026-11-25 09:30:00+00','2026-11-25 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','c5083b6a-50b1-422c-bcbc-6c0e88d85ea0','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-25 10:00:00+00','2026-11-25 10:45:00+00','2026-11-25 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','89d2dde6-8710-4f31-91fa-0cf0cfa0e60b','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-25 13:00:00+00','2026-11-25 13:30:00+00','2026-11-25 13:40:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 26 Wed ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','117b4e07-f1fb-4c33-8075-78ac2f8c06c9','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-26 09:00:00+00','2026-11-26 09:30:00+00','2026-11-26 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','2efeed7e-b139-490d-91c4-a0ba6992018f','24aab298-566f-404e-ba55-e8a01e101656','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-26 10:00:00+00','2026-11-26 11:00:00+00','2026-11-26 11:15:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a111111-1111-4111-8111-111111111111','0d1071e5-2272-4a64-8b0c-4cc2348ebf7e','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-26 14:00:00+00','2026-11-26 14:20:00+00','2026-11-26 14:30:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 27 Thu ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a222222-2222-4222-8222-222222222222','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-27 09:00:00+00','2026-11-27 09:30:00+00','2026-11-27 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a333333-3333-4333-8333-333333333333','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','7329d04f-4328-4345-a47e-3240fb67cb7e','Pending','2026-11-27 10:00:00+00','2026-11-27 10:45:00+00','2026-11-27 11:00:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a444444-4444-4444-8444-444444444444','24aab298-566f-404e-ba55-e8a01e101656','71102d41-4521-4ae3-a141-f452038254bb','Confirmed','2026-11-27 13:00:00+00','2026-11-27 14:00:00+00','2026-11-27 14:15:00+00',gen_random_uuid(),NOW(),NOW());

-- ── Nov 28 Fri ────────────────────────────────────────────────────────────────
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a555555-5555-4555-8555-555555555555','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','ca8b67ed-b659-421b-87ee-3126c1695ad3','Confirmed','2026-11-28 09:00:00+00','2026-11-28 09:30:00+00','2026-11-28 09:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a666666-6666-4666-8666-666666666666','5be861d3-de9b-4ec2-beac-3c01dd8f9af0','7329d04f-4328-4345-a47e-3240fb67cb7e','Confirmed','2026-11-28 14:00:00+00','2026-11-28 14:30:00+00','2026-11-28 14:40:00+00',gen_random_uuid(),NOW(),NOW());
INSERT INTO bookings (id,tenant_id,customer_id,service_id,staff_id,status,starts_at,ends_at,blocked_until,version,created_at,updated_at) VALUES
(gen_random_uuid(),'2b967285-e8b3-4822-86f1-c827dbfe3301','9a777777-7777-4777-8777-777777777777','4e3ec7c8-4704-4b92-b585-1a8c6a562e7f','71102d41-4521-4ae3-a141-f452038254bb','Pending','2026-11-28 10:00:00+00','2026-11-28 10:45:00+00','2026-11-28 11:00:00+00',gen_random_uuid(),NOW(),NOW());
