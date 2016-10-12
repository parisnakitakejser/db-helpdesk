DELIMITER $$
CREATE FUNCTION UUID_FROM_BIN(_bin BINARY(16))
    RETURNS BINARY(36)
DETERMINISTIC
BEGIN
RETURN
    LCASE(CONCAT_WS('-',
        HEX(SUBSTR(_bin,  5, 4)),
        HEX(SUBSTR(_bin,  3, 2)),
        HEX(SUBSTR(_bin,  1, 2)),
        HEX(SUBSTR(_bin,  9, 2)),
        HEX(SUBSTR(_bin, 11))
             ));
END$$
DELIMITER ;
