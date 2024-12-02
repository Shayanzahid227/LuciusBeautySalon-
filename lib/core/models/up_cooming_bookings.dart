// this model will be used by UpCooming Booking as well as Previous Bookings
class BookingsModel {
  String? ImgUrl;
  String? Title;
  String? Type;
  String? Date;
  String? TimeAndPrice;
  BookingsModel(
      {this.ImgUrl, this.Title, this.Type, this.Date, this.TimeAndPrice});
}
