.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$pydsjOZodJQYqLnk-bBKjwKfMTw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/SnoozeHelper$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$pydsjOZodJQYqLnk-bBKjwKfMTw;->f$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final repost(ILcom/android/server/notification/NotificationRecord;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$pydsjOZodJQYqLnk-bBKjwKfMTw;->f$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->lambda$onStart$0$NotificationManagerService(ILcom/android/server/notification/NotificationRecord;Z)V

    return-void
.end method
