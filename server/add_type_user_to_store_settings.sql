
-- Add type_user column to store_settings table
ALTER TABLE store_settings ADD COLUMN IF NOT EXISTS type_user INTEGER DEFAULT 0;

-- Create index for better performance
CREATE INDEX IF NOT EXISTS idx_store_settings_type_user ON store_settings(type_user);

-- Update comment
COMMENT ON COLUMN store_settings.type_user IS '0 = cửa hàng, 1 = admin/other';
