.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$bdk_M-VzqNrv0YUKgfP910lcpEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$bdk_M-VzqNrv0YUKgfP910lcpEs;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$17$bdk_M-VzqNrv0YUKgfP910lcpEs;->f$0:I

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService$17;->lambda$run$0(II)Z

    move-result p1

    return p1
.end method
