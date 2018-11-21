{ mkDerivation, array, attoparsec, base, base16-bytestring
, blaze-builder, bytestring, Cabal, cpu, criterion
, data-default-class, deepseq, directory, exceptions, io-streams
, lens, network, process, QuickCheck, quickcheck-io, resourcet
, retry, stdenv, streaming-commons, system-filepath, tasty
, tasty-hunit, tasty-quickcheck, time, transformers, vector
}:
mkDerivation {
  pname = "kdb-haskell";
  version = "0.1.0";
  src = ./.;
  libraryHaskellDepends = [
    array attoparsec base blaze-builder bytestring cpu
    data-default-class deepseq exceptions io-streams lens network
    QuickCheck streaming-commons time transformers vector
  ];
  testHaskellDepends = [
    array attoparsec base base16-bytestring blaze-builder bytestring
    Cabal cpu data-default-class deepseq directory exceptions
    io-streams lens network process QuickCheck quickcheck-io resourcet
    retry system-filepath tasty tasty-hunit tasty-quickcheck time
    transformers vector
  ];
  benchmarkHaskellDepends = [
    array attoparsec base base16-bytestring blaze-builder bytestring
    Cabal cpu criterion data-default-class deepseq directory exceptions
    io-streams lens network process QuickCheck quickcheck-io resourcet
    retry system-filepath tasty tasty-hunit tasty-quickcheck time
    transformers vector
  ];
  doHaddock = false;
  homepage = "https://github.com/jkozlowski/kdb-haskell";
  description = "Haskell bindings for KDB+";
  license = stdenv.lib.licenses.mit;
}
