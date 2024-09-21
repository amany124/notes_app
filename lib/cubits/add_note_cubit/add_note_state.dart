abstract class addNoteStates {}

class addNoteInitialState extends addNoteStates {}

class addNoteLoadingState extends addNoteStates {}

class addNoteSucessState extends addNoteStates {}

class addNoteFailureState extends addNoteStates {
  final String error;
  addNoteFailureState(this.error);
}
