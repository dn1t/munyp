{ pkgs, ... }: {
  channel = "unstable";
  packages = [
    pkgs.jdk17
  ];
  env = { };
  idx = {
    extensions = [ ];
    previews = {
      enable = true;
      previews = [
        {
          command = ["flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
          id = "web";
          manager = "flutter";
        }
        {
          command = ["flutter" "run" "--machine" "-d" "android" "-d" "localhost:5555"];
          id = "android";
          manager = "flutter";
        }
      ];
    };
  };
}
