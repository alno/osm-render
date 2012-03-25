@education: #eef0a7;
@construction: #cec976;
@cemetery: #53a153;
@industrial: #ccbdcc;
@garages: #dddada;
@quarry: #cccaca;
@residential: #dae0ba;
@grass: #b2e079;
@military: #ffbbbb;
@fuel: #6e5594;

#territories[type='forest'],
#territories[type='wood'] {
  [zoom>=18] {
    polygon-pattern-file: url('images/forest-0.png')
  }
  [zoom<18][zoom>=16] {
    polygon-pattern-file: url('images/forest-1.png')
  }
  [zoom<16][zoom>=14] {
    polygon-pattern-file: url('images/forest-2.png')
  }
  [zoom<14] {
    polygon-pattern-file: url('images/forest-3.png')
  }
}

#territories {

  [type='beach'] {
    polygon-fill: #f6f699;
  }

  [type='wetland'] {
    /* TODO Болота */
  }

  [type='meadow'],
  [type='grass'],
  [type='recreation_ground']
  [type='village_green'] {
    polygon-fill: @grass;
  }

  [type='quarry'] {
    line-pattern-file: url('images/cliff-1.png');
    polygon-fill: @quarry;
  }

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

  [type='allotments'],
  [type='farm'],
  [type='farmland'],
  [type='farmyard'] {
    [zoom>=18] {
      polygon-pattern-file: url('images/farms-0.png')
    }
    [zoom>=16][zoom<18] {
      polygon-pattern-file: url('images/farms-1.png')
    }
    [zoom<16] {
      polygon-pattern-file: url('images/farms-2.png')
    }
  }

  [type='cemetery'] {
    polygon-fill: @cemetery;
  }

  [type='military'] {
    polygon-fill: @military;
    line-color: darken(@military, 20%);
    line-width: 1;
  }

}

#territory_labels {

  [type='quarry'][zoom>=14] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: fadeout(lighten(@quarry, 20%), 30%);
    text-halo-radius: 1.5;
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
    text-halo-fill: fadeout(lighten(@industrial, 20%), 30%);
    text-halo-radius: 1.5;
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

  [type='cemetery'][zoom>=14] {
    text-wrap-width: 40;
    text-face-name: @font;
    text-name: "[name]";
    text-fill: #111;
    text-halo-fill: fadeout(lighten(@cemetery, 20%), 30%);
    text-halo-radius: 1.5;
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
    text-halo-fill: fadeout(lighten(@construction, 20%), 30%);
    text-halo-radius: 1.5;
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
    text-halo-fill: fadeout(lighten(@military, 20%), 30%);
    text-halo-radius: 1.5;
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

#areas {
  [type='attraction'] {
    line-width: 1px;
    line-color: #8b712e;
    line-dasharray: 3, 3;
  }

  [type='parking'][zoom>=12] {
    polygon-fill: #f3f1cf;
    line-width: 1px;
    line-color: #8b712e;
    line-dasharray: 3, 3;
  }

  [type='park'],
  [type='playground'],
  [type='common'],
  [type='garden'],
  [type='zoo'] {
    polygon-fill: #b2e079;
  }

  [type='stadium'],
  [type='pitch'],
  [type='track'],
  [type='sports_centre'] {
    polygon-fill: #94d58c;
  }

  [type='parking'] {
    polygon-fill: #f3f1cf;
    line-color: #a48f49;
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
    text-halo-fill: fadeout(@education, 20%);
    text-halo-radius: 1.5;
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
