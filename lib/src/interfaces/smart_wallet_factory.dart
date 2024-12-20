part of 'interfaces.dart';

abstract class SmartWalletFactoryBase {
  /// Creates a new P256 account using the provided key pair and salt.
  ///
  /// [PassKeyPair] is the key pair used to create the account.
  /// [salt] is the salt value used in the account creation process.
  /// [safeWebauthnSharedSigner] is the address of the Safe Webauthn shared signer.
  ///
  /// Returns a [Future] that resolves to a [SmartWallet] instance representing
  /// the created account.
  ///
  /// Throws an [ArgumentError] if the provided [keyPair] is not a
  /// [PassKeyPair] instance.
  Future<SmartWallet> createSafeAccountWithPasskey(PassKeyPair keyPair,
      Uint256 salt, EthereumAddress safeWebauthnSharedSigner);

  /// Creates a new Safe account with the provided salt and optional owners and threshold.
  ///
  /// [salt] is the salt value used in the account creation process.
  ///
  /// Returns a [Future] that resolves to a [SmartWallet] instance representing
  /// the created Safe account.

  Future<SmartWallet> createSafeAccount(Uint256 salt);

  /// Creates a new light account with the provided salt and optional index.
  ///
  /// [salt] is the salt value used in the account creation process.
  /// [index] is an optional index value for the signer address.
  ///
  /// Returns a [Future] that resolves to a [SmartWallet] instance representing
  /// the created light account.
  Future<SmartWallet> createAlchemyLightAccount(Uint256 salt, [int? index]);

  /// Creates a new vendor account with the provided address and initialization code.
  ///
  /// [address] is the Ethereum address of the vendor account.
  /// [initCode] is the initialization code for the vendor account.
  ///
  /// Returns a [SmartWallet] instance representing the created vendor account.
  Future<SmartWallet> createVendorAccount(
    EthereumAddress address,
    Uint8List initCode,
  );
}
