import 'package:bloc/bloc.dart';
import 'package:e_learing_app/core/enums/course_status.dart';
import 'package:meta/meta.dart';

part 'course_state.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit() : super(Ongoing());

  toggle(){
    print("toggle");
    emit( state is Ongoing ? Completed() : Ongoing()  );
  }

  CourseStatus? getCourseStatus() {
    if( state is Ongoing ){
      return CourseStatus.Ongoing;
    }else if( state is Completed ){
      return CourseStatus.Completed;
    }
    return null;
  }
}
