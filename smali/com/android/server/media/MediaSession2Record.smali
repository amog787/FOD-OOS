.class public Lcom/android/server/media/MediaSession2Record;
.super Ljava/lang/Object;
.source "MediaSession2Record.java"

# interfaces
.implements Lcom/android/server/media/MediaSessionRecordImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSession2Record$Controller2Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSession2Record"


# instance fields
.field private final mController:Landroid/media/MediaController2;

.field private final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field private mIsClosed:Z

.field private mIsConnected:Z

.field private final mLock:Ljava/lang/Object;

.field private mPolicies:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSessionToken:Landroid/media/Session2Token;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "MediaSession2Record"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/media/Session2Token;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    .locals 4
    .param p1, "sessionToken"    # Landroid/media/Session2Token;
    .param p2, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p3, "handlerLooper"    # Landroid/os/Looper;
    .param p4, "policies"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 61
    iput-object p2, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    .line 62
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 63
    new-instance v0, Landroid/media/MediaController2$Builder;

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/MediaController2$Builder;-><init>(Landroid/content/Context;Landroid/media/Session2Token;)V

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    new-instance v2, Lcom/android/server/media/MediaSession2Record$Controller2Callback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/media/MediaSession2Record$Controller2Callback;-><init>(Lcom/android/server/media/MediaSession2Record;Lcom/android/server/media/MediaSession2Record$1;)V

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaController2$Builder;->setControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/MediaController2$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/media/MediaController2$Builder;->build()Landroid/media/MediaController2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    .line 66
    iput p4, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    .line 67
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/server/media/MediaSession2Record;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSession2Record;)Landroid/media/Session2Token;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSession2Record;

    .line 38
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSession2Record;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSession2Record;

    .line 38
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/media/MediaSession2Record;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSession2Record;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSession2Record;)Lcom/android/server/media/MediaSessionService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSession2Record;

    .line 38
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "asSystemService"    # Z
    .param p6, "direction"    # I
    .param p7, "flags"    # I
    .param p8, "useSuggested"    # Z

    .line 99
    return-void
.end method

.method public checkPlaybackActiveState(Z)Z
    .locals 2
    .param p1, "expected"    # Z

    .line 110
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {v1}, Landroid/media/MediaController2;->isPlaybackActive()Z

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsClosed:Z

    .line 127
    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {v1}, Landroid/media/MediaController2;->close()V

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "playbackActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSession2Record;->mController:Landroid/media/MediaController2;

    invoke-virtual {v2}, Landroid/media/MediaController2;->isPlaybackActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0}, Landroid/media/Session2Token;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession2Token()Landroid/media/Session2Token;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    return-object v0
.end method

.method public getSessionPolicies()I
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget v1, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    monitor-exit v0

    return v1

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUid()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0}, Landroid/media/Session2Token;->getUid()I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    invoke-virtual {v0}, Landroid/media/Session2Token;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsConnected:Z

    monitor-exit v0

    return v1

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSession2Record;->mIsClosed:Z

    monitor-exit v0

    return v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlaybackTypeLocal()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public isSystemPriority()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "ke"    # Landroid/view/KeyEvent;
    .param p6, "sequenceId"    # I
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public setSessionPolicies(I)V
    .locals 2
    .param p1, "policies"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/media/MediaSession2Record;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iput p1, p0, Lcom/android/server/media/MediaSession2Record;->mPolicies:I

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/media/MediaSession2Record;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSession2Record;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
