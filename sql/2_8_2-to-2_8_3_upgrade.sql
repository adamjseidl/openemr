ALTER TABLE form_vitals
  MODIFY `weight` FLOAT(5,2) default 0,
  MODIFY `height` FLOAT(5,2) default 0,
  MODIFY `BMI`    FLOAT(4,1) default 0;

CREATE TABLE IF NOT EXISTS `form_misc_billing_options` (
  id                          bigint(20)   NOT NULL auto_increment,
  date                        datetime     default NULL,
  pid                         bigint(20)   default NULL,
  user                        varchar(255) default NULL,
  groupname                   varchar(255) default NULL,
  authorized                  tinyint(4)   default NULL,
  activity                    tinyint(4)   default NULL,
  employment_related          tinyint(1)   default NULL,
  auto_accident               tinyint(1)   default NULL,
  accident_state              varchar(2)   default NULL,
  other_accident              tinyint(1)   default NULL,
  outside_lab                 tinyint(1)   default NULL,
  lab_amount                  decimal(5,2) default NULL,
  is_unable_to_work           tinyint(1)   default NULL,
  off_work_from               date         default NULL,
  off_work_to                 date         default NULL,
  is_hospitalized             tinyint(1)   default NULL,
  hospitalization_date_from   date         default NULL,
  hospitalization_date_to     date         default NULL,
  medicaid_resubmission_code  varchar(10)  default NULL,
  medicaid_original_reference varchar(15)  default NULL,
  prior_auth_number           varchar(20)  default NULL,
  comments                    varchar(255) default NULL,
  PRIMARY KEY (id)
) TYPE=MyISAM;
