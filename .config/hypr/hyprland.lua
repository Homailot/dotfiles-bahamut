-- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:

------------------
---- MONITORS ----
------------------

require("hyprland.monitors")

-------------------
---- AUTOSTART ----
-------------------

require("hyprland.autostart")

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

require("hyprland.env")

-----------------------
---- LOOK AND FEEL ----
-----------------------

require("hyprland.decoration")

----------------
----  MISC  ----
----------------

require("hyprland.misc")

---------------
---- INPUT ----
---------------

require("hyprland.input")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

require("hyprland.layout")

---------------------
---- KEYBINDINGS ----
---------------------

require("hyprland.bindings")
