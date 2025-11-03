{
  tech = {
    os = ["NixOS" "GrapheneOS"];
    arch = ["x86_64" "aarch64"];

    shell = "fish";
    ide = "neovim"; # without plugins, I might add

    desktop = {
      environment = ["niri" "Hyprland" "KDE"];
      browser = "librewolf";
      term = "kitty";
    };

    # see https://git.azey.net/infra/nixos-servers
    infra = {
      domains = [
        "azey.net"
        "REDACTED FOR PRIVACY"
      ];

      networking = {
        ip.version = 6;
        ip.prefixes = [
          "2a14:6f44:5608::/48" # courtesy of https://as200242.net!
        ];

        stack = [
          "systemd-networkd"
          "iptables"
          "FD.io's VPP"
          "FRRouting"

          "wireguard"
          "nebula"
          "mullvad"
        ];

        dns = [
          "knot"
          "unbound"
          "blocky"
        ];
      };

      fs = [
        "zfs"
        "tmpfs" # on /, thanks to nix <3
        "btrfs" # VMs
      ];

      kubernetes = {
        distro = "RKE2";
        ingress = "Envoy Gateway";
        storage = "OpenEBS"; # TODO: rook
        monitoring = "kube-prometheus-stack";

        network = {
          cni = "Cilium";
          mutualAuth = "SPIFFE";
        };

        images.updates = "renovate-bot";
      };
    };

    languages = {
      # NOTE: non-exhaustive
      proficient = [
        "nix"
        "rust"
        "C"
        "C++"
        "shell"
        "DNS zone files"
        "javascript"
      ];
      rusty = [
        "x86 asm"
        "SQL"
        "C#"
        "lua"
      ];
      basics = ["zig" "go"];
    };
  };

  music = {
    genres = [
      "metal"
      "rock"
      "various OSTs"
    ];
    streamingService = "https://navidrome.azey.net"; # guest:

    instruments = {
      proficient = [];
      rusty = [];
      basics = [
        "guitar"
        "piano"
      ];
    };
  };
}
