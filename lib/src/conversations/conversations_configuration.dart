import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_kit/flutter_chat_ui_kit.dart';

/// A Configuration object for [CometChatConversations]
///
/// this Configuration object can be used to configure [CometChatConversations] properties
/// from parents

/// {@tool snippet}
/// ```dart
/// ConversationConfigurations(
/// avatarConfiguration:
/// const AvatarConfiguration(),
/// conversationListConfiguration:
/// const  ConversationListConfigurations(),
/// title: "CHATS",
/// dateConfiguration:
/// const DateConfiguration(),
/// conversationType: ConversationTypes.both,
/// badgeConfiguration:const BadgeConfiguration(),
/// conversationListItemConfiguration:ConversationListItemConfigurations(
/// inputData:ConversationInputData<Conversation>
/// (subtitle:(Conversation
/// conv) {
/// return "Conv Subtitle";
/// }))),
///```
/// {@end-tool}
class ConversationsConfiguration {
  const ConversationsConfiguration({
    this.conversationsRequestBuilder,
    this.conversationType = ConversationTypes.both,
    this.subtitleView,
    this.title,
    this.showBackButton = true,
    this.backButton,
    this.hideStartConversation = false,
    this.startConversationIcon,
    this.hideSearch = false,
    this.search,
    this.theme,
    this.tailView,
    this.hideSeparator,
    this.listItemView,
    this.conversationsStyle,
    this.options,
    this.selectionMode,
    this.onSelection,
    this.emptyText,
    this.errorText,
    this.loadingView,
    this.emptyView,
    this.errorView,
    this.stateCallBack,
    this.listItemStyle,
    this.avatarStyle,
    this.statusIndicatorStyle,
    this.receiptStyle,
    this.disableUsersPresence,
    this.disableReceipt,
    this.protectedGroupIcon,
    this.privateGroupIcon,
    this.readIcon,
    this.deliveredIcon,
    this.sentIcon,
    this.datePattern,
    this.typingIndicatorText,
    this.dateStyle,
    this.badgeStyle,
    this.customSoundForMessages,
    this.disableSoundForMessages,
    this.conversationsProtocol,
    this.hideError,
    this.appBarOptions,
    this.activateSelection,
    this.controller,
    this.onError,
    this.onBack,
    this.onItemTap,
    this.onItemLongPress,
  });

  ///[conversationsProtocol] set custom conversations request builder protocol
  final ConversationsBuilderProtocol? conversationsProtocol;

  ///[conversationsRequestBuilder] set custom conversations request builder
  final ConversationsRequestBuilder? conversationsRequestBuilder;

  ///[conversationType] conversation type user/group/both
  final ConversationTypes conversationType;

  ///[hideStartConversation] if true then hides start conversation icon
  final bool hideStartConversation;

  ///[startConversationIcon] start conversation icon
  final Icon? startConversationIcon;

  ///[hideSearch] if true then hides search box
  final bool hideSearch;

  ///[search] search box
  final Widget? search;

  ///[subtitleView] to set subtitle for each conversation
  final Widget? Function(BuildContext, Conversation)? subtitleView;

  ///[tailView] to set tailView for each conversation
  final Widget? Function(Conversation)? tailView;

  ///[hideSeparator] toggle visibility of separator
  final bool? hideSeparator;

  ///[listItemView] set custom view for each conversation
  final Widget Function(Conversation)? listItemView;

  ///[conversationsStyle] sets style
  final ConversationsStyle? conversationsStyle;

  final List<CometChatOption>? Function(
      Conversation,
      CometChatConversationsController controller,
      BuildContext context)? options;

  ///[backButton] back button
  final Widget? backButton;

  ///[showBackButton] switch on/off back button
  final bool showBackButton;

  ///[theme] can pass custom theme
  final CometChatTheme? theme;

  ///[selectionMode] specifies mode conversations module is opening in
  final SelectionMode? selectionMode;

  ///[onSelection] function will be performed
  final Function(List<Conversation>?)? onSelection;

  ///[title] sets title for the list
  final String? title;

  ///[emptyText] text to be displayed when the list is empty
  final String? emptyText;

  ///[errorText] text to be displayed when error occur
  final String? errorText;

  ///[loadingView] returns view fow loading state
  final WidgetBuilder? loadingView;

  ///[emptyView] returns view fow empty state
  final WidgetBuilder? emptyView;

  ///[errorView] returns view fow error state behind the dialog
  final WidgetBuilder? errorView;

  ///[stateCallBack] to access controller functions  from parent pass empty reference of  CometChatConversationsController object
  final Function(CometChatConversationsController controller)? stateCallBack;

  ///[listItemStyle] style for every list item
  final ListItemStyle? listItemStyle;

  ///[avatarStyle] set style for avatar
  final AvatarStyle? avatarStyle;

  ///[statusIndicatorStyle] set style for status indicator
  final StatusIndicatorStyle? statusIndicatorStyle;

  ///[disableUsersPresence] controls visibility of status indicator shown if a user is online
  final bool? disableUsersPresence;

  ///[disableReceipt] controls visibility of read receipts
  final bool? disableReceipt;

  ///[protectedGroupIcon] provides icon in status indicator for protected group
  final Widget? protectedGroupIcon;

  ///[privateGroupIcon] provides icon in status indicator for private group
  final Widget? privateGroupIcon;

  ///[readIcon] provides icon in read receipts if a message is read
  final Widget? readIcon;

  ///[deliveredIcon] provides icon in read receipts if a message is delivered
  final Widget? deliveredIcon;

  ///[sentIcon] provides icon in read receipts if a message is sent
  final Widget? sentIcon;

  ///[datePattern] is used to generate customDateString for CometChatDate
  final String Function(Conversation conversation)? datePattern;

  ///[typingIndicatorText] if not null is visible instead of default text shown when another user is typing
  final String? typingIndicatorText;

  ///[dateStyle] provides styling for CometChatDate
  final DateStyle? dateStyle;

  ///[disableSoundForMessages] if true will disable sound for messages
  final bool? disableSoundForMessages;

  ///[customSoundForMessages] URL of the audio file to be played upon receiving messages
  final String? customSoundForMessages;

  ///[hideError] toggle visibility of error dialog
  final bool? hideError;

  ///[appBarOptions] list of options to be visible in app bar
  final List<Widget>? appBarOptions;

  ///[activateSelection] lets the widget know if conversations are allowed to be selected
  final ActivateSelection? activateSelection;

  ///[controller] sets controller for the list
  final ScrollController? controller;

  ///[onBack] callback triggered on closing this screen
  final VoidCallback? onBack;

  ///[onItemTap] callback triggered on tapping a conversation item
  final Function(Conversation)? onItemTap;

  ///[onItemLongPress] callback triggered on pressing for long on a conversation item
  final Function(Conversation)? onItemLongPress;

  ///[onError] callback triggered in case any error happens when fetching conversations
  final OnError? onError;

  ///[badgeStyle] used to customize the unread messages count indicator
  final BadgeStyle? badgeStyle;

  ///[receiptStyle] sets the style for the receipts shown in the subtitle
  final ReceiptStyle? receiptStyle;
}
