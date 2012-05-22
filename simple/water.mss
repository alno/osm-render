@water: #86b6cc;
@water_label: #3e6c99;

#waterways {
  line-color: @water;
  line-cap: round;
  line-join: round;

  [type!='river'] {
    [zoom >= 16] {
      line-width: 4;
    }
    [zoom = 15] {
      line-width: 3;
    }
    [zoom = 14] {
      line-width: 2;
    }
    [zoom = 13] {
      line-width: 1.5;
    }
    [zoom <= 12] {
      line-width: 1;
    }
  }

  [type='river'] {
    [zoom = 18] {
      line-width: 10;
    }
    [zoom = 17] {
      line-width: 8;
    }
    [zoom = 16] {
      line-width: 6;
    }
    [zoom = 15] {
      line-width: 5;
    }
    [zoom = 14] {
      line-width: 4;
    }
    [zoom = 13] {
      line-width: 3;
    }
    [zoom <= 12] {
      line-width: 2;
    }
  }
}

#waterway_labels {
  text-name: "[name]";
  text-fill: @water_label;
  text-face-name: @font_bold;
  text-spacing: 500;
  text-min-path-length: 50;
  text-min-padding: 2;
  text-halo-fill: white;
  text-halo-radius: 1;
  text-placement: line;
  text-placement-type: simple;

  [zoom >= 15] {
    text-size: 12;
  }
  [zoom <= 14] {
    text-size: 11;
    text-min-path-length: 50;
  }
}

#waterareas {
  line-color: @water;
  line-width: 2;
  polygon-fill: @water;
}

#waterarea_labels[zoom>=10][type!='riverbank'] {
  text-name: "[name]";
  text-fill: @water_label;
  text-face-name: @font_bold;
  text-spacing: 500;
  text-min-path-length: 50;
  text-min-distance: 20;
  text-min-padding: 2;
  text-wrap-width: 40;
  text-halo-fill: white;
  text-halo-radius: 1;
}
