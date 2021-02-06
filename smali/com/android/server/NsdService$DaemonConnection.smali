.class public Lcom/android/server/NsdService$DaemonConnection;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaemonConnection"
.end annotation


# instance fields
.field final mNativeConnector:Lcom/android/server/NativeDaemonConnector;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NativeCallbackReceiver;)V
    .locals 8
    .param p1, "callback"    # Lcom/android/server/NsdService$NativeCallbackReceiver;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    new-instance v7, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mdns"

    const/16 v3, 0xa

    const-string/jumbo v4, "mDnsConnector"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v7, p0, Lcom/android/server/NsdService$DaemonConnection;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    .line 687
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/NsdService$DaemonConnection;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mDnsConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 688
    return-void
.end method


# virtual methods
.method public varargs execute([Ljava/lang/Object;)Z
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mdnssd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NsdService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NsdService$DaemonConnection;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "mdnssd"

    invoke-virtual {v0, v2, p1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    nop

    .line 700
    const/4 v0, 0x1

    return v0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute mdnssd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    const/4 v1, 0x0

    return v1
.end method

.method public start()V
    .locals 3

    .line 704
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "start-service"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    .line 705
    return-void
.end method

.method public stop()V
    .locals 3

    .line 708
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "stop-service"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    .line 709
    return-void
.end method
