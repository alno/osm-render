@font_bold: "Ubuntu Bold";
@font: "Ubuntu Regular";
@background: #dfd2c0;

Map {
  background-color: @background;
}

#buildings[zoom>=12] {
  polygon-fill: #dd9a67;

  [zoom>=14] {
    line-color: #c47c3a;
    line-width:0.5;
  }

}

#building_labels::number[zoom>=16] {
  text-wrap-width: 40;
  text-placement-type: simple;
  text-placements: "N,S";
  text-face-name: @font;
  text-label-position-tolerance: 50;
  text-name: "[housenumber]";
  text-fill: black;
  text-halo-fill: white;
  text-halo-radius: 1;
  text-size: 11;
  text-min-distance: 1;
  text-min-padding: 2;
  text-placement: interior;
}

#building_labels::label[zoom>=16] {
  text-wrap-width: 50;
  text-placement-type: simple;
  text-placements: "N,S";
  text-label-position-tolerance: 5;
  text-face-name: @font;
  text-name: "[name]";
  text-fill: black;
  text-halo-fill: #faecd4;
  text-halo-radius: 1.5;
  text-size: 12;
  text-label-position-tolerance: 100;
  text-dy: 10;
  text-min-padding: 2;
}
