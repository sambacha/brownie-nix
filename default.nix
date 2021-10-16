{ lib, buildPythonPackage, fetchFromGitHub }:

buildPythonPackage rec {
  pname = "eth-brownie";
  version = "1.17.0";

  src = fetchFromGitHub {
    owner = "eth-brownie";
    repo = pname;
    rev = "v${version}";
    sha256 = "09s10b3svyli85g3nrqbyc9128cn2j7341na57xwmvmvzx4p5kaw";
  };

  propagatedBuildInputs = [ ];

  pythonImportsCheck = [ "eth.brownie" ];

  meta = with lib; {
    description = "A Python-based development and testing framework for smart contracts targeting the Ethereum Virtual Machine.";
    homepage = "https://github.com/@owner@/@pname@";
    license = licenses.mit;
    maintainers = with maintainers; [ sbacha ];
  };
}
