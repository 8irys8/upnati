// ignore_for_file: constant_identifier_names

enum CountryId {
  il,
}

enum RoleType {
  role_user,
  role_business_owner,
  role_business_admin,
  role_business_user,
  role_app_admin,
  role_incomplete
}

enum IdentType { phone, email }

enum LocaleType { he, en }

enum CategoryType {
  bc0,
  bc1,
}

enum BankCurrency { UPSTORE_STAR, USD, NIS }

enum SortType { ASC, DESC }

enum PaymentMethod { cardcom, meshulam_card, meshulam_bit, upstore }

enum PriceModifier { spm_dp, spm_ds }

enum DeliveryType { dt0, dt1 }

enum DeliverySpeed { ds0, ds1 }

enum ItemType { it0, it1 }

enum OrderStatus { Processing, Confirmed, InProgress, Closed }
