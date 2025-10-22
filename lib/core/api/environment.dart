enum Environment { development, testing, production }

class EnvironmentConfig {
  static Environment _environment = Environment.development;

  static void setEnvironment(Environment env) {
    _environment = env;
  }

  static Environment get environment => _environment;

  static bool get isDevelopment => _environment == Environment.development;
  static bool get isTesting => _environment == Environment.testing;
  static bool get isProduction => _environment == Environment.production;
}
