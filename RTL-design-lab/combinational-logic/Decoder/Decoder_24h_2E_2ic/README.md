Truth Table IC1:
|Input|Input|Input|Output|Output|Output|Output|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| E | I1 | I0 | O3 | O2 | O1 | O0 |
| 0 | x  | x  | 0  | 0  | 0  | 0  |
| 1 | 0  | 0  | 0  | 0  | 0  | 1  |
| 1 | 0  | 1  | 0  | 0  | 1  | 0  |
| 1 | 1  | 0  | 0  | 1  | 0  | 0  |
| 1 | 1  | 1  | 1  | 0  | 0  | 0  |

O0 = E AND (~I1) AND (~I0)
O1 = E AND (~I1) AND ( I0)
O0 = E AND ( I1) AND (~I0)
O1 = E AND ( I1) AND ( I0)

Truth Table IC2:
|Input|Input|Input|Output|Output|Output|Output|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| E | I1 | I0 | O3 | O2 | O1 | O0 |
| 1 | x  | x  | 0  | 0  | 0  | 0  |
| 0 | 0  | 0  | 0  | 0  | 0  | 1  |
| 0 | 0  | 1  | 0  | 0  | 1  | 0  |
| 0 | 1  | 0  | 0  | 1  | 0  | 0  |
| 0 | 1  | 1  | 1  | 0  | 0  | 0  |

O0 = (~E) AND (~I1) AND (~I0)
O1 = (~E) AND (~I1) AND ( I0)
O0 = (~E) AND ( I1) AND (~I0)
O1 = (~E) AND ( I1) AND ( I0)