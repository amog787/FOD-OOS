.class Lcom/android/server/am/UserController$UserProgressListener;
.super Landroid/os/IProgressListener$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserProgressListener"
.end annotation


# instance fields
.field private volatile mUnlockStarted:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2794
    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UserController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/UserController$1;

    .line 2794
    invoke-direct {p0}, Lcom/android/server/am/UserController$UserProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2809
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    sub-long/2addr v0, v2

    .line 2812
    .local v0, "unlockTime":J
    if-nez p1, :cond_0

    .line 2813
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string v3, "SystemUserUnlock"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    goto :goto_0

    .line 2815
    :cond_0
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Unlock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->logDuration(Ljava/lang/String;J)V

    .line 2817
    :goto_0
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    .line 2800
    return-void
.end method
