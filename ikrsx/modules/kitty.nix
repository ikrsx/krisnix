{
  programs.kitty = {
    enable = true;

    settings = {
      confirm_os_window_close = 0;
      window_padding_width = 10;
      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
    };
  };
}
