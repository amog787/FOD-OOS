.class public interface abstract Lcom/android/server/notification/NotificationManagerInternal;
.super Ljava/lang/Object;
.source "NotificationManagerInternal.java"


# virtual methods
.method public abstract cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
.end method

.method public abstract enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
.end method

.method public abstract getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
.end method

.method public abstract onConversationRemoved(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
.end method
