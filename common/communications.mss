
#powerlines[zoom>=13] {
  line-color: #878686;
  line-width: 0.5;

  [zoom>=15] {
    line-width: 0.7;
  }

}

#powerpoints[zoom>=13] {
  point-file: url('images/power_tower_3x3.png');

  [zoom>=16] {
    point-file: url('images/power_tower_5x5.png');
  }

  [zoom>=18] {
    point-file: url('images/power_tower_7x7.png');
  }
}
