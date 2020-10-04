.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/StringBuilder;

.field private final synthetic f$1:Lcom/android/server/content/SyncManager$PrintTable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;->f$0:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;->f$1:Lcom/android/server/content/SyncManager$PrintTable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;->f$0:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$9EoLpTk5JrHZn9R-uS0lqCVrpRw;->f$1:Lcom/android/server/content/SyncManager$PrintTable;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Landroid/content/SyncStatusInfo$Stats;

    move-object v4, p3

    check-cast v4, Ljava/util/function/Function;

    move-object v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/android/server/content/SyncManager;->lambda$dumpSyncState$10(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;Ljava/lang/String;Landroid/content/SyncStatusInfo$Stats;Ljava/util/function/Function;Ljava/lang/Integer;)V

    return-void
.end method
