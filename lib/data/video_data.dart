import '../providers/video_provider.dart';

class VideoData {

  VideoData() {}

  List<Video> getVideosData() {
    List<Video> _videosArr = [];

    Video _vid1 = new Video();
    _vid1.title = 'Pranali';
    _vid1.pName = 'pranali.png';
    _vid1.vName = 'pranali.mp4';
    _videosArr.add(_vid1);

    Video _vid2 = new Video();
    _vid2.title = 'Shruti';
    _vid2.pName = 'shruti.png';
    _vid2.vName = 'shruti.mp4';
    _videosArr.add(_vid2);

    Video _vid3= new Video();
    _vid3.title = 'Sneha';
    _vid3.pName = 'sneha.png';
    _vid3.vName = 'sneha.mp4';
    _videosArr.add(_vid3);

    Video _vid4= new Video();
    _vid4.title = 'Chacha';
    _vid4.pName = 'chacha.png';
    _vid4.vName = 'chacha.mp4';
    _videosArr.add(_vid4);

    // temp
    Video _vid5= new Video();
    _vid5.title = 'Mohaneesh';
    _vid5.pName = 'mohaneesh.png';
    _vid5.vName = 'mohaneesh.mp4';
    _videosArr.add(_vid5);

    Video _vid6= new Video();
    _vid6.title = 'Ujwal';
    _vid6.pName = 'ujwal.png';
    _vid6.vName = 'ujwal.mp4';
    _videosArr.add(_vid6);

    return _videosArr;
  }

}