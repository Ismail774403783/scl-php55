all:
	git clean -dxf
	mock -v -r ea4-php55-cent6-x86_64 --clean
	mock -v -r ea4-php55-cent6-x86_64 -D "scl php55" --unpriv --resultdir SRPMS --buildsrpm --spec SPECS/php.spec --sources SOURCES
	mock -v -r ea4-php55-cent6-x86_64 -D "scl php55" -D "runselftest 0" --unpriv --resultdir RPMS SRPMS/php55-php-5.5.6-13.el6.src.rpm
