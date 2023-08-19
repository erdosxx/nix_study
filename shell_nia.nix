with import <nixpkgs> {};
let
  pythonEnv = python311.withPackages (ps: with ps; [
    numpy
    tqdm 
    torch
    packaging
    pip
  ]);
in
  mkShell {
    packages = with pkgs; [
      pythonEnv

      lf
      ranger

      ctpv
      ueberzug

      mpv
      sxiv
      feh
      tiv
      imagemagick

      ffmpeg
      ffmpegthumbnailer

      xorg.libXau
    ];

    env = {
      TERM = "linux";
      TERMINFO = "/etc/terminfo";
    };

    # Set shell prompt format, ensure that 'should_exist.txt' exists
    /* shellHook = '' */
    /*   export PS1="\u@\h >>> " */
    /*   touch should_exist.txt */
    /* ''; */
  }
