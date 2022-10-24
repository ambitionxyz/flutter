class LopHocPhanModel {
  String? hinhNen;
  String? maLopHoc;
  String? tenLopHocPhan;
  int? soLuongSinhVien;

  LopHocPhanModel(
      {this.hinhNen, this.maLopHoc, this.tenLopHocPhan, this.soLuongSinhVien});
}

List<LopHocPhanModel> ls = [
  LopHocPhanModel(
      hinhNen: "assets/images/6.jpg",
      maLopHoc: "2021-2022.TIN3142.003",
      tenLopHocPhan: "[2021-2022.2] - Thực tập viết nhiên luận - Nhóm 3",
      soLuongSinhVien: 7),
  LopHocPhanModel(
      hinhNen: "assets/images/7.jpg",
      maLopHoc: "2021-2022.TIN4412.001",
      tenLopHocPhan: "[2021-2022.2] - Công nghệ XML - Nhóm 1",
      soLuongSinhVien: 35),
  LopHocPhanModel(
      hinhNen: "assets/images/8.jpg",
      maLopHoc: "2021-2022.TIN3092.012",
      tenLopHocPhan: "[2021-2022.2] - Lập trình Font-End - Nhóm 12",
      soLuongSinhVien: 12),
  LopHocPhanModel(
      hinhNen: "assets/images/9.jpg",
      maLopHoc: "2021-2022.TIN3142.002",
      tenLopHocPhan: "[2021-2022.2] - Java nâng cao - Nhóm 2",
      soLuongSinhVien: 10),
  LopHocPhanModel(
      hinhNen: "assets/images/10.jpg",
      maLopHoc: "2021-2022.TIN3142.004",
      tenLopHocPhan: "[2021-2022.2] - Java Cơ bản -Nhóm 4",
      soLuongSinhVien: 11),
];
