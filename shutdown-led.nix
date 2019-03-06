#{ stdenv, buildGoPackage, fetchFromGitHub }:
#this file is a template not intended for direct use
with import <nixpkgs> {};
buildGoPackage rec {
  name    = "shutdown-led";
  

  goPackagePath = "github.com/samrose/shutdown-led";

  src = fetchFromGitHub {
    owner  = "samrose";
    repo   = "holo";
    rev    = "4aaf1b3082e5b267f9ed630dfef7e3ca9db8b394"; # untagged
    sha256 = "0q8m0390hsjv6a0wj0h333zziwjh84m3xj5gaq3njpcdd7gv9aq0";
  };

  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    description = "shutdown-led";
    homepage    = https://github.com/samrose/shutdown-led;
    license     = licenses.free;
    platforms   = platforms.unix;
    maintainers = [ maintainers.samrose ];
  };
}
