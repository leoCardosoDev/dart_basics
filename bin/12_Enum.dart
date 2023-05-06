enum AccountType { free, premium, vip }

void main(List<String> arguments) {
  final userAccountType = AccountType.vip;
  print(userAccountType.index);
  final account = AccountType.values[1];
  print(account);
  print(arguments);

  switch (userAccountType) {
    case AccountType.free:
      print('0 USD');
      break;
    case AccountType.premium:
      print('20 USD');
      break;
    case AccountType.vip:
      print('50 USD');
      break;
    default:
      break;
  }
}
