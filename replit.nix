{ pkgs }: {
    deps = [
        pkgs.go_1_18
        pkgs.gopls
        pkgs.gcc
        pkgs.vite
        pkgs.nodejs-16_x
          pkgs.nodePackages.typescript-language-server
          pkgs.nodePackages.yarn
    ];
}
