import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_product_analysis/widgets/topic_text.dart';
import 'package:test_product_analysis/widgets/list_text.dart';

class IntroduceDevelopmentCenter extends StatelessWidget {
  const IntroduceDevelopmentCenter({Key? key}) : super(key: key);

  Widget buildImage(String src) {
    return Container(
      // height: 250,
      // width: double.infinity,
      child: Image.network(
        src,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height * 0.895,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Giới thiệu Trung Tâm Phát Triển',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Trung Tâm Phát Triển là cổng thông tin lưu trữ những chỉ số bán hàng và vận hành nhằm giúp Nhà bán hiểu rõ hơn về hoạt động kinh doanh của gian hàng mình. Thông qua các chỉ số, biểu đồ, cũng như gợi ý từ trung tâm, Nhà Bán có thể nhìn ra được điểm mạnh cũng như những điểm cần khắc phục, giúp tăng hiệu suất bán hàng và lượt truy cập của gian hàng.',
            ),
            const Text(
              'Lợi ích:',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
            ListText(const [
              '• Giúp Nhà Bán hiểu rõ về tình hình kinh doanh và có chiến lược phát triển phù hợp.',
              '• Giúp Nhà Bán hiểu rõ về tình hình vận hành để cải thiện và cung cấp dịch vụ tốt nhất cho Khách Hàng.',
            ]),
            buildImage(
                'https://hocvien.tiki.vn/wp-content/uploads/2020/05/14.png'),
            TopicText(
              title: 'I. CÁC CHỈ SỐ CHÍNH',
              // subtile: '',
              texts: const [
                'Trung Tâm Phát Triển cung cấp 5 chỉ số chính, bao gồm:',
                ' • Hiệu quả kinh doanh',
                ' • Chỉ số đo lường lượng truy cập',
                ' • Chỉ số sản phẩm',
                ' • Chỉ số khuyến mãi',
                ' • Hiệu quả vận hành',
              ],
              children: [],
            ),
            TopicText(
              title: 'II. CÁCH TRUY CẬP TRUNG TÂM PHÁT TRIỂN',
              // subtile: '',
              texts: const [
                'Nhà Bán có thể truy cập Trung Tâm Phát Triển bằng 2 cách:',
              ],
              children: [
                ListItem(
                    '1. Chọn Trung Tâm Phát Triển ở thanh tác vụ chính trên Seller Center.'),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/14.png'),
                ListItem('2. Lối tắt trên trang chủ của Seller Center.'),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/Screenshot_13.png'),
              ],
            ),
            TopicText(
              title: 'III. CHỈ SỐ HIỆU QUẢ KINH DOANH',
              // subtile: '',
              texts: const [
                'Cho phép Nhà Bán theo dõi báo cáo các chỉ số kinh doanh của Nhà Bán.',
                '1. Nhà Bán có thể lọc dữ liệu tại mục Thời gian báo cáo theo giờ/tuần/tháng/năm (tối đa là 1 năm) hoặc ngày cụ thể.',
                '2. Trên biểu đồ chỉ số chính, Nhà Bán sẽ theo dõi được thống kê hiệu quả kinh doanh theo Doanh thu, Đơn hàng, Doanh thu thuần, Lượt xem, Tỉ lệ chuyển đổi, Giá trị đơn hàng trung bình, Đơn hàng hủy, Top 10  sản phẩm, Top 10 thành phố (Nhà Bán rê chuột vào biểu tượng (i) để xem ý nghĩa từng chỉ số). Ngoài ra, Nhà Bán có thể tick chọn tối đa 2 chỉ số bất kỳ để hiển thị trên biểu đồ. ',
                'Để xem so sánh tương quan với cùng kỳ, Nhà Bán đánh dấu vào ô Hiện so sánh với chỉ số trong quá khứ và theo dõi đường nét đứt trên biểu đồ.',
                '3. Để xem báo cáo chi tiết, Nhà Bán bấm Tải dữ liệu.',
              ],
              children: [
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/ddss.png'),
              ],
            ),
            TopicText(
              title: 'IV. CHỈ SỐ LƯỢT TRUY CẬP',
              // subtile: '',
              texts: const [],
              children: [
                ListText(const [
                  'Cho phép Nhà Bán theo dõi các chỉ số liên quan đến lượt truy cập và tỷ lệ chuyển đổi dựa theo tổng người mua đơn hàng/Tổng số người truy cập.',
                  '1. Nhà Bán có thể lọc dữ liệu tại mục Thời gian báo cáo theo giờ/tuần/tháng/năm (tối đa là 1 năm) hoặc theo ngày cụ thể. Ngoài ra Nhà Bán có thể xem chi tiết theo Các trang sản phẩm/Trang gian hàng hoặc Thiết bị di động/Máy tính.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/11a.png'),
                ListText([
                  '2. Trên biểu đồ chỉ số chính, Nhà Bán sẽ theo dõi được thống kê lượt truy cập theo Tổng lượt xem, Tỉ lệ chuyển đổi, Tổng số người xem, Tổng số khách mua hàng (Nhà Bán rê chuột vào biểu tượng (i) để xem ý nghĩa từng chỉ số).',
                  'Để xem so sánh tương quan với cùng kỳ các chỉ số trước đây, Nhà Bán đánh dấu vào ô Hiện so sánh với chỉ số trong quá khứ và theo dõi đường nét đứt trên biểu đồ.',
                  '3. Để xem báo cáo chi tiết, Nhà Bán bấm Tải dữ liệu.',
                  'Lưu ý: Chỉ số lượt xem các trang sản phẩm ở báo cáo này được lấy từ trang sản phẩm riêng của Nhà Bán, hoàn toàn tách biệt khỏi trang sản phẩm của các Nhà Bán khác.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/Screenshot_12a.png')
              ],
            ),
            TopicText(
              title: 'V. CHỈ SỐ SẢN PHẨM',
              texts: [],
              children: [
                ListText([
                  'Trang này cung cấp cụ thể các chỉ số ở mức độ từng sản phẩm, qua đó giúp Nhà Bán:',
                  ' • Hiểu rõ hiệu suất bán hàng của từng sản phẩm: từ đó nhìn được điểm mạnh, điểm yếu của sản phẩm thông qua các số liệu về lượt xem trang, tỷ lệ chuyển đổi, qua đó có kế hoạch cụ thể về chạy quảng cáo, hoặc tham gia các chương trình khuyến mãi.',
                  ' • Lên kế hoạch tăng/giảm tồn phù hợp với tình hình kinh doanh: Nắm rõ chi tiết tình hình hoạt động của sản phẩm qua doanh thu, tồn kho để có kế hoạch nhập hàng tốt nhất.',
                  ' • Cải thiện điểm chưa tốt của hiệu suất bán sản phẩm: Xác định các sản phẩm chưa đạt mục tiêu của gian hàng hoặc có xu hướng hiệu suất bán giảm để có phương án giải quyết.',
                  'Chỉ số sản phẩm bao gồm 3 phần:',
                  '1. Doanh thu & lượt truy cập: Thể hiện các chỉ số liên quan doanh thu và lượt truy cập của từng sản phẩm.',
                  '2. Nhà Bán có thể lọc dữ liệu tại mục Thời gian báo cáo theo giờ/tuần/tháng/năm (tối đa là 1 năm) hoặc theo ngày cụ thể. Ngoài ra Nhà Bán có thể xem chi tiết theo SKU bán ra (Tổng số lượng SKU bán ra) và Đơn vị đã bán (Tổng số đơn vị sản phẩm bán ra).',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/1-4.png'),
                ListText([
                  '2. Tại mục Hiệu quả sản phẩm, Nhà Bán có thể lọc và tìm kiếm theo: Sản phẩm (Tên sản phẩm, Mã sản phẩm, SKU, PSKU), Danh mục.',
                  'Nhà Bán có thể theo dõi các chỉ số như: ',
                  ' • Xem trang sản phẩm (Lượt xem, Số người xem)',
                  ' • Cho hàng vào giỏ (Số người cho hàng vào giỏ, Tỉ lệ cho vào giỏ)',
                  ' • Xác nhận đơn hàng (Số khách mua, Tỉ lệ chuyển đổi, Đơn vị đã bán, Doanh thu (Nhà Bán rê chuột vào biểu tượng (i) để xem ý nghĩa từng chỉ số).',
                  'Với sản phẩm có nhiều lựa chọn (thuộc tính), Nhà Bán bấm vào mũi tên ngay phần Xem lựa chọn. Hệ thống hiển thị tất cả danh sách các lựa chọn được gộp chung vào sản phẩm chính để Nhà Bán dễ dàng quản lý và tùy chỉnh.',
                  'Tại cột Thao tác, Nhà Bán bấm Chỉnh sửa ở sản phẩm nếu muốn thay đổi/bổ sung thông tin.',
                  '3. Để xem báo cáo chi tiết, Nhà Bán bấm Tải dữ liệu.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/2-3.png'),
                ListText([
                  'B. Doanh số thấp: Hiển thị danh sách các SKU không ghi nhận doanh số hay ghi nhận doanh số thấp trong vòng 7 ngày vừa qua và so sánh với 7 ngày liền trước. Nhà Bán sẽ theo dõi được thống kê doanh số thấp theo Sản phẩm, SKU, Đơn vị đã bán, Doanh thu, % thay đổi.'
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/3-3.png'),
                ListText([
                  'C. Tồn kho thấp: Hiển thị danh sách sản phẩm có tồn kho thấp để Nhà Bán kịp thời cập nhật số lượng hàng hóa. Nhà Bán sẽ theo dõi được thống kê tồn kho thấp về Sản phẩm, SKU, Kho nhà bán, Kho TIKI, Đơn vị đã bán (7 ngày qua), Số ngày dự kiến hết hàng.',
                  'Nếu sản phẩm sắp hết tồn kho trên hệ thống, Nhà Bán bấm Cập nhật tồn kho.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/4-3.png'),
              ],
            ),
            TopicText(
              title: 'VI. CHỈ SỐ KHUYẾN MÃI',
              texts: [],
              children: [
                ListText([
                  'A. Mã giảm giá',
                  'Cho phép Nhà Bán theo dõi báo cáo hiệu quả của các mã giảm giá đã tạo. Trên giao diện này, Nhà Bán có thể lọc các mã giảm giá theo (1) Loại giảm giá (tạo bởi Tiki hoặc tạo bởi Nhà Bán) hoặc (2) Thời gian báo cáo (tuần/tháng/thời gian tùy chỉnh).',
                  'Trên biểu đồ chỉ số chính, Nhà Bán sẽ theo dõi được thống kê hiệu quả sử dụng mã giảm giá theo Doanh thu, Mã đã dùng, Chi phí, Tỷ lệ lợi nhuận trên chi phí, Sản phẩm đã bán, Người mua, Đơn hàng (Nhà Bán rê chuột vào biểu tượng (i) để xem ý nghĩa từng chỉ số).',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2018/12/image001.png'),
                ListText([
                  '4. Danh sách mã giảm giá: Liệt kê danh sách các mã giảm giá, Thời gian áp dụng, Mã đã dùng/Tổng số mã, Doanh thu, Sản phẩm đã bán, Chi phí, Tỷ lệ lợi nhuận trên chi phí, Người mua, Đơn hàng, Trạng thái (Nhà Bán rê chuột vào biểu tượng (i) để xem ý nghĩa từng chỉ số).',
                  '5. Để xem chi tiết các mã giảm giá, Nhà Bán bấm vào mã giảm giá. ',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2018/12/image003.png'),
                ListText([
                  'B. Giảm giá vận chuyển',
                  '1. Thanh thời gian: Nhà Bán có thể chọn khoảng thời gian theo Tuần hoặc Ngày để lọc dữ liệu.',
                  '2. Loại giảm giá: Nhà Bán có thể lọc theo loại giảm giá vận chuyển như: Tất cả giảm giá vận chuyển, Freeship+, Giảm giá tạo bởi Nhà bán.',
                  '3. Biểu đồ chỉ số chính: Doanh thu, Sản phẩm đã bán, Chi phí vận chuyển, Tỉ lệ lợi nhuận trên chi phí, Người mua, Đơn hàng. (Nhà bán rê chuột vào biểu tượng (i) để xem ý nghĩa từng chỉ số).',
                  'Để xem so sánh các chỉ số trước đây, Nhà Bán đánh dấu vào ô “Hiện so sánh với chỉ số trong quá khứ” và sẽ hiển thị bằng đường nét đứt trên biểu đồ. ',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/7.jpg'),
                ListText([
                  '4. Để xem hiệu quả hoạt động của Freeship+, Nhà Bán chọn loại giảm giá Freeship+, hệ thống sẽ hiển thị bảng phân tích bên dưới biểu đồ bao gồm chi phí vận chuyển giữa Tiki hỗ trợ và Nhà Bán hỗ trợ.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/3-2.png'),
                ListText([
                  'C. Chiến dịch khuyến mãi',
                  '1. Thanh thời gian: Nhà Bán có thể chọn khoảng thời gian theo Tuần hoặc Ngày để lọc dữ liệu.',
                  '2. Biểu đồ chỉ số chính: Số lượng SKU bán ra, Doanh thu, Đơn vị đã bán (cái), Tổng số lượng đơn hàng, Số lượng Khách hàng mua sản phẩm. (Nhà Bán rê chuột vào biểu tượng (i) để xem ý nghĩa từng chỉ số)',
                  '3. Danh sách các chiến dịch khuyến mãi Nhà Bán đã tham gia.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/4-2.png'),
              ],
            ),
            TopicText(
              title: 'VII. HIỆU QUẢ VẬN HÀNH',
              texts: [],
              children: [
                ListText([
                  'Hiệu quả vận hành là nơi giúp Nhà Bán theo dõi các chỉ số liên quan đến vận hành cũng như tương tác với khách hàng, qua đó giúp Nhà Bán chủ động và kịp thời điều chỉnh cách thức vận hành.',
                  '1. Thanh thời gian: Nhà Bán có thể chọn khoảng thời gian theo Tuần để lọc dữ liệu.',
                  'Lưu ý: Thanh thời gian chỉ được áp dụng cho ba chỉ số, bao gồm: Tỉ lệ hủy đơn, Tỉ lệ xử lý đơn đúng hạn, và Tỉ lệ đổi trả.',
                  '2. Các chỉ số có trong Hiệu quả vận hành:',
                  ' • Tỉ lệ huỷ đơn: Số đơn bị hủy (lỗi Nhà Bán) / Tổng số đơn đã nhận',
                  ' • Tỉ lệ xử lý đơn đúng hạn: Số đơn hàng xử lý đúng hạn / Tổng số đơn đã nhận',
                  ' • Tỉ lệ đổi trả: Số sản phẩm đổi trả (lỗi Nhà Bán) / Số sản phẩm đã bán',
                  ' • Đánh giá sản phẩm: Trung bình tất cả các đánh giá sản phẩm của Nhà Bán từ khi mở gian hàng. Để quản lý các đánh giá, Nhà Bán chọn Xem chi tiết.',
                  ' • Chỉ số tương tác với khách hàng: được tính cố định trong 4 tuần qua, bao gồm:',
                  '   • Tỉ lệ phản hồi chat: Tỉ lệ phản hồi = Lượt phản hồi chat/Lượt chat nhận được. Tỉ lệ phản hồi chỉ được tính khi bạn nhận được ít nhất 2 tin nhắn trong vòng 4 tuần qua. ',
                  '   • Thời gian phản hồi trung bình: Thời gian trung bình Nhà Bán phản hồi khách hàng, được tính dựa trên “Lượt phản hồi chat”.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/r4.png'),
                ListText([
                  '3. OVL – Giới hạn đơn hàng',
                  'Ngoài các chỉ số như trên, trang này còn thể hiện OVL (Giới hạn đơn hàng), xuất hiện khi Nhà Bán có tỷ lệ vi phạm vận hành vượt ngưỡng quy định. Các chỉ số được áp dụng để tính OVL bao gồm: Tỉ lệ hủy đơn và Tỉ lệ xử lý đơn đúng hạn.',
                  'OVL là số lượng đơn hàng tối đa mà Nhà Bán được phép nhận trong một ngày do chưa đảm bảo chỉ số vận hành (Tỉ lệ hủy đơn và Tỉ lệ xử lý đơn đúng hạn). Việc theo dõi các chỉ số vận hành sẽ giúp Nhà Bán chủ động hơn khi vận hành trên Tiki và đảm bảo hạn chế ở mức thấp nhất việc có thể bị chuyển đổi mô hình vận hành hoặc khóa sản phẩm do vi phạm chính sách vận hành chung của sàn.',
                  'OVL áp dụng cho:',
                  ' • Tất cả Nhà Bán có tỷ lệ vi phạm vận hành vượt ngưỡng quy định.',
                  ' • Các mô hình vận hành: SD và Dropship.',
                  'Nhà Bán có thể xem thông tin chi tiết về cách tính OVL tại đây.',
                ]),
                buildImage(
                    'https://hocvien.tiki.vn/wp-content/uploads/2020/05/r1f.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
