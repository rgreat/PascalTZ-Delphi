Delphi ported version is in a Delphi subfolder.

# PascalTZ

PascalTZ stands for "Pascal Time Zone". It allows you to convert between local times in various [time zones](http://en.wikipedia.org/wiki/Time_zone) and [GMT](http://en.wikipedia.org/wiki/Gmt)/[UTC](http://en.wikipedia.org/wiki/Coordinated_Universal_Time), taking into account historical changes to time zone rules.

PascalTZ uses the [Time Zone Database](https://www.iana.org/time-zones) (often called `tz` or `zoneinfo`) to determine how to correctly adjust time for various time zones. The correctness of time zone conversions in future relies on using an up to date database. Beware, time zone rules may be changed by governments around the world, sometimes with a very short notice.

This code is based on PascalTZ originally published by *José Mejuto* in 2009.

The maintenance of this package has been taken up by *Denis Kozlov* in 2015 with key goals:

1. Identify and fix all data parsing and time zone conversion problems (yes, plenty).
2. Refactor the existing code to make debugging and maintenance easier.
3. Expand functionality for more user-friendly workflows.
4. Add test cases and a test framework.

See [CHANGELOG.md](CHANGELOG.md) for a list of major changes between versions.

### Usage

1. Add `uPascalTZ` unit to the uses clause of your project.
2. Create an instance of `TPascalTZ` class.
3. Load the time zone database into an instance of `TPascalTZ`:
  - Download and unpack the latest [Time Zone Database](https://www.iana.org/time-zones), i.e. `tzdata*.tar.gz`.
  - Set `DatabasePath` property to the location of your time zone database.
4. Use `GMTToLocalTime`, `LocalTimeToGMT` and other methods to convert date and time between various time zones.

[Design and runtime package](package) is available for installation into Lazarus IDE. Users of the [Online Package Manager](http://wiki.freepascal.org/Online_Package_Manager) (OPM) for Lazarus IDE can keep the package updated using [opm/update.json](opm/update.json).

### Testing

A testing framework consists of the following ingredients:

1. Test runner project located in `test` directory.
2. Test vectors for time zone conversions located in `vectors` directory.
3. Test cases (FPCUnit based) for provided test vectors and internal functions.
4. PHP script to generate test vectors, and test time zone conversions using PHP and MySQL implementations.

Running the test project requires the time zone database to be available in the `tzdata` directory.

### Release

Steps for preparing a new release.

1. Update version number in [package/pascaltz.lpk](package/pascaltz.lpk).
2. Update [CHANGELOG.md](CHANGELOG.md).
3. Commit, tag with the version number (e.g. `v1.2.3`), push to origin.
4. Update version number and download link in [opm/update.json](opm/update.json).
5. Commit, push to origin.

Version numbers must adhere to the [semantic versioning](https://semver.org/) specification.

### Authors

- 2009 - José Mejuto
- 2015 - Denis Kozlov

### License

[Modified](COPYING.modifiedLGPL.txt)
[LGPL](COPYING.LGPL.txt) (same as the [FPC RTL](http://wiki.freepascal.org/FPC_modified_LGPL) and the Lazarus LCL).

### See Also

- [PascalTZ article on FPC Wiki](http://wiki.freepascal.org/PascalTZ)
- [PascalTZ repository in Lazarus CCR on SourceForge](http://sourceforge.net/projects/lazarus-ccr/files/PascalTZ/)
- [List of tz database time zones](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)
- [zic - timezone compiler](http://linux.die.net/man/8/zic)
- [zdump - timezone dumper](http://linux.die.net/man/8/zdump)
