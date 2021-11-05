.class public final synthetic Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Landroid/app/backup/IRestoreObserver;

.field public final synthetic f$1:Landroid/app/backup/IBackupManagerMonitor;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;->f$0:Landroid/app/backup/IRestoreObserver;

    iput-object p2, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;->f$1:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p3, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;->f$0:Landroid/app/backup/IRestoreObserver;

    iget-object v1, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;->f$1:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v2, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;->f$2:J

    move-object v4, p1

    check-cast v4, Lcom/android/server/backup/transport/TransportClient;

    move-object v5, p2

    check-cast v5, Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-static/range {v0 .. v5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$restoreAll$1(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p1

    return-object p1
.end method
