import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start paystack Group Code

class PaystackGroup {
  static String baseUrl = 'https://api.paystack.co/paymentrequest';
  static Map<String, String> headers = {
    'Authorization': 'Bearer sk_live_acd594dda1ff0c9edc0178a32836c2dc38c64ee0',
    'Content-Type': 'application/json',
  };
}

/// End paystack Group Code

class PaystackDepositCall {
  static Future<ApiCallResponse> call({
    String? lineItems = '',
  }) async {
    const ffApiRequestBody = '''
{ 
      "customer": "CUS_5lgv9bc41uw15pb",
      "description": "Invoice for Damilola",
      "line_items": [
        { "name": "Pancakes and sausage", "amount": "2000", "quantity": 1 },
        { "name": "Chicken Salad", "amount": "3000", "quantity": 1 }
      ]}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paystack deposit',
      apiUrl: 'https://api.paystack.co/paymentrequest',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_live_acd594dda1ff0c9edc0178a32836c2dc38c64ee0',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
