# OVERVIEW
	Mạch giải mã có chức năng chuyển đổi một số nhị phân n bit ở ngõ vào thành m đường ở ngõ ra trong đó có một ngõ ra (tương ứng với số nhị phân) tích cực mức thấp hoặc tích cực mức cao. Mạch thường được gọi là mạch giải mã n đường sang m đường.
	Mối quan hệ giữa m và n như sau: (2^n) = m
	Ví dụ:
•	Nếu n = 2 thì m = 4 gọi là mạch giải mã 2 đường sang 4 đường.
•	Nếu n = 3 thì m = 8 gọi là mạch giải mã 3 đường sang 8 đường.
•	Nếu n = 4 thì m = 16 gọi là mạch giải mã 4 đường sang 16 đường.
•	Ngoài ra còn có mạch giải mã 4 đường sang 10 đường.

## Truth tabel
	| I1 | I0 | O3 | O2 | O1 | O0 |
	|----|----|----|----|----|----|
	| 0  | 0  | 0  | 0  | 0  | 1  |
	| 0  | 1  | 0  | 0  | 1  | 0  |
	| 1  | 0  | 0  | 1  | 0  | 0  |
	| 1  | 1  | 1  | 0  | 0  | 0  |

$ O_0 = I_1 \overline{I_0} $
$ O_1 = \overline{I_1} I_0 $
$ O_2 = I_1 \overline{I_0} $
$ O_3 = I_1 I_0 $