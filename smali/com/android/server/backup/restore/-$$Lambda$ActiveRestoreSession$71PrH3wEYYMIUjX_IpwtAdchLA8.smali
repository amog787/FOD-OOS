.class public final synthetic Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/TransportManager;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportClient;

.field public final synthetic f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;->f$0:Lcom/android/server/backup/TransportManager;

    iput-object p2, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;->f$1:Lcom/android/server/backup/transport/TransportClient;

    iput-object p3, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;->f$0:Lcom/android/server/backup/TransportManager;

    iget-object v1, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;->f$1:Lcom/android/server/backup/transport/TransportClient;

    iget-object v2, p0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->lambda$sendRestoreToHandlerLocked$4(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V

    return-void
.end method
