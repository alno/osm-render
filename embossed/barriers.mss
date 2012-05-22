
#barriers {
  [type='yes'],
  [type='wall'],
  [type='city_wall'],
  [type='gate'],
  [type='hedge'],
  [type='fence'],
  [type='wire_fence'] {
    [zoom>=16] {
      line-color: black;
      line-dasharray: 6, 3, 1, 3;
      line-width: 0.7;
    }

    [zoom=15] {
      line-color: black;
      line-dasharray: 4, 2, 1, 2;
      line-width: 0.5;
    }
  }

  [type='cliff'] {
    [zoom>=15] {
      line-pattern-file: url('images/cliff-1.png')
    }
    [zoom>=12][zoom<=14] {
      line-pattern-file: url('images/cliff-2.png')
    }
  }

  [type='enbankment'][zoom>=15] {
    line-pattern-file: url('images/cliff-1.png')
  }
}
