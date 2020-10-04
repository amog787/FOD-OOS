.class public final Lcom/android/server/tv/UinputBridge;
.super Ljava/lang/Object;
.source "UinputBridge.java"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mPtr:J

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxPointers"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 46
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    if-lt p4, v0, :cond_3

    .line 49
    if-lt p5, v0, :cond_2

    const/16 v0, 0x20

    if-gt p5, v0, :cond_2

    .line 52
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3, p4, p5}, Lcom/android/server/tv/UinputBridge;->nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 56
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 60
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 61
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open uinput device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Token cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touchpad must support between 1 and 32 pointers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touchpad must be at least 1x1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method private static native nativeSendKey(JIZ)V
.end method

.method private static native nativeSendPointerDown(JIII)V
.end method

.method private static native nativeSendPointerSync(J)V
.end method

.method private static native nativeSendPointerUp(JI)V
.end method

.method private static native nativeSendTimestamp(JJ)V
.end method


# virtual methods
.method public clear(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeClear(J)V

    .line 137
    :cond_0
    return-void
.end method

.method public close(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    .line 80
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeClose(J)V

    .line 82
    iput-wide v2, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 83
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 86
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    nop

    .line 74
    return-void

    .line 71
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected isTokenValid(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 93
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    .line 106
    :cond_0
    return-void
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    .line 112
    :cond_0
    return-void
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerDown(JIII)V

    .line 118
    :cond_0
    return-void
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerSync(J)V

    .line 131
    :cond_0
    return-void
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1, p2}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerUp(JI)V

    .line 124
    :cond_0
    return-void
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->isTokenValid(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1, p2, p3}, Lcom/android/server/tv/UinputBridge;->nativeSendTimestamp(JJ)V

    .line 100
    :cond_0
    return-void
.end method
