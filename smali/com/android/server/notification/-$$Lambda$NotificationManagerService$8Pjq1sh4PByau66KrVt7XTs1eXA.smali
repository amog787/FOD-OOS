.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field private final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$8Pjq1sh4PByau66KrVt7XTs1eXA;->f$1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->lambda$doChannelWarningToast$2$NotificationManagerService(Ljava/lang/CharSequence;)V

    return-void
.end method
