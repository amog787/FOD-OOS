.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:I

.field private final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$1;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$0:Lcom/android/server/notification/NotificationManagerService$1;

    iput p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$1:I

    iput p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$2:I

    iput-object p4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$5:I

    iput-object p7, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$0:Lcom/android/server/notification/NotificationManagerService$1;

    iget v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$1:I

    iget v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$2:I

    iget-object v3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$5:I

    iget-object v6, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;->f$6:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$1;->lambda$onNotificationError$0$NotificationManagerService$1(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
