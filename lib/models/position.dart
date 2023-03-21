class PositionGrid {
  int x;
  int y;
  PositionGrid({required this.x, required this.y});

  PositionGrid.max()
      : x = 999,
        y = 999;

  int toIndexInListGridByWidth({required int gridWidth}) {
    return (y * gridWidth) + x;
  }
}
