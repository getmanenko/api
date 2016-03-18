ALTER TABLE `right` ADD `Description` VARCHAR(255) NOT NULL AFTER `Active`;
ALTER TABLE `material` CHANGE `parent_id` `parent_id` INT(11) NULL DEFAULT NULL;
ALTER TABLE `materialfield` CHANGE COLUMN `locale` `locale` VARCHAR(10) NULL DEFAULT NULL;
UPDATE `materialfield` SET `locale` = NULL WHERE `locale` = '';
Update `material` set parent_id = NULL WHERE parent_id = 0;
ALTER TABLE 'material' DROP 'structure_id';
ALTER TABLE `material` CHANGE `Created` `Created` DATETIME NOT NULL;
ALTER TABLE `structure` CHANGE `MaterialID` `MaterialID` INT(11) NULL DEFAULT NULL;
ALTER TABLE `structure` CHANGE `ParentID` `ParentID` INT(11) NULL DEFAULT NULL;
update `structure` set ParentID = null WHERE ParentID = 0;
ALTER TABLE `structure` CHANGE `UserID` `UserID` INT(11) NULL DEFAULT NULL;
update `structure` set UserID = null WHERE UserID = 0;
update `gallery` set Path = '/upload/' WHERE Path = '/cms/upload/';
ALTER TABLE `field` CHANGE `ParentID` `ParentID` INT(11) NULL DEFAULT NULL;
ALTER TABLE `field` CHANGE `UserID` `UserID` INT(11) NULL DEFAULT NULL;
ALTER TABLE 'field' DROP 'ParentID';
update `field` set UserID = null WHERE UserID = 0;
update `materialfield` set VALUE = REPLACE(value,'/cms/upload/','/upload/') where value like '%cms/upload%'
