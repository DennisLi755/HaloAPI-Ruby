# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2025-09-15

### Added
- Contracts Resource Class
- Products Resource Class

### Fixed
- Renamed Create/Update/Get/Delete methods in resource classes that caused an infinite recursion error
- Fixed specs that were failing due to naming mismatched/mocking API requests

### Changed
- Updated `basic_usage.rb` examples to print specific data for verification
- Updated project to adhere to rubocop linting rules
- Removed support for Ruby 2.6 and 2.7 due to dependency incompatibilities

### Deleted
- Removed `/me/` calls from Clients and Users since those calls returned 500 from the HaloPSA API

## [0.1.0] - 2025-07-10

### Added

- Initial gem structure and foundation
- Core API client implementation
- Resource-based API organization
- Authentication and configuration system
- Basic test coverage
- Documentation and examples
