CREATE TABLE IF NOT EXISTS DF_TRANSACTION
(
    ID                BIGINT NOT NULL AUTO_INCREMENT,
    TRANSACTION_ID    VARCHAR(64) NOT NULL,
    TYPE              CHAR(10) NOT NULL,
    AMOUNT            DOUBLE(13,3) NOT NULL,
    NAMESPACE         VARCHAR(128) NOT NULL,
    USER              VARCHAR(128) NOT NULL,
    CREATE_TIME       DATETIME,
    STATUS            VARCHAR(2) NOT NULL,
    STATUS_TIME       DATETIME,
    PRIMARY KEY (ID)
)  DEFAULT CHARSET=UTF8;


CREATE TABLE IF NOT EXISTS `DF_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp ,
  `balance` decimal(13,3) NOT NULL DEFAULT 0.000,
  `state` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `namespace_unique` (`namespace`),
  KEY `df_balance_created_at_index` (`created_at`),
  KEY `df_balance_updated_at_index` (`updated_at`)
)  DEFAULT CHARSET=UTF8;


CREATE TABLE IF NOT EXISTS DF_ITEM_STAT
(
   STAT_KEY     VARCHAR(255) NOT NULL COMMENT '3*255 = 765 < 767',
   STAT_VALUE   INT NOT NULL,
   PRIMARY KEY (STAT_KEY)

)  DEFAULT CHARSET=UTF8;

