
#rails {
  ::outline {
    line-color: #666;
    line-cap: round;

    [zoom>=15] {
      line-width: 4;
    }
    [zoom<15] {
      line-width: 3;
    }
  }

  ::inline {
    line-color: white;

    [zoom>=15] {
      line-dasharray: 7, 7;
      line-width: 3;
    }
    [zoom<15] {
      line-dasharray: 5, 5;
      line-width: 2;
    }
  }
}
