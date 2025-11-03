{
  outputs = {...}:
    (import ./README.nix)
    // {
      interests = import ./interests.nix;
    };
}
