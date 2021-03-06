// @dart=2.9

import 'package:checkin/src/blocs/dynamic_link/bloc.dart';
import 'package:checkin/src/blocs/login/bloc.dart';
import 'package:checkin/src/models/grade.dart';
import 'package:checkin/src/models/timespan.dart';
import 'package:checkin/src/ui/components/email_retrieval/check_email_view.dart';
import 'package:checkin/src/ui/components/email_retrieval/insert_email_view.dart';
import 'package:checkin/src/ui/components/email_retrieval/wrong_email_dialog.dart';
import 'package:checkin/src/ui/components/grade_card.dart';
import 'package:checkin/src/ui/components/leaderboard/ranking.dart';
import 'package:checkin/src/ui/components/lessons/attendees_preview.dart';
import 'package:checkin/src/ui/components/lessons/filter_list_widget.dart';
import 'package:checkin/src/ui/components/lessons/lesson_card.dart';
import 'package:checkin/src/ui/components/lessons/no_lessons_banner.dart';
import 'package:checkin/src/ui/components/lessons/update_calendar_dialog.dart';
import 'package:checkin/src/ui/components/login/apple_sign_in_button.dart';
import 'package:checkin/src/ui/components/login/google_sign_in_button.dart';
import 'package:checkin/src/ui/components/login/login_buttons.dart';
import 'package:checkin/src/ui/components/login/passwordless_sign_in_button.dart';
import 'package:checkin/src/ui/components/membership/active_membership.dart';
import 'package:checkin/src/ui/components/membership/inactive_membership.dart';
import 'package:checkin/src/ui/components/membership/payment_methods/active_payment_method.dart';
import 'package:checkin/src/ui/components/membership/payment_methods/empty_payment_method.dart';
import 'package:checkin/src/ui/components/membership/unsubscribe_dialog.dart';
import 'package:checkin/src/ui/components/newslist/action_modal/news_action_modal.dart';
import 'package:checkin/src/ui/components/newslist/empty_news_list.dart';
import 'package:checkin/src/ui/components/newslist/modal/content_editor.dart';
import 'package:checkin/src/ui/components/newslist/modal/header.dart';
import 'package:checkin/src/ui/components/newslist/news_view.dart';
import 'package:checkin/src/ui/components/plans/plans_callout.dart';
import 'package:checkin/src/ui/components/plans/plans_footer.dart';
import 'package:checkin/src/ui/components/plans/plans_list.dart';
import 'package:checkin/src/ui/components/plans/price/price_footer.dart';
import 'package:checkin/src/ui/components/public_profile/profile_info.dart';
import 'package:checkin/src/ui/components/public_profile/user_stats.dart';
import 'package:checkin/src/ui/components/registry/accept_all_dialog.dart';
import 'package:checkin/src/ui/components/registry/attendee_tile.dart';
import 'package:checkin/src/ui/components/registry/attendees_list.dart';
import 'package:checkin/src/ui/components/registry/close_lesson_dialog.dart';
import 'package:checkin/src/ui/components/registry/delete_lesson_dialog.dart';
import 'package:checkin/src/ui/components/registry/edit_lesson/edit_lesson_capacity.dart';
import 'package:checkin/src/ui/components/registry/edit_lesson/edit_lesson_modal.dart';
import 'package:checkin/src/ui/components/registry/edit_lesson/edit_lesson_name.dart';
import 'package:checkin/src/ui/components/registry/edit_lesson/edit_lesson_time.dart';
import 'package:checkin/src/ui/components/registry/edit_lesson/masters_selection.dart';
import 'package:checkin/src/ui/components/registry/empty_registry.dart';
import 'package:checkin/src/ui/components/registry/master_buttons.dart';
import 'package:checkin/src/ui/components/registry/register_dialog.dart';
import 'package:checkin/src/ui/components/registry/registry_controls.dart';
import 'package:checkin/src/ui/components/registry/registry_counter.dart';
import 'package:checkin/src/ui/components/registry/registry_missing_dialog.dart';
import 'package:checkin/src/ui/components/registry/remove_student_dialog.dart';
import 'package:checkin/src/ui/components/registry/student_button.dart';
import 'package:checkin/src/ui/components/stats/graduate_dialog.dart';
import 'package:checkin/src/ui/components/stats/graduate_fab.dart';
import 'package:checkin/src/ui/components/stats/lessons/attendees_counter.dart';
import 'package:checkin/src/ui/components/stats/user/attended_lessons_list.dart';
import 'package:checkin/src/ui/components/stats/user/class_progression_indicator.dart';
import 'package:checkin/src/ui/components/upgrader_dialog.dart';
import 'package:checkin/src/ui/pages/account_page.dart';
import 'package:checkin/src/ui/pages/leaderboard_page.dart';
import 'package:checkin/src/ui/pages/lessons_stats_page.dart';
import 'package:checkin/src/ui/pages/membership_page.dart';
import 'package:checkin/src/ui/pages/onboarding/grade_page.dart';
import 'package:checkin/src/ui/pages/onboarding/name_selection_page.dart';
import 'package:checkin/src/ui/pages/onboarding/unselected_gym_page.dart';
import 'package:checkin/src/ui/pages/payment_success_page.dart';
import 'package:checkin/src/ui/pages/plans_page.dart';
import 'package:checkin/src/ui/pages/profile_page.dart';
import 'package:checkin/src/ui/pages/public_profile_page.dart';
import 'package:checkin/src/ui/pages/registry_page.dart';
import 'package:checkin/src/ui/pages/stats_page.dart';
import 'package:checkin/src/ui/pages/sub_plan_page.dart';
import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  // ignore: unused_field
  static var _t = Translations('en') +
      //NOTIFICATIONS I18N
      //TODO: this should be probably moved into their own file
      {
        'en': "Class confirmed!",
        'es': 'Clase confirmada!',
        'it': 'Classe confermata!',
      } +
      {
        'en': "You attended %s classes this year",
        'es': 'Has atentido %s clases este año',
        'it': 'Hai fatto %s classi quest\'anno',
      } +
      {
        'en': "Student in class!",
        'es': 'Estudiante en clase!',
        'it': 'Studente in classe!',
      } +
      {
        'en': "The first user sign up to your class",
        'es': 'El primer estudiante se ha apuntado en la clase',
        'it': 'Il primo studente si è iscritto alla classe',
      } +
      {
        'en': "One of your class got cancelled",
        'es': 'Una de tus clases ha sido cancelada',
        'it': 'Una delle tue classi è stata cancellata',
      } +
      {
        'en': "One of your classes change time",
        'es': 'Una de tus clases ha cambiado orario',
        'it': 'Una delle tue classi ha cambiato orario',
      } +
      {
        'en': "News for you",
        'es': 'Nueva noticia para tí',
        'it': 'Nuova notizia per te',
      } +
      {
        'en': "Please check it out",
        'es': 'Porfavor copruebalo',
        'it': 'Dacci un\' occhiata',
      } +
      {
        'en': "Go check it out",
        'es': '¡Vete a verla!',
        'it': 'Dacci un\' occhiata',
      } +
      {
        'en': "Action Required!",
        'es': 'Accion pendiente!',
        'it': 'Azione richiesta!',
      } +
      {
        'en': "You still have not accepted students in class",
        'es': 'Tienes estudiantes sin aceptar todavia',
        'it': 'Ci sono ancora studenti non accettati in classe',
      } +
      {
        'en': LessonCard.emptyClass,
        'es': 'Nadie en clase todavía',
        'it': 'Ancora nessuno in classe',
      } +
      {
        'en': LessonTime.startingAt,
        'es': 'Empieza a las %s',
        'it': 'Inizia alle %s',
      } +
      {
        'en': GradePage.selectYourBelt,
        'es': '¿Cuál es tu cinturón?',
        'it': 'Che cintura sei?',
      } +
      {
        'en': RegistryPage.registry,
        'es': 'Registro',
        'it': 'Registro',
      } +
      {
        'en': RegistryMissingDialog.thisClassHasBeenCancelled,
        'es': 'Esta clase ha sido cancelada',
        'it': 'La classe é stata cancellata',
      } +
      {
        'en': RegistryMissingDialog.goToClasses,
        'es': 'Vuelve a las clases',
        'it': 'Torna alle classi',
      } +
      {
        'en': StatsPage.stats,
        'es': 'Estadísticas',
        'it': 'Statistiche',
      } +
      {
        'en': Timespan.week.name,
        'es': 'semana',
        'it': 'settimana',
      } +
      {
        'en': Timespan.month.name,
        'es': 'mes',
        'it': 'mese',
      } +
      {
        'en': Timespan.year.name,
        'es': 'año',
        'it': 'anno',
      } +
      {
        'en': Timespan.all.name,
        'es': 'todo',
        'it': 'tutto',
      } +
      {
        'en': EmptyRegistry.emptyClass,
        'es': 'Nadie en clase todavía',
        'it': 'Classe ancora vuota',
      } +
      {
        'en': ClassProgressIndicatorView.classes.zero('classes').one('class').many('classes'),
        'es': 'clases'.zero('clases').one('clase').many('clases'),
        'it': 'classi'.zero('classi').one('classe').many('classi'),
      } +
      {
        'en': StatsPage.yourClasses,
        'es': 'Tus clases',
        'it': 'Le tue classi',
      } +
      {
        'en': UserStats.classes,
        'es': 'Clases',
        'it': 'Classi',
      } +
      {
        'en': PublicProfilePage.profile,
        'es': 'Perfil',
        'it': 'Profilo',
      } +
      {
        'en': AttendedLessonCards.noClassesAttended
            .modifier(Timespan.week.name, 'No classes attended this week')
            .modifier(Timespan.month.name, 'No classes attended this month')
            .modifier(Timespan.year.name, 'No classes attended this year')
            .modifier(Timespan.all.name, 'No classes attended yet'),
        'es': 'ignored'
            .modifier(Timespan.week.name, 'No tienes clases esta semana')
            .modifier(Timespan.month.name, 'No tienes clases este mes')
            .modifier(Timespan.year.name, 'No tienes clases este año')
            .modifier(Timespan.all.name, 'No tienes clases todavía'),
        'it': 'ignored'
            .modifier(Timespan.week.name, 'Non hai fatto nessuna classe questa settimana')
            .modifier(Timespan.month.name, 'Non hai fatto nessuna classe questo mese')
            .modifier(Timespan.year.name, 'Non hai fatto nessuna classe quest\'anno')
            .modifier(Timespan.all.name, 'Non hai fatto ancora nessuna classe'),
      } +
      {
        'en': RegistryCounter.full,
        'es': 'completo',
        'it': 'completo',
      } +
      {
        'en': RegistryCounter.attendees,
        'es': 'Participantes',
        'it': 'Partecipanti',
      } +
      {
        'en': AttendeeTile.you,
        'es': 'Tú',
        'it': 'Tu',
      } +
      {
        'en': AttendeeTile.youHaveNoMoreAvailableSessions,
        'es': 'No tienes más sesiones disponibles',
        'it': 'Non hai piú sessioni disponibili',
      } +
      {
        'en': AttendeeTile.thisStudentIsInSessionOverdue,
        'es': 'Este estudiante ya no tienes sesiones disponibles',
        'it': 'Questo studente non ha piú sessioni disponibili',
      } +
      {
        'en': AttendeesPreview.andOthers.one('and another one').many('and %d others'),
        'es': 'y %d más'.one('y uno más').many('y %d más'),
        'it': 'e altri %d'.one('e un altro').many('e altri %d'),
      } +
      {
        'en': NoLessonsBanner.noClasses,
        'es': 'No hay clases hoy',
        'it': 'Non ci sono classi oggi',
      } +
      {
        'en': Grade.white.name,
        'es': 'Blanco',
        'it': 'Bianca',
      } +
      {
        'en': Grade.blue.name,
        'es': 'Azul',
        'it': 'Blu',
      } +
      {
        'en': Grade.purple.name,
        'es': 'Morado',
        'it': 'Viola',
      } +
      {
        'en': Grade.brown.name,
        'es': 'Marrón',
        'it': 'Marrone',
      } +
      {
        'en': Grade.black.name,
        'es': 'Negro',
        'it': 'Nera',
      } +
      {
        'en': Grade.white.description,
        'es': 'Construyendo las bases',
        'it': 'Costruendo le fondamenta',
      } +
      {
        'en': Grade.blue.description,
        'es': 'Desarrollo de la habilidad técnica',
        'it': 'Sviluppando l\'abilitá tecnica',
      } +
      {
        'en': Grade.purple.description,
        'es': 'Desarrollo del juego y experimentación',
        'it': 'Sviluppo del gioco e sperimentazione',
      } +
      {
        'en': Grade.brown.description,
        'es': 'Pensar conceptualmente y fortalecer las debilidades',
        'it': 'Pensare concettualmente e rafforzare le debolezze',
      } +
      {
        'en': Grade.black.description,
        'es': 'Comenzar de nuevo, enseñar y reflexionar',
        'it': 'Rincominciare, insegnare e riflettere',
      } +
      {
        'en': StudentButtons.unregisterClass,
        'es': 'Desapuntate de la clase',
        'it': 'Cancellati dalla classe',
      } +
      {
        'en': StudentButtons.registerClass,
        'es': 'Apuntate a la clase',
        'it': 'Iscriviti alla classe',
      } +
      {
        'en': StudentButtons.registryFull,
        'es': 'Clase completa',
        'it': 'Classe piena',
      } +
      {
        'en': MasterButtons.acceptAll,
        'es': 'Confirmar asistencias',
        'it': 'Accetta tutti',
      } +
      {
        'en': RegistryControls.classClosed,
        'es': 'Cerrar clase',
        'it': 'Chiudi classe',
      } +
      {
        'en': RegisterDialog.cancel,
        'es': 'Cancelar',
        'it': 'Cancella',
      } +
      {
        'en': RegisterDialog.continueAnyway,
        'es': 'Registrame igualmente',
        'it': 'Registrami lo stesso',
      } +
      {
        'en': RegisterDialog.userFinishedAvailableSessions,
        'es': 'Ya has usado todas las sesiones disponibles',
        'it': 'Hai utilizzato tutte le sessioni disponibili',
      } +
      {
        'en': AcceptAllDialog.cancel,
        'es': 'Cancelar',
        'it': 'Cancella',
      } +
      {
        'en': AcceptAllDialog.confirm,
        'es': 'Confirmar',
        'it': 'Conferma',
      } +
      {
        'en': AcceptAllDialog.acceptingAllTheStudentsDisclaimer,
        'es': 'Estás a punto de aceptar todos los estudiantes',
        'it': 'Stai per accettare tutti gli studenti',
      } +
      {
        'en': CloseLessonDialog.goBack,
        'es': 'Atrás',
        'it': 'Indietro',
      } +
      {
        'en': CloseLessonDialog.closeClass,
        'es': 'Cerrar clase',
        'it': 'Chiudi classe',
      } +
      {
        'en': DeleteLessonDialog.goBack,
        'es': 'Atrás',
        'it': 'Indietro',
      } +
      {
        'en': DeleteLessonDialog.deleteClass,
        'es': 'Cancelar clase',
        'it': 'Elimina classe',
      } +
      {
        'en': DeleteLessonDialog.cannotBeUndone,
        'es': 'Esta operación no se puede deshacer',
        'it': 'Questa operazione non puó essere annullata',
      } +
      {
        'en': DeleteLessonDialog.deletingClassDisclaimer,
        'es': '¿Quieres cancelar definitivamente la clase?',
        'it': 'Vuoi eliminare permanentemente questa classe?',
      } +
      {
        'en': CloseLessonDialog.closingClassDisclaimer,
        'es': '¿Quieres cerrar la clase?',
        'it': 'Vuoi chiudere la classe?',
      } +
      {
        'en': GoogleSignInButton.googleSignIn,
        'es': 'Acceso con Google',
        'it': 'Accedi con Google',
      } +
      {
        'en': AppleSignInButton.appleSignIn,
        'es': 'Acceso con Apple',
        'it': 'Accedi con Apple',
      } +
      {
        'en': AccountPage.account,
        'es': 'Cuenta',
        'it': 'Account',
      } +
      {
        'en': MembershipPage.membership,
        'es': 'Afiliación',
        'it': 'Membership',
      } +
      {
        'en': MembershipPage.paymentMethods,
        'es': 'Metodos de pago',
        'it': 'Metodi di pagamento',
      } +
      {
        'en': PaymentSuccessPage.paymentSuccessful,
        'es': 'Pagado con éxito',
        'it': 'Pagato con successo',
      } +
      {
        'en': PaymentSuccessPage.goToAccount,
        'es': 'Volver a la cuenta',
        'it': 'Torna all\'account',
      } +
      {
        'en': PaymentSuccessPage.disclaimerSubscription30Min,
        'es': 'Tu subscripción puede tardar hasta 30 minutos en aparecer en tu cuenta',
        'it': 'Il tuo abbonamento può tardare fino a 30 minuti ad apparire nel tuo account',
      } +
      {
        'en': ActiveMembershipView.unsubscribe,
        'es': 'Darse de baja',
        'it': 'Cancella abbonamento',
      } +
      {
        'en': ActiveMembershipView.nextBilling,
        'es': 'El siguiente pago es el',
        'it': 'Il prossimo pagamento avverrà il',
      } +
      {
        'en': ActiveMembershipView.yourSubscription,
        'es': 'Tu subscripción',
        'it': 'Il tuo abbonamento',
      } +
      {
        'en': ActiveMembershipView.remainingSessions,
        'es': 'Sesiones restantes',
        'it': 'Sessioni rimanenti',
      } +
      {
        'en': InactiveMembershipView.chooseYourSubscription,
        'es': 'Escoge tu subscripción',
        'it': 'Scegli il tuo abbonamento',
      } +
      {
        'en': InactiveMembershipView.notActiveSubscription,
        'es': 'Tu subscripción no está activa todavía',
        'it': 'Il tuo abbonamento non é ancora attivo',
      } +
      {
        'en': UnsubscribeDialog.unsubscribe,
        'es': 'Darse de baja',
        'it': 'Cancella abbonamento',
      } +
      {
        'en': UnsubscribeDialog.aboutToPermanentlyDeleteSubscription,
        'es': 'Estás a punto de cancelar tu cuota de forma permanente',
        'it': 'Stai per cancellare il tuo abbonamento permanentemente',
      } +
      {
        'en': UnsubscribeDialog.cannotBeUndone,
        'es': 'Esta operación no se puede deshacer',
        'it': 'Questa operazione non puó essere annullata',
      } +
      {
        'en': UnsubscribeDialog.keepSubscription,
        'es': 'Mantener subscripción',
        'it': 'Mantieni abbonamento',
      } +
      {
        'en': GradeCard.beltColor,
        'es': 'Cinturón %s',
        'it': 'Cintura %s',
      } +
      {
        'en': NewsView.beltColor,
        'es': 'Cinturón %s',
        'it': 'Cintura %s',
      } +
      {
        'en': ProfileInfo.beltColor,
        'es': 'Cinturón %s',
        'it': 'Cintura %s',
      } +
      {
        'en': ProfilePage.beltColor,
        'es': 'Cinturón %s',
        'it': 'Cintura %s',
      } +
      {
        'en': ProfilePage.name,
        'es': 'Nombre',
        'it': 'Nome',
      } +
      {
        'en': ProfilePage.insertYourName,
        'es': 'Pon tu nombre',
        'it': 'Inserisci il tuo nome',
      } +
      {
        'en': ProfilePage.weight,
        'es': 'Peso (kg)',
        'it': 'Peso (kg)',
      } +
      {
        'en': ProfilePage.insertYourWeight,
        'es': 'Pon tu peso',
        'it': 'Inserisci il tuo peso',
      } +
      {
        'en': ProfilePage.birthday,
        'es': 'Fecha de nacimiento',
        'it': 'Data di nascita',
      } +
      {
        'en': ProfilePage.insertYourBirthday,
        'es': 'Pon tu fecha de nacimiento',
        'it': 'Inserisci data di nascita',
      } +
      {
        'en': ProfilePage.thisDoesNotLookLikeAValidName,
        'es': 'Esto no parece un nombre valido',
        'it': 'Questo non sembra un nome valido',
      } +
      {
        'en': ProfilePage.thisDoesNotLookLikeAValidWeight,
        'es': 'Esto no parece un peso valido',
        'it': 'Questo non sembra un peso valido',
      } +
      {
        'en': UpgraderDialog.update,
        'es': 'Actualizar',
        'it': 'Update',
      } +
      {
        'en': UpgraderDialog.versionNotSupported,
        'es': 'La versión actual de esta aplicación ya no es compatible\n\nPor favor, actualízala',
        'it': 'Questa versione dell\'app non é piú supportata\n\nPer favore aggiornala',
      } +
      {
        'en': Ranking.noLeaderboard,
        'es': 'No hay suficientes personas para mostrar la clasificación',
        'it': 'Non ci sono abbastanza persone per mostrare la classifica',
      } +
      {
        'en': AttendeesCounter.studentsAccepted,
        'es': 'alumnos confirmados',
        'it': 'studenti confermati',
      } +
      {
        'en': LessonsStatsPage.topStudents,
        'es': 'Mejores alumnos',
        'it': 'Studenti migliori',
      } +
      {
        'en': LeaderboardPage.leaderboard,
        'es': 'Clasificación',
        'it': 'Classifica',
      } +
      {
        'en': UnselectedGymPage.heyUser,
        'es': 'Hola %s',
        'it': 'Ciao %s',
      } +
      {
        'en': UnselectedGymPage.contactYourGymOwner,
        'es': 'Porfavor contacta el dueño del gym para obtener el enlace de referencia',
        'it': 'Perfavore contatta il proprietario dell`\'accademia per ottenere il referral link',
      } +
      {
        'en': LoginBloc.loginError,
        'es': 'Error de inicio de sesion',
        'it': 'Errore nella login',
      } +
      {
        'en': EmptyPaymentMethod.connectBankAccount,
        'es': 'Conecta tu banco',
        'it': 'Connetti il tuo conto corrente',
      } +
      {
        'en': EmptyPaymentMethod.noRegisteredPaymentMethod,
        'es': 'No hay métodos de pago registrados',
        'it': 'Non ci sono metodi di pagamento registrati',
      } +
      {
        'en': ActivePaymentMethodView.bankAccount,
        'es': 'Cuenta Bancaria',
        'it': 'Conto Corrente',
      } +
      {
        'en': ActivePaymentMethodView.billingEmail,
        'es': 'Correo de facturación',
        'it': 'Email di fatturazione',
      } +
      {
        'en': ActivePaymentMethodView.changePaymentInfo,
        'es': 'Cambia tu información',
        'it': 'Aggiorna informazioni',
      } +
      {
        'en': PlansFooter.note,
        'es': 'nota',
        'it': 'nota',
      } +
      {
        'en': PlansFooter.subscriptionDisclaimer,
        'es': 'los precios mostrados aquí representan los de la subscripción anual',
        'it': 'i prezzi rappresentano l\'abbonamento annuale',
      } +
      {
        'en': PriceFooter.note,
        'es': 'nota',
        'it': 'nota',
      } +
      {
        'en': PriceFooter.pricesDisclaimer,
        'es': 'no podrá reducir el período de tiempo de su suscripción',
        'it': 'non potrai ridurre il periodo del tuo abbonamento',
      } +
      {
        'en': PlansList.noPlansYet,
        'es': 'No hay subscripciónes disponibles todavía',
        'it': 'Non ci sono abbonamenti disponibili',
      } +
      {
        'en': PlansCallout.chooseYourSubscription,
        'es': 'Escoge la subscripción que mejor se adapta a tus necesidades',
        'it': 'Scegli l\'abbonamento che si adatta alle tue necessitá',
      } +
      {
        'en': PlansPage.subscriptions,
        'es': 'Subscripciones',
        'it': 'Abbonamenti',
      } +
      {
        'en': SubPlanPage.prices,
        'es': 'Precios',
        'it': 'Prezzi',
      } +
      {
        'en': GraduateFabView.graduateStudent,
        'es': 'Graduar estudiante',
        'it': 'Promuovi studente',
      } +
      {
        'en': GraduateDialog.graduate,
        'es': 'Graduar',
        'it': 'Promuovi',
      } +
      {
        'en': GraduateDialog.cancel,
        'es': 'Cancelar',
        'it': 'Cancella',
      } +
      {
        'en': GraduateDialog.lessonsForGraduation,
        'es': 'El Estudiante ha hecho %s de %s clases necesarias para graduarse',
        'it': 'Lo studente ha partecipato a %s su %s classi richieste per essere promosso',
      } +
      {
        'en': PasswordlessSignInButton.emailMeMagicLink,
        'es': 'Enviame un enlace mágico',
        'it': 'Inviami un magic link',
      } +
      {
        'en': CheckEmailView.checkYourEmail,
        'es': '¡Revisa tu correo!',
        'it': 'Controlla la mail!',
      } +
      {
        'en': CheckEmailView.toConfirmEmail,
        'es': 'Para confirmar tu dirección, toca el enlace en el correo que enviamos a',
        'it': 'Per confermare la tua email fai tap su link nella mail che ti abbiamo inviato a',
      } +
      {
        'en': CheckEmailView.openEmailApp,
        'es': 'Abrir correo electrónico',
        'it': 'Apri posta elettronica',
      } +
      {
        'en': CheckEmailView.whichEmailAppDoYouUseFor,
        'es': '¿Que aplicacion de correo electrónico utilizas para %s?',
        'it': 'Che app di e-mail utilizzi per %s?',
      } +
      {
        'en': InsertEmailView.insetEmailPlaceholder,
        'es': 'Tu dirección de correo',
        'it': 'Il tuo indirizzo email',
      } +
      {
        'en': InsertEmailView.invalidEmail,
        'es': 'Ha habido un problema con tu correo electrónico. Comprúebalo y inténtalo de nuevo',
        'it': 'C\'è stato un problema con la tua email. Controllala e riprova',
      } +
      {
        'en': InsertEmailView.sendEmailExplanation,
        'es': 'Te enviaremos un correo con el que te conectaras al instante',
        'it': 'Ti invieremo una mail con la quale potrai connetterti instantaneamente',
      } +
      {
        'en': InsertEmailView.next,
        'es': 'Siguiente',
        'it': 'Continua',
      } +
      {
        'en': DynamicLinkBloc.invalidActionError,
        'es': 'El enlace mágico se caducó o ya ha sido utilizado',
        'it': 'Il magic link é scaduto o é già stato utilizzato',
      } +
      {
        'en': DynamicLinkBloc.emailMissingError,
        'es': 'Asegúrate de abrir el enlace mágico en el mismo device en que lo recibiste',
        'it':
            'Assicurati di aver aperto il magic link nello stesso dispositivo in cui l\'hai ricevuto',
      } +
      {
        'en': WrongEmailDialog.goBack,
        'es': 'Volver atrás',
        'it': 'Torna indietro',
      } +
      {
        'en': WrongEmailDialog.theEmailYouInsertedMightNotBeCorrect,
        'es': 'Es posible que el correo electrónico que ingresó no sea correcto',
        'it': 'La mail che hai inserito potrebbe non essere corretta',
      } +
      {
        'en': LoginButtons.or,
        'es': 'o',
        'it': 'oppure',
      } +
      {
        'en': Attendees.removeStudent,
        'es': 'Eliminar',
        'it': 'Rimuovi',
      } +
      {
        'en': RemoveStudentDialog.remove,
        'es': 'Eliminar',
        'it': 'Rimuovi',
      } +
      {
        'en': RemoveStudentDialog.removeStudentDisclaimer,
        'es': 'Estás seguro que quieres eliminar este estudiente de la clase?',
        'it': 'Sei sicuro di voler rimuovere questo studente dalla classe?',
      } +
      {
        'en': RemoveStudentDialog.keepStudentInClass,
        'es': 'Mantener',
        'it': 'Mantieni',
      } +
      {
        'en': FilterListWidget.noFiltersAvailable,
        'es': 'No hay filtros disponibles',
        'it': 'Nessun filtro disponibile',
      } +
      {
        'en': NameSelectionPage.insertYourName,
        'es': 'Pon tu nombre',
        'it': 'Inserisci il tuo nome',
      } +
      {
        'en': NameSelectionPage.couldYouTellUsHowPeopleKnowYou,
        'es': '¿Podrías decirnos tu nombre?',
        'it': 'Potresti dirci come ti chiami?',
      } +
      {
        'en': NameSelectionPage.thisDoesNotLookLikeAValidName,
        'es': 'Esto no parece un nombre valido',
        'it': 'Questo non sembra un nome valido',
      } +
      {
        'en': NameSelectionPage.welcomeToTheFamily,
        'es': '¡Ya eres parte de la familia!',
        'it': 'Fai giá parte della famiglia!',
      } +
      {
        'en': NameSelectionPage.whatsYourName,
        'es': '¿Cuál es su nombre?',
        'it': 'Come ti chiami?',
      } +
      {
        'en': EditLessonTime.ok,
        'es': 'Ok',
        'it': 'Ok',
      } +
      {
        'en': EditLessonTime.cancel,
        'es': 'Cancelar',
        'it': 'Cancella',
      } +
      {
        'en': EditLessonTime.selectTime,
        'es': 'Elige hora de %s',
        'it': 'Seleziona ora di %s',
      } +
      {
        'en': EditLessonModal.start,
        'es': 'Inicio',
        'it': 'Inizio',
      } +
      {
        'en': EditLessonModal.end,
        'es': 'Fin',
        'it': 'Fine',
      } +
      {
        'en': EditLessonName.name,
        'es': 'Nombre',
        'it': 'Nome',
      } +
      {
        'en': EditLessonCapacity.capacity,
        'es': 'Aforo',
        'it': 'Capienza',
      } +
      {
        'en': UpdateCalendarDialog.savingNextWeekAsCalendarDisclaimer,
        'es': 'Estas a punto de aplicar la siguiente semana de clases como tu nuevo calendario',
        'it': 'Stai per applicare la prossima settimana di classi come il tuo nuovo calendario',
      } +
      {
        'en': UpdateCalendarDialog.takeEffectFrom,
        'es': 'Este cambio va a ser efectivo a partir de %s',
        'it': 'Questa modifica sarà effettiva a partire dal %s',
      } +
      {
        'en': UpdateCalendarDialog.apply,
        'es': 'Aplica',
        'it': 'Applica',
      } +
      {
        'en': UpdateCalendarDialog.cancel,
        'es': 'Cancelar',
        'it': 'Cancella',
      } +
      {
        'en': UpdateCalendarDialog.takeEffectFrom,
        'es': 'Este cambio entrará en vigor a partir de %s',
        'it': 'Questo cambio avrà effetto a partire dal %s',
      } +
      {
        'en': EmptyNewsList.noNews,
        'es': 'Aún no hay noticias',
        'it': 'Non ci sono ancora notizie',
      } +
      {
        'en': NewsView.pinnedNews,
        'es': 'Notizia fijada',
        'it': 'Notizia fissata',
      } +
      {
        'en': ContentEditor.whatsHappening,
        'es': 'Que está pasando?',
        'it': 'Cosa succede?',
      } +
      {
        'en': Header.publish,
        'es': 'Publicar',
        'it': 'Pubblicare',
      } +
      {
        'en': MastersSelection.teachers,
        'es': 'Profesores',
        'it': 'Maestri',
      } +
      {
        'en': NewsActionModal.pinNewsOnTop,
        'es': 'Fijar la noticia',
        'it': 'Fissa la notizia',
      } +
      {
        'en': NewsActionModal.unpinNews,
        'es': 'Desfijar la noticia',
        'it': 'Non fissare più la notizia',
      } +
      {
        'en': NewsActionModal.deleteNews,
        'es': 'Eliminar esta noticia',
        'it': 'Elimina notizia',
      };

  String get i18n => localize(this, _t);

  String plural(int value) => localizePlural(value, this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String gender(String gender) => localizeVersion(gender, this, _t);
}
