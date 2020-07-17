import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/create_group.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/find_all_groups.dart';

part 'group_list_bloc.freezed.dart';
part 'group_list_event.dart';
part 'group_list_state.dart';

@Injectable()
class GroupListBloc extends Bloc<GroupListEvent, GroupListState> {
  final FindAllGroups _findAllGroups;
  final CreateGroup _createGroup;

  GroupListBloc(
    this._findAllGroups,
    this._createGroup,
  ) : super(GroupListState.initial());

  @override
  Stream<GroupListState> mapEventToState(
    GroupListEvent event,
  ) async* {
    yield* event.when(
      findAll: () async* {
        yield state.copyWith(loading: true, createGroupOrFailure: none());
        final groupsEither = await _findAllGroups.execute();
        yield state.copyWith(loading: false, groupsOrFailure: optionOf(groupsEither));
      },
      create: (String name) async* {
        yield state.copyWith(loading: true, createGroupOrFailure: none());
        await _createGroup.execute(name);
        yield state.copyWith(
          loading: false,
          createGroupOrFailure: optionOf(right(unit)),
        );
      },
    );
  }
}
