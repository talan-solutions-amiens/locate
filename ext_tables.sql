CREATE TABLE static_ip2country_v4 (
  ip_from int(10) unsigned DEFAULT NULL,
  ip_to int(10) unsigned DEFAULT NULL,
  country_code char(2) NOT NULL DEFAULT '',
  KEY idx_ip_from (ip_from),
  KEY idx_ip_to (ip_to),
  KEY idx_ip_from_to (ip_from,ip_to)
);

CREATE TABLE static_ip2country_v6 (
  ip_from decimal(39,0) unsigned DEFAULT NULL,
  ip_to decimal(39,0) unsigned NOT NULL,
  country_code char(2) NOT NULL DEFAULT '',
  KEY idx_ip_from (ip_from),
  KEY idx_ip_to (ip_to),
  KEY idx_ip_from_to (ip_from,ip_to)
);
