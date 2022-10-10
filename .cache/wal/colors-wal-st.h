const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1a1a1a", /* black   */
  [1] = "#733f85", /* red     */
  [2] = "#634f72", /* green   */
  [3] = "#63817e", /* yellow  */
  [4] = "#eb6025", /* blue    */
  [5] = "#8f9495", /* magenta */
  [6] = "#88c4bd", /* cyan    */
  [7] = "#c5c5c5", /* white   */

  /* 8 bright colors */
  [8]  = "#535353",  /* black   */
  [9]  = "#733f85",  /* red     */
  [10] = "#634f72", /* green   */
  [11] = "#63817e", /* yellow  */
  [12] = "#eb6025", /* blue    */
  [13] = "#8f9495", /* magenta */
  [14] = "#88c4bd", /* cyan    */
  [15] = "#c5c5c5", /* white   */

  /* special colors */
  [256] = "#1a1a1a", /* background */
  [257] = "#c5c5c5", /* foreground */
  [258] = "#c5c5c5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
