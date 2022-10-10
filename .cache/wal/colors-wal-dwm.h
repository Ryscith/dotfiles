static const char norm_fg[] = "#c5c5c5";
static const char norm_bg[] = "#1a1a1a";
static const char norm_border[] = "#535353";

static const char sel_fg[] = "#c5c5c5";
static const char sel_bg[] = "#634f72";
static const char sel_border[] = "#c5c5c5";

static const char urg_fg[] = "#c5c5c5";
static const char urg_bg[] = "#733f85";
static const char urg_border[] = "#733f85";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
