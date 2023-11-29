class Subscription {
  String? cancelAt;
  bool cancelAtPeriodEnd;
  String? canceledAt;
  String created;
  DateTime currentPeriodEnd;
  DateTime currentPeriodStart;
  String? endedAt;
  List items;
  Map<String, dynamic> metadata;
  int quantity;
  String? role;
  String status;
  String stripeLink;
  String? trialEnd;
  String? trialStart;

  Subscription({
    this.cancelAt,
    required this.cancelAtPeriodEnd,
    this.canceledAt,
    required this.created,
    required this.currentPeriodEnd,
    required this.currentPeriodStart,
    this.endedAt,
    required this.items,
    required this.metadata,
    required this.quantity,
    this.role,
    required this.status,
    required this.stripeLink,
    this.trialEnd,
    this.trialStart,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      cancelAt: json['cancel_at'],
      cancelAtPeriodEnd: json['cancel_at_period_end'],
      canceledAt: json['canceled_at'],
      created: json['created'].toString(),
      currentPeriodEnd:
          DateTime.parse(json['current_period_end'].toDate().toString()),
      currentPeriodStart:
          DateTime.parse(json['current_period_start'].toDate().toString()),
      endedAt: json['ended_at'],
      items: json['items'],
      metadata: Map<String, dynamic>.from(json['metadata']),
      quantity: json['quantity'],
      role: json['role'],
      status: json['status'],
      stripeLink: json['stripeLink'],
      trialEnd: json['trial_end'],
      trialStart: json['trial_start'],
    );
  }
}
