@font_bold: "Ubuntu Bold";
@font: "Ubuntu Regular";

Map {
  background-color: #f7e3c7;
}

#buildings[zoom>=12] {
  polygon-fill: #dd9a67;

  [zoom>=14] {
    line-color: #c47c3a;
    line-width:0.5;
    building-fill: #dd9a67;
  }

  [zoom>=15] {
    [levels<=1] {
      building-height: 0.00001;
    }
    [levels=2] {
      building-height: 0.00002;
    }
    [levels=3] {
      building-height: 0.00003;
    }
    [levels=4] {
      building-height: 0.00004;
    }
    [levels=5] {
      building-height: 0.00005;
    }
    [levels=6] {
      building-height: 0.00006;
    }
    [levels=7] {
      building-height: 0.00007;
    }
    [levels=8] {
      building-height: 0.00008;
    }
    [levels=9] {
      building-height: 0.00009;
    }
    [levels>=10] {
      building-height: 0.00010;
    }
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
  text-halo-fill: fadeout(white, 20%);
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
  text-halo-fill: fadeout(#faecd4, 30%);
  text-halo-radius: 1.5;
  text-size: 12;
  text-label-position-tolerance: 100;
  text-dy: 10;
  text-min-padding: 2;
}

#hillshade {
  raster-opacity: 0.3;
  raster-scaling: gaussian;
}
