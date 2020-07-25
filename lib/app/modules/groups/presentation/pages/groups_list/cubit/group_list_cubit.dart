import 'package:bloc/bloc.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_create_group.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_find_all_groups.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';

part 'group_list_cubit.freezed.dart';
part 'group_list_state.dart';

@Injectable()
class GroupListCubit extends Cubit<GroupListState> {
  
  final IFindAllGroups _findAllGroups;
  final ICreateGroup _createGroup;

  GroupListCubit(
    this._findAllGroups,
    this._createGroup,
  ) : super(GroupListState.initial());

  Future<void> findAll() async {
    emit(state.copyWith(loading: true, createGroupOrFailure: none()));
    final groupsEither = await _findAllGroups.execute();
    emit(state.copyWith(loading: false, groupsOrFailure: optionOf(groupsEither)));
  }

  Future<void> create(String name) async {
    emit(state.copyWith(loading: true, createGroupOrFailure: none()));
    await _createGroup.execute(name);
    emit(state.copyWith(
      loading: false,
      createGroupOrFailure: optionOf(right(unit)),
    ));
  }
}
