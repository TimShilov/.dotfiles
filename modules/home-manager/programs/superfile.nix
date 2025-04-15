{
  programs = {
    superfile = {
      enable = true;
      hotkeys = {
        # @see https://superfile.netlify.app/configure/custom-hotkeys/#vim-like-superfile-hotkeys

        # This is maintain by github.com/nonepork
        # I know this is not really that "vim", but the control flow is different.
        # =================================================================================================
        # Global hotkeys (cannot conflict with other hotkeys)
        confirm = [
          "enter"
          ""
        ];
        quit = [
          "ctrl+c"
          ""
        ]; # also know as, theprimeagen troller
        # movement
        list_up = [
          "k"
          ""
        ];
        list_down = [
          "j"
          ""
        ];
        page_up = [
          "pgup"
          ""
        ];
        page_down = [
          "pgdown"
          ""
        ];
        # file panel control
        create_new_file_panel = [
          "n"
          ""
        ];
        close_file_panel = [
          "q"
          ""
        ];
        next_file_panel = [
          "tab"
          ""
        ];
        previous_file_panel = [
          "shift+tab"
          ""
        ];
        toggle_file_preview_panel = [
          "f"
          ""
        ];
        open_sort_options_menu = [
          "o"
          ""
        ];
        toggle_reverse_sort = [
          "R"
          ""
        ];
        # change focus
        focus_on_process_bar = [
          "ctrl+p"
          ""
        ];
        focus_on_sidebar = [
          "ctrl+s"
          ""
        ];
        focus_on_metadata = [
          "ctrl+d"
          ""
        ];
        # create file/directory and rename
        file_panel_item_create = [
          "a"
          ""
        ];
        file_panel_item_rename = [
          "r"
          ""
        ];
        # file operations
        copy_items = [
          "y"
          ""
        ];
        cut_items = [
          "x"
          ""
        ];
        paste_items = [
          "p"
          ""
        ];
        delete_items = [
          "d"
          ""
        ];
        # compress and extract
        extract_file = [
          "ctrl+e"
          ""
        ];
        compress_file = [
          "ctrl+a"
          ""
        ];
        # editor
        open_file_with_editor = [
          "e"
          ""
        ];
        open_current_directory_with_editor = [
          "E"
          ""
        ];
        # other
        pinned_directory = [
          "P"
          ""
        ];
        toggle_dot_file = [
          "."
          ""
        ];
        change_panel_mode = [
          "m"
          ""
        ];
        open_help_menu = [
          "?"
          ""
        ];
        open_command_line = [
          ":"
          ""
        ];
        copy_path = [
          "Y"
          ""
        ];
        copy_present_working_directory = [
          "c"
          ""
        ];
        toggle_footer = [
          "ctrl+f"
          ""
        ];
        # =================================================================================================
        # Typing hotkeys (can conflict with all hotkeys)
        confirm_typing = [
          "enter"
          ""
        ];
        cancel_typing = [
          "esc"
          ""
        ];
        # =================================================================================================
        # Normal mode hotkeys (can conflict with other modes, cannot conflict with global hotkeys)
        parent_directory = [
          "-"
          ""
        ];
        search_bar = [
          "/"
          ""
        ];
        # =================================================================================================
        # Select mode hotkeys (can conflict with other modes, cannot conflict with global hotkeys)
        file_panel_select_mode_items_select_down = [
          "J"
          ""
        ];
        file_panel_select_mode_items_select_up = [
          "K"
          ""
        ];
        file_panel_select_all_items = [
          "A"
          ""
        ];
      };
    };
  };
}
