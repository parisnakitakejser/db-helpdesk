DELIMITER $$
CREATE FUNCTION UUID_TO_BIN(_uuid BINARY(36)) 
RETURNS BINARY(16)
DETERMINISTIC
BEGIN

RETURN UNHEX(CONCAT(
    SUBSTR(_uuid, 15, 4),
    SUBSTR(_uuid, 10, 4),
    SUBSTR(_uuid,  1, 8),
    SUBSTR(_uuid, 20, 4),
    SUBSTR(_uuid, 25) ));

END$$
DELIMITER ;