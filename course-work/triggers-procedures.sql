DELIMITER $$

CREATE PROCEDURE `increment_count_realty_by_type`(IN type2 INT)
BEGIN
    set @currentCnt = 0;
    select count into @currentCnt from totalrealty where totalrealty.type = type2;
    IF @currentCnt is null then
        insert into totalrealty (count, type) values (1, type2);
    ELSE
        update totalrealty set count = @currentCnt where totalrealty.type = type2;
    END IF;
END$$

DROP TRIGGER IF EXISTS count_realty;
CREATE TRIGGER count_realty after insert ON realty
    FOR EACH ROW BEGIN
    call increment_count_realty_by_type(new.category_id);
END$$

DELIMITER ;



