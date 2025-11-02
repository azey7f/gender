{
  serial = "AZ-07F";
  name = "REDACTED FOR PRIVACY";
  aliases = [
    "azey"
    "azey7f"
  ];

  description = "a vaguely feminine consciousness trapped in a human body, trying to make the best of life";

  gender = "girlthing";
  pronouns = [
    "she/her"
    "they/them" # NOTE: deprecated
  ];
  age = "REDACTED FOR PRIVACY";

  activities = [
    "staying alive in a world that wants me dead"
    "forever tinkering with computers"
    "contributing to nixpkgs et al"
    "REDACTED FOR PRIVACY"
    "yearning for a better tomorrow"
    "REDACTED FOR PRIVACY"
    "REDACTED FOR PRIVACY"
  ];
  location.country = "REDACTED FOR PRIVACY";

  contact = {
    mailto = "me@azey.net";
    codeberg = "azey";
    github = "azey7f";
    # TODO: matrix, fedi
  };
  ref = "azey.net"; # NOTE: IPv6-only, v4.azey.net if your ISP is still stuck in the 90s

  keys = [
    {
      eval = "gpg --auto-key-locate clear,nodefault,cert,dane --locate-keys me@azey.net";
      fingerprint = "2CCB 3403 43FE 8A2B 91CE  7F75 F94F 4A71 C5C2 1E8F";
    }
  ];
}
