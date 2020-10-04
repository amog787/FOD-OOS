.class public final synthetic Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/TransportManager;

.field private final synthetic f$1:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;->f$0:Lcom/android/server/backup/TransportManager;

    iput-object p2, p0, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;->f$1:Lcom/android/server/backup/transport/TransportClient;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;->f$0:Lcom/android/server/backup/TransportManager;

    iget-object v1, p0, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;->f$1:Lcom/android/server/backup/transport/TransportClient;

    invoke-static {v0, v1, p1}, Lcom/android/server/backup/internal/BackupHandler;->lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    return-void
.end method
