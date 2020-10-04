.class public Lcom/android/server/backup/params/RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "RestoreGetSetsParams.java"


# instance fields
.field public final listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final session:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public final transportClient:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 0
    .param p1, "_transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "_session"    # Lcom/android/server/backup/restore/ActiveRestoreSession;
    .param p3, "_observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "_monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "_listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 38
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 39
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 40
    iput-object p4, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 41
    iput-object p5, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 42
    return-void
.end method
