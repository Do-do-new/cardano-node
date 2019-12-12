{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "lobemo-backend-aggregation";
        version = "0.1.0.0";
        };
      license = "Apache-2.0";
      copyright = "2019 IOHK";
      maintainer = "operations@iohk.io";
      author = "Alexander Diemand";
      homepage = "https://github.com/input-output-hk/iohk-monitoring-framework";
      url = "";
      synopsis = "provides a backend implementation to aggregate traced values";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.iohk-monitoring)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
          (hsPkgs.unordered-containers)
          ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
        };
      };
    } // {
    src = (pkgs.lib).mkDefault (pkgs.fetchgit {
      url = "https://github.com/input-output-hk/iohk-monitoring-framework";
      rev = "b310a4f0b7a80b54edfb094afd3def9eab035f46";
      sha256 = "00099ir4vjarzqm1i0l8jk7pwv0kd3jqdwrki23pfq3m19j9b7dv";
      });
    postUnpack = "sourceRoot+=/plugins/backend-aggregation; echo source root reset to \$sourceRoot";
    }