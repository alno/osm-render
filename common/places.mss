
#places[zoom<=13] {
  polygon-fill: #b59e94;
  polygon-opacity: 0.25;

  [zoom<=12] {
    polygon-opacity: 0.3;
  }
  [zoom<=11] {
    polygon-opacity: 0.5;
  }
}

#place_labels[zoom<14][type='city'] {
  text-wrap-width: 40;
  text-face-name: @font_bold;
  text-name: "[name]";
  text-halo-fill: fadeout(white, 10%);
  text-halo-radius: 2.5;
  text-size: 20;
  text-fill: #cc2222;
  text-transform: uppercase;
  text-min-distance: 30;
  text-min-padding: 10;
}

#place_labels[zoom<15][type='town'] {
  text-wrap-width: 40;
  text-face-name: @font;
  text-name: "[name]";
  text-halo-fill: fadeout(white, 20%);
  text-halo-radius: 2;
  text-size: 16;
  text-fill: #000;
  text-min-distance: 30;
  text-min-padding: 6;
}

#place_labels[zoom>=10][zoom<=16][type='village'],
#place_labels[zoom>=10][zoom<=16][type='hamlet'] {
  text-wrap-width: 40;
  text-face-name: @font;
  text-name: "[name]";
  text-halo-fill: fadeout(white, 20%);
  text-halo-radius: 2;
  text-size: 14;
  text-fill: #000;
  text-min-distance: 50;
  text-min-padding: 2;
}
