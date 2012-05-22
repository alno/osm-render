
#place_labels[zoom<14][type='city'] {
  text-wrap-width: 40;
  text-face-name: @font_bold;
  text-name: "[name]";
  text-halo-fill: fadeout(white, 10%);
  text-halo-radius: 2.5;
  text-size: 20;
  text-fill: #cc2222;
  text-transform: uppercase;
  text-min-padding: 2;
}

#place_labels[zoom<14][type='town'] {
  text-wrap-width: 40;
  text-face-name: @font;
  text-name: "[name]";
  text-halo-fill: fadeout(white, 20%);
  text-halo-radius: 2;
  text-size: 16;
  text-fill: #000;
  text-min-padding: 2;
}

#place_labels[zoom>=10][zoom<14][type='village'] {
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
