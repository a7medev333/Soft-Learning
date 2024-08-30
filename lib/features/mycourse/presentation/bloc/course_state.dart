part of 'course_cubit.dart';

@immutable
sealed class CourseState {}


final class Ongoing extends CourseState{}

final class Completed extends CourseState{}
