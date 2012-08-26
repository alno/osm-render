@education: #eef0a7;
@construction: #cec976;
@cemetery: #a5c4a2;
@industrial: #ccbdcc;
@garages: #dddada;
@quarry: #cccaca;
@residential: #d4d6b0;
@parks: #b1d77d;
@grass: #b4d186;
@farm: #c0cf85;
@forest: #70aa60;
@scrub: lighten(@forest, 8%);
@military: #f1c2b2;
@fuel: #a493bb;

#territories_gen[zoom<=8],
#territories[zoom>=9] {

  [type='forest'],
  [type='wood'] {
    polygon-fill: @forest;
  }

  [type='meadow'],
  [type='grass'] {
    polygon-fill: @grass;
  }

  [type='allotments'],
  [type='farm'],
  [type='farmland'],
  [type='farmyard'] {
    polygon-fill: @farm;
  }

}

#territories[zoom>=9] {

  [type='scrub'] {
    polygon-fill: @scrub;
  }

  [type='beach'] {
    polygon-fill: #f6f699;
  }

  [type='wetland'] {
    [zoom>=16] {
      polygon-pattern-file: url('images/wetland-0.png');
    }
    [zoom<=15] {
      polygon-pattern-file: url('images/wetland-1.png');
    }
  }

  [type='recreation_ground']
  [type='village_green'] {
    polygon-fill: @grass;
  }

  [type='quarry'] {
    line-pattern-file: url('images/cliff-1.png');
    polygon-fill: @quarry;
  }

  [type='military'] {
    polygon-fill: @military;
    line-color: darken(@military, 20%);
    line-width: 1;
  }

}

/* Landuses, visible only on high zooms */
#territories[zoom>=13] {

  [type='industrial'] {
    polygon-fill: @industrial;
  }

  [type='residential'] {
    polygon-fill: @residential;
  }

  [type='construction'] {
    polygon-fill: @construction;
  }

  [type='garages'] {
    polygon-fill: @garages;
  }

}

#territory_labels {

  [type='quarry'][zoom>=14] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: lighten(@quarry, 20%);
    text-halo-radius: 1;
    text-min-distance: 10;
    text-min-padding: 2;
    text-placement-type: simple;

    [zoom >= 16] {
      text-size: 12;
    }
    [zoom = 15] {
      text-size: 11;
    }
  }

  [type='industrial'][zoom>=14] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: lighten(@industrial, 20%);
    text-halo-radius: 1;
    text-min-distance: 10;
    text-min-padding: 2;
    text-placement-type: simple;

    [zoom >= 16] {
      text-size: 12;
    }
    [zoom = 15] {
      text-size: 11;
    }
  }

  [type='construction'][zoom>=16] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: lighten(@construction, 20%);
    text-halo-radius: 1;
    text-min-distance: 10;
    text-min-padding: 2;
    text-placement-type: simple;

    [zoom >= 16] {
      text-size: 12;
    }
    [zoom = 15] {
      text-size: 11;
    }
  }

  [type='military'][zoom>=15] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: lighten(@military, 20%);
    text-halo-radius: 1;
    text-min-distance: 10;
    text-min-padding: 2;
    text-placement-type: simple;

    [zoom >= 16] {
      text-size: 12;
    }
    [zoom = 15] {
      text-size: 11;
    }
  }

}

#areas[zoom>=13] {
  [type='attraction'] {
    line-width: 1px;
    line-color: #8b712e;
    line-dasharray: 3, 3;
  }

  [type='park'],
  [type='playground'],
  [type='common'],
  [type='garden'],
  [type='zoo'] {
    polygon-fill: @parks;
  }

  [type='stadium'],
  [type='pitch'],
  [type='track'],
  [type='sports_centre'] {
    polygon-fill: #81bd79;
  }

  [type='grave_yard'],
  [type='cemetery'] {
    polygon-fill: @cemetery;
  }

  [type='fuel'] {
    polygon-fill: @fuel;
  }

  [type='marketplace'] {
    /* Рынок */
  }

  [type='hospital'],
  [type='kindergarten'],
  [type='school'],
  [type='college'],
  [type='university'] {
    polygon-fill: @education;
    line-color: #b3b373;
  }
}

#area_labels {
  [type='park'][zoom>=13],
  [type='playground'][zoom>=15],
  [type='common'][zoom>=15] {
    text-face-name: @font_bold;
    text-name: "[name]";
    text-fill: #1c2506;
    text-halo-fill: #c2f089;
    text-halo-radius: 1.5;
    text-placement-type: simple;
    text-wrap-width: 40;
    text-min-distance: 5;
    text-min-padding: 2;

    [zoom >= 16] {
      text-size: 12;
    }
    [zoom = 15] {
      text-size: 11;
    }
    [zoom <= 14] {
      text-size: 10;
    }
  }

  [type='hospital'][zoom>=15],
  [type='school'][zoom>=15],
  [type='college'][zoom>=15],
  [type='kindergarten'][zoom>=15],
  [type='university'][zoom>=15] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: @education;
    text-halo-radius: 1;
    text-min-distance: 10;
    text-min-padding: 2;
    text-placement-type: simple;

    [zoom >= 16] {
      text-size: 12;
    }
    [zoom = 15] {
      text-size: 11;
    }
  }

  [type='grave_yard'][zoom>=14],
  [type='cemetery'][zoom>=14] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: lighten(@cemetery, 20%);
    text-halo-radius: 1;
    text-min-distance: 10;
    text-min-padding: 2;
    text-placement-type: simple;

    [zoom >= 16] {
      text-size: 12;
    }
    [zoom = 15] {
      text-size: 11;
    }
  }
}
