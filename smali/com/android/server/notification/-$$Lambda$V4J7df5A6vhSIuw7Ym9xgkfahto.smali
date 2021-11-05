.class public final synthetic Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;->f$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto;->f$0:Lcom/android/server/notification/NotificationManagerService;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->canUseManagedServices(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
