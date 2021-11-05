.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$7$oVwblUFCYS29-pk3mwoXkriijO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$7$oVwblUFCYS29-pk3mwoXkriijO4;->f$0:Lcom/android/server/notification/NotificationManagerService$7;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$7$oVwblUFCYS29-pk3mwoXkriijO4;->f$0:Lcom/android/server/notification/NotificationManagerService$7;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$7;->lambda$onZenModeChanged$0$NotificationManagerService$7()V

    return-void
.end method
