enum Failure {
  reAuthenticate('requires-recent-login'),
  unknown('Unknown failure'),
  connection('Unable to connect with server, please check your connection'),
  invalidEmail('The email is not valid'),
  codeMissmatch('The code is not matched'),
  codeExpired('The code has expired'),
  tooManyRequests('Too many requests, please try again later'),
  userDisabled('The user has been disabled, please contact us'),
  invalidCredentials(
    'No user found with the given credentials. Please make sure you entered the valid email and password, or try signing up, or resetting your password',
  ),
  tokenExpired('Seassion has expired, please re-authenticate'),
  emailInUse('There is already a user with this email'),
  userNotFound('No user is found with the email provided'),
  weakPassword('Please choose a strong password'),
  dbNote('Could not create note'),
  dbNoteDelete('Could not delete note'),
  dbNoteUpdate('Could not delete note'),
  dbTodoDelete('Could not delete todo'),
  dbTodoUpdate('Could not delete todo'),
  dbTodo('Could not create todo'),
  db('Could not create database');

  final String msg;

  const Failure(this.msg);
}
