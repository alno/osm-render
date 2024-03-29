@pri_road_color_out: #a48f49;
@pri_road_color_in: #fdf78c;

@sec_road_color_out: #a48f49;
@sec_road_color_in: #ffffcc;

@tri_road_color_out: #a48f49;
@tri_road_color_in: white;

@footway: #eee;
@track: #714115;
@path: #504530;
@steps: #807660;

#road_labels[zoom>=13] {
  text-name: "[name]";
  text-fill: #333;
  text-face-name: @font;
  text-spacing: 200;
  text-placement-type: simple;
  text-halo-fill: fadeout(white, 20%);
  text-avoid-edges: true;
  text-halo-radius: 2;
  text-placement: line;
  text-placement-type: simple;
  text-spacing: 150;
  text-min-distance: 10;
  text-min-padding: 10;

  [zoom >= 15] {
    text-size: 12;
  }
  [zoom <= 14] {
    text-size: 11;
    text-min-path-length: 50;
  }
}

#road_labels::ref[ref!=''] {
  shield-name: "[ref]";
  shield-fill: black;
  shield-face-name: @font_bold;
  shield-character-spacing: 2;
  shield-file: url(images/road-ref.png);
  shield-placement: line;
  shield-min-distance: 50;
  shield-spacing: 500;
  shield-min-padding: 10;
}

.roads[zoom=13][length>300],
.roads[zoom=14][length>100],
.roads[zoom>=15] {

  #road_bridges::path_outline[type='footway'],
  #road_bridges::path_outline[type='track'],
  #road_bridges::path_outline[type='path'] {
    line-width: 4px;
    line-color: black;
    line-cap: butt;
  }

  #road_bridges::path_midline[type='footway'],
  #road_bridges::path_midline[type='track'],
  #road_bridges::path_midline[type='path'] {
    line-width: 3;
    line-color: white;
    line-cap: butt;
  }

  #roads::outline[type='pedestrian'][zoom>=17],
  #roads::outline[type='footway'][zoom>=17] {
    line-width: 4;
    line-color: fadeout(@track,50%);
    line-cap: butt;

    [covered=1] {
      line-dasharray: 3, 3;
      line-cap: butt;
    }
  }

  #road_bridges::path_inline[type='track'],
  #roads::inline[type='track'] {
    line-width: 0.6;
    line-color: fadeout(@track, 20%);
    line-dasharray: 4, 4;
    line-cap: round;

    [zoom>=14] {
      line-width: 0.8;
      line-color: @track;
    }
    [zoom>=16] {
      line-width: 1;
      line-dasharray: 6, 6;
    }
  }

  #road_bridges::path_inline[type='footway'],
  #road_bridges::path_inline[type='path'],
  #roads::inline[type='path'] {
    line-width: 0.6;
    line-color: fadeout(@path, 20%);
    line-dasharray: 2, 2;
    line-cap: round;

    [zoom>=14] {
      line-width: 0.8;
      line-color: fadeout(@path, 10%);
      line-dasharray: 3, 3;
    }
    [zoom>=16] {
      line-width: 1;
      line-color: @path;
    }
  }

  #roads::inline[type='pedestrian'],
  #roads::inline[type='footway'] {
    line-width: 0.4;
    line-color: @footway;
    line-cap: round;

    [covered=1] {
      line-dasharray: 3, 3;
      line-cap: butt;
    }

    [zoom>=14] {
      line-width: 0.8;
    }

    [zoom>=16] {
      line-color: @footway;
      line-width: 1.5;
    }

    [zoom>=17] {
      line-width: 3;
    }
  }

  #roads::inline[type='steps'][zoom>=14] {
    line-width: 2;
    line-color: @steps;
    line-dasharray: 1, 1;

    [zoom>=17] {
      line-width: 4;
      line-dasharray: 2, 1;
      line-cap: butt;
    }
  }

}

#roads[zoom>=11][zoom<=12][length>1000] {
  ::inline[type='footway'][length>1000],
  ::inline[type='track'][length>1000],
  ::inline[type='path'] {
    line-color: desaturate(@track, 20%);
    line-width: 0.3;
    line-dasharray: 2, 2;
  }
}

::outline {
  #roads[type='cutline'][zoom>=11] {
    line-width: 0.5;
    line-color: fadeout(@background, 40%);

    [zoom>=12] {
      line-width: 1;
    }
    [zoom>=13] {
      line-width: 1.5;
    }
    [zoom>=14] {
      line-width: 2;
    }
    [zoom>=15] {
      line-width: 3;
    }
    [zoom>=16] {
      line-width: 4;
    }
    [zoom>=17] {
      line-width: 6;
    }
  }

  [type='motorway'],
  [type='trunk'] {

    #roads {
      line-color: @pri_road_color_out;
      line-cap: round;

      [zoom<=10] {
        line-width: 6;
      }
      [zoom=11] {
        line-width: 7;
      }
      [zoom=12] {
        line-width: 8;
      }

      [covered=1] {
        line-opacity: 0.7;
        line-color: darken(@pri_road_color_out, 70%);
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }

    #road_bridges[zoom>12] {
      line-color: darken(@pri_road_color_out, 70%);
      line-cap: butt;
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 26;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 20;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 14;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 12;
    }
    #roads[zoom=14], #road_bridges[zoom=14] {
      line-width: 10;
    }
    #roads[zoom=13], #road_bridges[zoom=13] {
      line-width: 9;
    }
  }

  [type='primary'],
  [type='primary_link'],
  [type='motorway_link'],
  [type='trunk_link'] {

    #roads {
      line-color: @pri_road_color_out;
      line-cap: round;

      [zoom<=11] {
        line-width: 4;
      }
      [zoom=12] {
        line-width: 5;
      }

      [covered=1] {
        line-opacity: 0.7;
        line-color: darken(@pri_road_color_out, 70%);
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }
    #road_bridges[zoom>12] {
      line-color: darken(@pri_road_color_out, 70%);
      line-cap: butt;
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 18;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 15;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 11;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 9;
    }
    #roads[zoom=14], #road_bridges[zoom=14] {
      line-width: 7;
    }
    #roads[zoom=13], #road_bridges[zoom=13] {
      line-width: 6;
    }
  }

  [type='secondary'],
  [type='secondary_link'] {

    #roads {
      line-color: @sec_road_color_out;
      line-cap: round;

      [zoom=13] {
        line-width: 4;
      }
      [zoom=12] {
        line-width: 3;
      }
      [zoom=11] {
        line-width: 2.5;
      }
      [zoom=10] {
        line-width: 1.7;
      }
      [zoom<=9] {
        line-width: 1;
        line-color: fadeout(desaturate(@sec_road_color_out, 20%),20%);
      }

      [covered=1] {
        line-opacity: 0.7;
        line-color: darken(@sec_road_color_out, 70%);
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }
    #road_bridges[zoom>13] {
      line-color: darken(@sec_road_color_out, 70%);
      line-cap: butt;
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 15;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 10;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 8;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 6;
    }
    #roads[zoom=14], #road_bridges[zoom=14] {
      line-width: 5;
    }
  }

  [type='tertiary'][zoom>=8],
  [type='tertiary_link'][zoom>=8] {

    #roads {
      line-color: @tri_road_color_out;
      line-cap: round;

      [zoom=14] {
        line-width: 4;
      }
      [zoom=13] {
        line-width: 3;
      }
      [zoom=12] {
        line-width: 2;
      }
      [zoom<=11] {
        line-color: desaturate(@tri_road_color_out, 15%);
        line-width: 1.0;
      }

      [covered=1] {
        line-opacity: 0.7;
        line-color: darken(@tri_road_color_out, 70%);
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }
    #road_bridges[zoom>14] {
      line-color: darken(@tri_road_color_out, 70%);
      line-cap: butt;
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 13;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 10;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 6;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 5;
    }
  }

  [type='service'][zoom>=9],
  [type='road'][zoom>=9],
  [type='living_street'][zoom>=9],
  [type='residential'][zoom>=9],
  [type='unclassified'][zoom>=9] {
    #roads {
      line-color: @tri_road_color_out;
      line-cap: round;

      [zoom=14] {
        line-width: 2.5;
      }
      [zoom>11][zoom<=13] {
        line-color: desaturate(@tri_road_color_out, 20%);
        line-width: 0.7;
      }
      [zoom<=11] {
        line-color: desaturate(@tri_road_color_out, 20%);
        line-width: 0.4;
      }

      [covered=1] {
        line-opacity: 0.7;
        line-color: darken(@tri_road_color_out, 70%);
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }
    #road_bridges[zoom>14] {
      line-color: darken(@tri_road_color_out, 70%);
      line-cap: butt;
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 11;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 7;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 4;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 3;
    }
  }
}

::inline_1_ter {
  [type='service'][zoom>=14],
  [type='road'][zoom>=14],
  [type='living_street'][zoom>=14],
  [type='residential'][zoom>=14],
  [type='unclassified'][zoom>=14] {
    #roads, #road_bridges[zoom>14] {
      line-color: @tri_road_color_in;
      line-cap: round;

      [covered=1] {
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 10;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 6;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 3;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 2;
    }
    #roads[zoom=14] {
      line-width: 1.5;
    }
  }

  [type='tertiary'][zoom>=12],
  [type='tertiary_link'][zoom>=12] {
    #roads, #road_bridges[zoom>14] {
      line-color: @tri_road_color_in;
      line-cap: round;

      [covered=1] {
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 12;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 9;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 5;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 4;
    }
    #roads[zoom=14] {
      line-width: 3;
    }
    #roads[zoom=13] {
      line-width: 2;
    }
    #roads[zoom=12] {
      line-width: 1.5;
    }
  }
}

::inline_2_sec[zoom>=10] {
  [type='secondary'],
  [type='secondary_link'] {
    #roads, #road_bridges[zoom>13] {
      line-color: @sec_road_color_in;
      line-cap: round;

      [covered=1] {
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 14;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 9;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 7;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 5;
    }
    #roads[zoom=14], #road_bridges[zoom=14] {
      line-width: 4;
    }
    #roads[zoom=13] {
      line-width: 3;
    }
    #roads[zoom=12] {
      line-width: 2;
    }
    #roads[zoom=11] {
      line-width: 1.5;
    }
    #roads[zoom<=10] {
      line-width: 1;
    }
  }
}

::inline_3_pri {
  [type='primary'],
  [type='primary_link'],
  [type='motorway_link'],
  [type='trunk_link'] {
    #roads, #road_bridges[zoom>12] {
      line-color: @pri_road_color_in;
      line-cap: round;

      [covered=1] {
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 16;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 13;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 9;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 7;
    }
    #roads[zoom=14], #road_bridges[zoom=14] {
      line-width: 5;
    }
    #roads[zoom=13], #road_bridges[zoom=13] {
      line-width: 4;
    }
    #roads[zoom=12] {
      line-width: 3.5;
    }
    #roads[zoom<=11] {
      line-width: 3;
    }

  }

  [type='motorway'],
  [type='trunk'] {
    #roads, #road_bridges[zoom>12] {
      line-color: @pri_road_color_in;
      line-cap: round;

      [covered=1] {
        line-opacity: 0.7;
        line-dasharray: 3, 3;
        line-cap: butt;
      }
    }

    #roads[zoom=18], #road_bridges[zoom=18] {
      line-width: 24;
    }
    #roads[zoom=17], #road_bridges[zoom=17] {
      line-width: 18;
    }
    #roads[zoom=16], #road_bridges[zoom=16] {
      line-width: 12;
    }
    #roads[zoom=15], #road_bridges[zoom=15] {
      line-width: 10;
    }
    #roads[zoom=14], #road_bridges[zoom=14] {
      line-width: 8;
    }
    #roads[zoom=13], #road_bridges[zoom=13] {
      line-width: 7;
    }
    #roads[zoom=12] {
      line-width: 6;
    }
    #roads[zoom=11] {
      line-width: 5.5;
    }
    #roads[zoom<=10] {
      line-width: 5;
    }
  }
}

#squares {
  [zoom>=15] {
      polygon-fill: white;
  }
  [zoom<=14] {
    polygon-fill: fadeout(white,20%);
  }

  [type='footway'],
  [type='pedestrian'] {
    [zoom>=15] {
      polygon-fill: @footway;
    }
    [zoom<=14] {
      polygon-fill: fadeout(@footway,30%);
    }
  }

}

#square_outlines {
  line-width: 0.5;
  line-color: #a48f49;

  [type='footway'],
  [type='pedestrian'] {
    line-color: fadeout(@track, 50%);
  }

  [zoom>=17] {
    line-width: 1;
  }
}
