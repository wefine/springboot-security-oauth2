CREATE TABLE IF NOT EXISTS `clientdetails` (
  `appId`                  VARCHAR(128) PRIMARY KEY,
  `resourceIds`            VARCHAR(256),
  `appSecret`              VARCHAR(256),
  `scope`                  VARCHAR(256),
  `grantTypes`             VARCHAR(256),
  `redirectUrl`            VARCHAR(256),
  `authorities`            VARCHAR(256),
  `access_token_validity`  INT(11),
  `refresh_token_validity` INT(11),
  `additionalInformation`  VARCHAR(4096),
  `autoApproveScopes`      VARCHAR(256)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `oauth_access_token`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oauth_access_token` (
  `token_id`          VARCHAR(256),
  `token`             BLOB,
  `authentication_id` VARCHAR(128) NOT NULL,
  `user_name`         VARCHAR(256),
  `client_id`         VARCHAR(256),
  `authentication`    BLOB,
  `refresh_token`     VARCHAR(256),
  PRIMARY KEY (`authentication_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `oauth_approvals`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oauth_approvals` (
  `userId`         VARCHAR(256),
  `clientId`       VARCHAR(256),
  `scope`          VARCHAR(256),
  `status`         VARCHAR(10),
  `expiresAt`      DATETIME,
  `lastModifiedAt` DATETIME
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `oauth_client_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oauth_client_details` (
  `client_id`               VARCHAR(128) NOT NULL,
  `resource_ids`            VARCHAR(256),
  `client_secret`           VARCHAR(256),
  `scope`                   VARCHAR(256),
  `authorized_grant_types`  VARCHAR(256),
  `web_server_redirect_uri` VARCHAR(256),
  `authorities`             VARCHAR(256),
  `access_token_validity`   INT(11),
  `refresh_token_validity`  INT(11),
  `additional_information`  VARCHAR(4096),
  `autoapprove`             VARCHAR(256),
  PRIMARY KEY (`client_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `oauth_client_token`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oauth_client_token` (
  `token_id`          VARCHAR(256),
  `token`             BLOB,
  `authentication_id` VARCHAR(128) NOT NULL,
  `user_name`         VARCHAR(256),
  `client_id`         VARCHAR(256),
  PRIMARY KEY (`authentication_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `oauth_code`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oauth_code` (
  `code`           VARCHAR(256),
  `authentication` BLOB
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `oauth_refresh_token`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oauth_refresh_token` (
  `token_id`       VARCHAR(256),
  `token`          BLOB,
  `authentication` BLOB
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;