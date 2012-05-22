
#rails {
  ::outline {
    line-color: #666;
    line-cap: round;

    [zoom>=16] {
      line-width: 4;
    }
    [zoom>=13][zoom<16] {
      line-width: 3;
    }
    [zoom<13] {
      line-width: 2;
    }
  }

  ::inline {
    line-color: white;

    [zoom>=16] {
      line-dasharray: 7, 7;
      line-width: 3;
    }
    [zoom>=13][zoom<16] {
      line-dasharray: 5, 5;
      line-width: 2;
    }
    [zoom<13] {
      line-dasharray: 4, 4;
      line-width: 1;
    }
  }
}
