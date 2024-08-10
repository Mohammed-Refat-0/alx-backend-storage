-- creates a trigger that resets the attribute valid_email only when the email has been changed.

CREATE TRIGGER RESET_VALID_EMAIL
BEFORE UPDATE ON users.email
FOR EACH ROW
SET NEW.valid_email = 0;
