import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const SplashscreenWidget()
          : const SplashscreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const SplashscreenWidget()
              : const SplashscreenWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'homescreen',
          path: '/homescreen',
          builder: (context, params) => HomescreenWidget(
            cat: params.getParam(
              'cat',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'customersupport',
          path: '/customersupport',
          builder: (context, params) => const CustomersupportWidget(),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'editprofile',
          path: '/editprofile',
          builder: (context, params) => const EditprofileWidget(),
        ),
        FFRoute(
          name: 'form',
          path: '/form',
          builder: (context, params) => const FormWidget(),
        ),
        FFRoute(
          name: 'forgotpassword',
          path: '/forgotpassword',
          builder: (context, params) => const ForgotpasswordWidget(),
        ),
        FFRoute(
          name: 'availableErrands',
          path: '/availableErrands',
          builder: (context, params) => AvailableErrandsWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'availableErrandsCopy',
          path: '/availableErrandsCopy',
          builder: (context, params) => AvailableErrandsCopyWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Details',
          path: '/details',
          builder: (context, params) => DetailsWidget(
            rf: params.getParam(
              'rf',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'errandscooking',
          path: '/errandscooking',
          builder: (context, params) => const ErrandscookingWidget(),
        ),
        FFRoute(
          name: 'errandschore',
          path: '/errandschore',
          builder: (context, params) => const ErrandschoreWidget(),
        ),
        FFRoute(
          name: 'errandsclothing',
          path: '/errandsclothing',
          builder: (context, params) => const ErrandsclothingWidget(),
        ),
        FFRoute(
          name: 'errandsothers',
          path: '/errandsothers',
          builder: (context, params) => const ErrandsothersWidget(),
        ),
        FFRoute(
          name: 'splashscreen',
          path: '/splashscreen',
          builder: (context, params) => const SplashscreenWidget(),
        ),
        FFRoute(
          name: 'donationpage',
          path: '/donationpage',
          builder: (context, params) => DonationpageWidget(
            cat: params.getParam(
              'cat',
              ParamType.String,
            ),
            adminref: params.getParam(
              'adminref',
              ParamType.DocumentReference,
              false,
              ['admin'],
            ),
            admin: params.getParam(
              'admin',
              ParamType.DocumentReference,
              false,
              ['admin'],
            ),
          ),
        ),
        FFRoute(
          name: 'donationpageitems',
          path: '/donationpageitems',
          builder: (context, params) => DonationpageitemsWidget(
            cat: params.getParam(
              'cat',
              ParamType.String,
            ),
            adminref: params.getParam(
              'adminref',
              ParamType.DocumentReference,
              false,
              ['admin'],
            ),
          ),
        ),
        FFRoute(
          name: 'Details09Reviews',
          path: '/details09Reviews',
          builder: (context, params) => Details09ReviewsWidget(
            refzz: params.getParam(
              'refzz',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminDashboard',
          path: '/adminDashboard',
          builder: (context, params) => const AdminDashboardWidget(),
        ),
        FFRoute(
          name: 'withdrawaldetails',
          path: '/withdrawaldetails',
          builder: (context, params) => const WithdrawaldetailsWidget(),
        ),
        FFRoute(
          name: 'chat',
          path: '/chat',
          builder: (context, params) => const ChatWidget(),
        ),
        FFRoute(
          name: 'chatU',
          path: '/chatU',
          builder: (context, params) => ChatUWidget(
            refhead: params.getParam(
              'refhead',
              ParamType.DocumentReference,
              false,
              ['chat'],
            ),
            refbody: params.getParam(
              'refbody',
              ParamType.DocumentReference,
              false,
              ['chat', 'chatMessage'],
            ),
            reciever: params.getParam(
              'reciever',
              ParamType.String,
            ),
            usersinvolved: params.getParam<DocumentReference>(
              'usersinvolved',
              ParamType.DocumentReference,
              true,
              ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'TBB1',
          path: '/tbb1',
          builder: (context, params) => Tbb1Widget(
            category: params.getParam(
              'category',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'trade',
          path: '/trade',
          builder: (context, params) => const TradeWidget(),
        ),
        FFRoute(
          name: 'taskdetails',
          path: '/taskdetails',
          builder: (context, params) => const TaskdetailsWidget(),
        ),
        FFRoute(
          name: 'AccountType',
          path: '/accountType',
          builder: (context, params) => const AccountTypeWidget(),
        ),
        FFRoute(
          name: 'CompleteRegistration',
          path: '/completeRegistration',
          builder: (context, params) => const CompleteRegistrationWidget(),
        ),
        FFRoute(
          name: 'TradeSearch',
          path: '/tradeSearch',
          builder: (context, params) => TradeSearchWidget(
            category: params.getParam(
              'category',
              ParamType.String,
            ),
            item: params.getParam(
              'item',
              ParamType.String,
            ),
            subcategory: params.getParam(
              'subcategory',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'TradePostanItem',
          path: '/tradePostanItem',
          builder: (context, params) => const TradePostanItemWidget(),
        ),
        FFRoute(
          name: 'AddMainCategory',
          path: '/addMainCategory',
          builder: (context, params) => const AddMainCategoryWidget(),
        ),
        FFRoute(
          name: 'TradeDetails',
          path: '/tradeDetails',
          builder: (context, params) => TradeDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['tradeitems'],
            ),
          ),
        ),
        FFRoute(
          name: 'Mytrades',
          path: '/mytrades',
          builder: (context, params) => const MytradesWidget(),
        ),
        FFRoute(
          name: 'payment',
          path: '/payment',
          builder: (context, params) => PaymentWidget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'TradeDetails1',
          path: '/tradeDetails1',
          builder: (context, params) => TradeDetails1Widget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['tradeitems'],
            ),
          ),
        ),
        FFRoute(
          name: 'paymenttransaction',
          path: '/paymenttransaction',
          builder: (context, params) => PaymenttransactionWidget(
            link: params.getParam(
              'link',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'auth1',
          path: '/auth1',
          builder: (context, params) => const Auth1Widget(),
        ),
        FFRoute(
          name: 'chat_2_Details',
          path: '/chat2Details',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2DetailsWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'chat_2_main',
          path: '/chat2Main',
          builder: (context, params) => const Chat2MainWidget(),
        ),
        FFRoute(
          name: 'chat_2_InviteUsers',
          path: '/chat2InviteUsers',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2InviteUsersWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
            user: params.getParam(
              'user',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'image_Details',
          path: '/imageDetails',
          asyncParams: {
            'chatMessage':
                getDoc(['chat_messages'], ChatMessagesRecord.fromSnapshot),
          },
          builder: (context, params) => ImageDetailsWidget(
            chatMessage: params.getParam(
              'chatMessage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'termandcondition',
          path: '/termandcondition',
          builder: (context, params) => const TermandconditionWidget(),
        ),
        FFRoute(
          name: 'termandconditionCopy',
          path: '/termandconditionCopy',
          builder: (context, params) => const TermandconditionCopyWidget(),
        ),
        FFRoute(
          name: 'paymentamount',
          path: '/paymentamount',
          builder: (context, params) => PaymentamountWidget(
            link: params.getParam(
              'link',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminAllUsers',
          path: '/adminAllUsers',
          builder: (context, params) => const AdminAllUsersWidget(),
        ),
        FFRoute(
          name: 'AdminTasks',
          path: '/adminTasks',
          builder: (context, params) => const AdminTasksWidget(),
        ),
        FFRoute(
          name: 'AdminTaskDetails',
          path: '/adminTaskDetails',
          builder: (context, params) => AdminTaskDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminTaskSelectErrander',
          path: '/adminTaskSelectErrander',
          builder: (context, params) => AdminTaskSelectErranderWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminErrandApplicants',
          path: '/adminErrandApplicants',
          builder: (context, params) => AdminErrandApplicantsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            clientemail: params.getParam(
              'clientemail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminUserDetails',
          path: '/adminUserDetails',
          builder: (context, params) => AdminUserDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminSearchUser',
          path: '/adminSearchUser',
          builder: (context, params) => const AdminSearchUserWidget(),
        ),
        FFRoute(
          name: 'PremiumExperienceDetails',
          path: '/premiumExperienceDetails',
          builder: (context, params) => const PremiumExperienceDetailsWidget(),
        ),
        FFRoute(
          name: 'PaymentPage',
          path: '/paymentPage',
          builder: (context, params) => PaymentPageWidget(
            amount: params.getParam(
              'amount',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'paymentviatransfer',
          path: '/paymentviatransfer',
          builder: (context, params) => PaymentviatransferWidget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminSettings',
          path: '/adminSettings',
          builder: (context, params) => const AdminSettingsWidget(),
        ),
        FFRoute(
          name: 'VerificationStatus',
          path: '/verificationStatus',
          builder: (context, params) => VerificationStatusWidget(
            status: params.getParam(
              'status',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminVerficationRequests',
          path: '/adminVerficationRequests',
          builder: (context, params) => const AdminVerficationRequestsWidget(),
        ),
        FFRoute(
          name: 'notifications',
          path: '/notifications',
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'AdminTaskOngoing',
          path: '/adminTaskOngoing',
          builder: (context, params) => AdminTaskOngoingWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminVerificationDetails',
          path: '/adminVerificationDetails',
          builder: (context, params) => AdminVerificationDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['verification'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminPayments',
          path: '/adminPayments',
          builder: (context, params) => const AdminPaymentsWidget(),
        ),
        FFRoute(
          name: 'AdminDepositDetails',
          path: '/adminDepositDetails',
          builder: (context, params) => AdminDepositDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['deposits'],
            ),
          ),
        ),
        FFRoute(
          name: 'chat_invite_Admin',
          path: '/chatInviteAdmin',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => ChatInviteAdminWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
            user: params.getParam(
              'user',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'subcriptionpayment',
          path: '/subcriptionpayment',
          builder: (context, params) => const SubcriptionpaymentWidget(),
        ),
        FFRoute(
          name: 'paymentviabalance',
          path: '/paymentviabalance',
          builder: (context, params) => PaymentviabalanceWidget(
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'AdminDonation',
          path: '/adminDonation',
          builder: (context, params) => const AdminDonationWidget(),
        ),
        FFRoute(
          name: 'VerficationCompleted',
          path: '/verficationCompleted',
          builder: (context, params) => VerficationCompletedWidget(
            status: params.getParam(
              'status',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'chatInviteTradeBybarter',
          path: '/chatInviteTradeBybarter',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => ChatInviteTradeBybarterWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
            user: params.getParam(
              'user',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminCompletedtask',
          path: '/adminCompletedtask',
          builder: (context, params) => const AdminCompletedtaskWidget(),
        ),
        FFRoute(
          name: 'AdminCompletdErrandDetails',
          path: '/adminCompletdErrandDetails',
          builder: (context, params) => AdminCompletdErrandDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['job'],
            ),
          ),
        ),
        FFRoute(
          name: 'AccountBanned',
          path: '/accountBanned',
          builder: (context, params) => AccountBannedWidget(
            status: params.getParam(
              'status',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: 'tradeall',
          path: '/tradeall',
          builder: (context, params) => TradeallWidget(
            category: params.getParam(
              'category',
              ParamType.String,
            ),
            item: params.getParam(
              'item',
              ParamType.String,
            ),
            subcategory: params.getParam(
              'subcategory',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminDonationGoods',
          path: '/adminDonationGoods',
          builder: (context, params) => const AdminDonationGoodsWidget(),
        ),
        FFRoute(
          name: 'AdminDonationDetails',
          path: '/adminDonationDetails',
          builder: (context, params) => AdminDonationDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['donation'],
            ),
          ),
        ),
        FFRoute(
          name: 'withdrawal',
          path: '/withdrawal',
          builder: (context, params) => const WithdrawalWidget(),
        ),
        FFRoute(
          name: 'AdminCustomerSupport',
          path: '/adminCustomerSupport',
          builder: (context, params) => const AdminCustomerSupportWidget(),
        ),
        FFRoute(
          name: 'AdminSupportDetails',
          path: '/adminSupportDetails',
          builder: (context, params) => AdminSupportDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['supporttickets'],
            ),
          ),
        ),
        FFRoute(
          name: 'withdrawalamounr',
          path: '/withdrawalamounr',
          builder: (context, params) => WithdrawalamounrWidget(
            link: params.getParam(
              'link',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'withdrawalHistory',
          path: '/withdrawalHistory',
          builder: (context, params) => const WithdrawalHistoryWidget(),
        ),
        FFRoute(
          name: 'AdminWithdrawal',
          path: '/adminWithdrawal',
          builder: (context, params) => const AdminWithdrawalWidget(),
        ),
        FFRoute(
          name: 'AdminWithdrawalDetails',
          path: '/adminWithdrawalDetails',
          builder: (context, params) => AdminWithdrawalDetailsWidget(
            ref: params.getParam(
              'ref',
              ParamType.DocumentReference,
              false,
              ['withdrawal'],
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splashscreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
