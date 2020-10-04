.class final Lcom/android/server/contentcapture/ContentCaptureServerSession;
.super Ljava/lang/Object;
.source "ContentCaptureServerSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final appComponentName:Landroid/content/ComponentName;

.field final mActivityToken:Landroid/os/IBinder;

.field private final mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

.field private final mId:I

.field private final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field private final mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/os/IBinder;Lcom/android/server/contentcapture/ContentCapturePerUserService;Landroid/content/ComponentName;Lcom/android/internal/os/IResultReceiver;IIIII)V
    .locals 15
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "service"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .param p4, "appComponentName"    # Landroid/content/ComponentName;
    .param p5, "sessionStateReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p6, "taskId"    # I
    .param p7, "displayId"    # I
    .param p8, "sessionId"    # I
    .param p9, "uid"    # I
    .param p10, "flags"    # I

    .line 80
    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 82
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mLock:Ljava/lang/Object;

    .line 83
    iput-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    .line 84
    move-object/from16 v11, p4

    iput-object v11, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    .line 85
    move-object/from16 v12, p3

    iput-object v12, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 86
    iput v3, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    .line 87
    move/from16 v13, p9

    iput v13, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    .line 88
    new-instance v14, Landroid/view/contentcapture/ContentCaptureContext;

    const/4 v6, 0x0

    move-object v5, v14

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    invoke-direct/range {v5 .. v10}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/content/ComponentName;III)V

    iput-object v14, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    .line 90
    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    .line 92
    :try_start_0
    invoke-interface/range {p5 .. p5}, Lcom/android/internal/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureServerSession$PKv4-aNj3xMYOeCpzUQZDD2iG0o;

    invoke-direct {v7, p0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureServerSession$PKv4-aNj3xMYOeCpzUQZDD2iG0o;-><init>(Lcom/android/server/contentcapture/ContentCaptureServerSession;)V

    invoke-interface {v6, v7, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not register DeathRecipient for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private onClientDeath()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientDeath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): removing session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->removeSelfLocked(Z)V

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public destroyLocked(Z)V
    .locals 3
    .param p1, "notifyRemoteService"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(notifyRemoteService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    if-eqz p1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_1

    .line 180
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked(): no remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionFinished(I)V

    .line 185
    :cond_2
    return-void
.end method

.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 232
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "context: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual {v0, p2}, Landroid/view/contentcapture/ContentCaptureContext;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity token: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->appComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "has autofill callback: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method isActivitySession(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 102
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$ContentCaptureServerSession()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->onClientDeath()V

    return-void
.end method

.method public notifySessionStartedLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7
    .param p1, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifySessionStartedLocked(): no remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    iget v4, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    const/4 v6, 0x2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 116
    return-void
.end method

.method public pauseLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pausing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    const/16 v1, 0x804

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 213
    return-void
.end method

.method public removeSelfLocked(Z)V
    .locals 3
    .param p1, "notifyRemoteService"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeSessionLocked(I)V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeSessionLocked(I)V

    throw v0
.end method

.method public resurrectLocked()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 193
    .local v0, "remoteService":Lcom/android/server/contentcapture/RemoteContentCaptureService;
    if-nez v0, :cond_0

    .line 194
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string v2, "destroyLocked(: no remote service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isVerbose()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resurrecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    new-instance v2, Landroid/view/contentcapture/ContentCaptureContext;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mContentCaptureContext:Landroid/view/contentcapture/ContentCaptureContext;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext;I)V

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    iget v4, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mUid:I

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    const/16 v6, 0x1002

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 203
    return-void
.end method

.method public sendActivitySnapshotLocked(Landroid/service/contentcapture/SnapshotData;)V
    .locals 3
    .param p1, "snapshotData"    # Landroid/service/contentcapture/SnapshotData;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 138
    .local v0, "logHistory":Landroid/util/LocalLog;
    if-eqz v0, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapshot: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v1, :cond_1

    .line 143
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendActivitySnapshotLocked(): no remote service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V

    .line 147
    return-void
.end method

.method public setContentCaptureEnabledLocked(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 124
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mSessionStateReceiver:Lcom/android/internal/os/IResultReceiver;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error async reporting result to client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method toShortString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCaptureSession[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
