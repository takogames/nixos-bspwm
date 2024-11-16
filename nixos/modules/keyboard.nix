{...}: {
  services.kanata = {
enable = true;
    keyboards = {
      laptop = {
        devices = [];
        config = ''
          (defsrc
            grv  1    2    3    4    5    6    7    8    9    0    -    =
          tab  q    w    e    r    t    y    u    i    o    p    [    ]
          caps a    s    d    f    g    h    j    k    l    ;    '
          lsft z    x    c    v    b    n    m    ,    .    /    rsft
          lctl lmet lalt           spc            ralt menu rctl
          )
          (deflayer qwerty
            grv  1    2    3    4    5    6    7    8    9    0    -    =
          tab  q    w    e    r    t    y    u    i    o    p    [    ]
          @nav a    s    d    f    g    h    j    k    l    ;    '
          lsft z    x    c    v    b    n    m    ,    .    /    rsft
          lctl lmet lalt           spc            @rin menu rctl
          )
          (deflayer rain
            grv  1    2    3    4    5    6    7    8    9    0    -    =
          tab  f    d    l    g    v    q    r    u    o    ,    [    ]
          @nav s    t    h    c    y    b    n    e    a    i    /
          lsft z    k    m    p    w    x    j    ;    '    .    rsft
          lctl lmet lalt           spc            @sem menu rctl
          )
          (deflayer semimak
            grv  1    2    3    4    5    6    7    8    9    0    -    =
          tab  f    l    h    v    z    q    w    u    o    y    [    ]
          @nav s    r    n    t    k    c    d    e    a    i    ;
          lsft x    '    b    m    j    p    g    ,    .    /    rsft
          lctl lmet lalt           spc            @qwr menu rctl
          )
          (deflayer navigation
            _  _    _    _    _    _    _    _    _    _    _    _    _
          _  _    _    _    _    _    _    _    _    _    _    _    _
          _ _    _    _    _    _    _    left    down    up    right    _
          _ _    _    _    _    _    _    _    _    _    _    _
          _ _ _           _            _ _ _
          )

          (defalias
          qwr (layer-switch qwerty)
          rin (layer-switch rain)
	  sem (layer-switch semimak)
          nav (layer-while-held navigation)
          lmet (multi lmet(layer-while-held qwerty))
          lctl (multi lctl(layer-while-held qwerty))
          * (switch
         ((key-history w 1)) h break
         ((key-history y 1)) , break
         ((key-history u 1)) e break
         ((key-history g 1)) s break
         ((key-history ' 1)) r break
         () rpt break)
          )
        '';
      };
    };
  };
}
