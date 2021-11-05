.class public interface abstract Lcom/android/server/notification/NotificationDelegate;
.super Ljava/lang/Object;
.source "NotificationDelegate.java"


# virtual methods
.method public abstract clearEffects()V
.end method

.method public abstract clearInlineReplyUriPermissions(Ljava/lang/String;I)V
.end method

.method public abstract grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;I)V
.end method

.method public abstract onBubbleNotificationSuppressionChanged(Ljava/lang/String;Z)V
.end method

.method public abstract onClearAll(III)V
.end method

.method public abstract onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
.end method

.method public abstract onNotificationBubbleChanged(Ljava/lang/String;ZI)V
.end method

.method public abstract onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onNotificationDirectReplied(Ljava/lang/String;)V
.end method

.method public abstract onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
.end method

.method public abstract onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
.end method

.method public abstract onNotificationSettingsViewed(Ljava/lang/String;)V
.end method

.method public abstract onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
.end method

.method public abstract onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
.end method

.method public abstract onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
.end method

.method public abstract onPanelHidden()V
.end method

.method public abstract onPanelRevealed(ZI)V
.end method

.method public abstract onSetDisabled(I)V
.end method

.method public abstract prepareForPossibleShutdown()V
.end method
