/* drop any old database / users first */
DROP DATABASE if exists yafra;
drop user 'yafraadmin'@'localhost';
#drop user 'yafraadmin'@'127.0.0.1';
drop user 'yafraadmin'@'192.168.%.%';
commit;

/* create users */
CREATE USER 'yafraadmin'@'localhost' IDENTIFIED BY  'yafra';
CREATE USER 'yafraadmin'@'192.168.%.%' IDENTIFIED BY  'yafra';
commit;

/* create database now */
/* create database yafra DEFAULT CHARACTER SET utf8; for UTF8 support */
create database yafra;
use yafra;
commit;

GRANT ALL PRIVILEGES ON yafra. * TO  'yafraadmin'@'localhost';
GRANT ALL PRIVILEGES ON yafra. * TO  'yafraadmin'@'192.168.%.%';
commit;
