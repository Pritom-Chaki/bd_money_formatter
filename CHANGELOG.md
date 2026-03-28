## 2.0.1

* Update README.md file.

## 2.0.0

* **BREAKING**: `amount` parameter now accepts `num` instead of `dynamic` — provides type safety.
* **BREAKING**: `MoneyFormatterOutput` now has named fields: `amount`, `amountWithCurrency`, `originalValue`.
* **BREAKING**: Removed Flutter dependency — now a pure Dart package.
* Added currency symbol support with configurable `currencySymbol` parameter (default: ৳).
* Added `toBDMoney()` and `toBDMoneyWithCurrency()` extension methods on `num`.
* Fixed crash when passing `0`, `null`, or empty values.
* Fixed bug where `amount` field was mutated during formatting.
* Added comprehensive unit tests.

## 1.0.0

* Update flutter version.

## 0.0.2

* Update for readme and pub points.

## 0.0.1

* Initial Release.
