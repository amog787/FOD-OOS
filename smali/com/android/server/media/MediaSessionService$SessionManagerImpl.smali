.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .line 1004
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1010
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 2192
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 2262
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # I

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/view/KeyEvent;
    .param p6, "x6"    # Z

    .line 1004
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/view/KeyEvent;
    .param p6, "x6"    # Z

    .line 1004
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method private dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "asSystemService"    # Z
    .param p6, "suggestedStream"    # I
    .param p7, "direction"    # I
    .param p8, "flags"    # I

    .line 1885
    move-object/from16 v9, p0

    move/from16 v10, p6

    move/from16 v8, p8

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_0

    .line 1886
    :cond_0
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 1888
    .local v7, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v0, 0x0

    .line 1889
    .local v0, "preferSuggestedStream":Z
    invoke-direct {v9, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1890
    invoke-static {v10, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1891
    const/4 v0, 0x1

    move v6, v0

    goto :goto_1

    .line 1894
    :cond_1
    move v6, v0

    .end local v0    # "preferSuggestedStream":Z
    .local v6, "preferSuggestedStream":Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjusting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suggestedStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preferSuggestedStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    .line 1936
    :cond_2
    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object v11, v7

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v17, p5

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    move v13, v6

    move-object v14, v7

    goto :goto_3

    .line 1899
    :cond_3
    :goto_2
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 1900
    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1901
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1902
    const-string v0, "No active session to adjust, skipping media only volume event"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_4
    return-void

    .line 1912
    :cond_5
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v11

    new-instance v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move v13, v6

    .end local v6    # "preferSuggestedStream":Z
    .local v13, "preferSuggestedStream":Z
    move/from16 v6, p7

    move-object v14, v7

    .end local v7    # "session":Lcom/android/server/media/MediaSessionRecord;
    .local v14, "session":Lcom/android/server/media/MediaSessionRecord;
    move/from16 v7, p8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1939
    :goto_3
    return-void
.end method

.method private dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    .line 1970
    move-object/from16 v1, p0

    move-object/from16 v10, p5

    const-string v2, ", type="

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v11

    .line 1971
    .local v11, "session":Lcom/android/server/media/MediaSessionRecord;
    const-string v12, "Failed to send callback"

    const/4 v0, -0x1

    const-string v3, "Sending "

    const-string v13, "MediaSessionService"

    if-eqz v11, :cond_2

    .line 1973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    if-eqz p6, :cond_0

    .line 1976
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1982
    :cond_0
    nop

    .line 1983
    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    const-string v3, "dispatchMediaKeyEvent A"

    invoke-static {v2, v3}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 1988
    nop

    .line 1989
    if-eqz p6, :cond_1

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$4600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :cond_1
    move v8, v0

    iget-object v9, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1988
    move-object v2, v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 1991
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1993
    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    .line 1994
    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    .line 1993
    invoke-interface {v0, v10, v2}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v13, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1997
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto/16 :goto_6

    .line 1999
    :cond_2
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2000
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 2001
    :cond_3
    if-eqz p6, :cond_4

    .line 2002
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 2007
    :cond_4
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2008
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    const-string v5, "dispatchMediaKeyEvent B"

    invoke-static {v4, v5}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 2012
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
    .local v4, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2014
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2017
    if-eqz p4, :cond_6

    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object/from16 v5, p1

    .line 2018
    .local v5, "callerPackageName":Ljava/lang/String;
    :goto_1
    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2020
    :try_start_1
    iget-object v6, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2021
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2023
    .local v2, "receiver":Landroid/app/PendingIntent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the last known PendingIntent "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v15

    .line 2027
    if-eqz p6, :cond_7

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$4600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :cond_7
    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2028
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v19

    .line 2026
    move-object v14, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v19}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2029
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2030
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 2031
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2032
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_8

    .line 2033
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v3

    .line 2034
    invoke-interface {v3, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    .line 2038
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "receiver":Landroid/app/PendingIntent;
    :cond_8
    goto/16 :goto_5

    .line 2039
    :cond_9
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2040
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v6, v0

    .line 2041
    .local v6, "receiver":Landroid/content/ComponentName;
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 2042
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v0

    move v7, v0

    .line 2043
    .local v7, "componentType":I
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 2044
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4900(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v0

    .line 2043
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object v8, v0

    .line 2046
    .local v8, "userHandle":Landroid/os/UserHandle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the restored intent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2051
    const/4 v0, 0x2

    if-eq v7, v0, :cond_b

    const/4 v0, 0x3

    if-eq v7, v0, :cond_a

    .line 2061
    :try_start_2
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 2063
    :catch_1
    move-exception v0

    goto :goto_3

    .line 2056
    :cond_a
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2058
    goto :goto_2

    .line 2053
    :cond_b
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2054
    nop

    .line 2066
    :goto_2
    goto :goto_4

    .line 2064
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error sending media button to the restored intent "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2067
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2068
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    .line 2069
    invoke-interface {v0, v10, v6}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 2076
    .end local v6    # "receiver":Landroid/content/ComponentName;
    .end local v7    # "componentType":I
    .end local v8    # "userHandle":Landroid/os/UserHandle;
    :catch_2
    move-exception v0

    .line 2077
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v13, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2073
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 2074
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending key event to media button receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2075
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2074
    invoke-static {v13, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2078
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_c
    :goto_5
    nop

    .line 2080
    .end local v4    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v5    # "callerPackageName":Ljava/lang/String;
    :cond_d
    :goto_6
    return-void
.end method

.method private dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "asSystemService"    # Z
    .param p6, "keyEvent"    # Landroid/view/KeyEvent;
    .param p7, "stream"    # I
    .param p8, "musicOnly"    # Z

    .line 1585
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1586
    .local v0, "down":Z
    :goto_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 1587
    .local v1, "up":Z
    :cond_1
    const/4 v2, 0x0

    .line 1588
    .local v2, "direction":I
    const/4 v3, 0x0

    .line 1589
    .local v3, "isMute":Z
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_4

    const/16 v5, 0x19

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 1597
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 1594
    :cond_3
    const/4 v2, -0x1

    .line 1595
    goto :goto_1

    .line 1591
    :cond_4
    const/4 v2, 0x1

    .line 1592
    nop

    .line 1600
    :goto_1
    if-nez v0, :cond_5

    if-eqz v1, :cond_a

    .line 1601
    :cond_5
    const/16 v4, 0x1000

    .line 1602
    .local v4, "flags":I
    if-eqz p8, :cond_6

    .line 1604
    or-int/lit16 v4, v4, 0x200

    goto :goto_2

    .line 1607
    :cond_6
    if-eqz v1, :cond_7

    .line 1608
    or-int/lit8 v4, v4, 0x14

    goto :goto_2

    .line 1610
    :cond_7
    or-int/lit8 v4, v4, 0x11

    .line 1613
    :goto_2
    if-eqz v2, :cond_9

    .line 1615
    if-eqz v1, :cond_8

    .line 1616
    const/4 v2, 0x0

    .line 1618
    :cond_8
    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    move v12, v2

    move v13, v4

    invoke-direct/range {v5 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    goto :goto_3

    .line 1620
    :cond_9
    if-eqz v3, :cond_a

    .line 1621
    if-eqz v0, :cond_a

    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_a

    .line 1622
    const/16 v12, 0x65

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    move v13, v4

    invoke-direct/range {v5 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    .line 1627
    .end local v4    # "flags":I
    :cond_a
    :goto_3
    return-void
.end method

.method private handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    .line 1943
    move-object v7, p0

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    .line 1944
    .local v8, "action":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v9, v0

    .line 1945
    .local v9, "isLongPress":Z
    if-nez v8, :cond_3

    .line 1946
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1947
    iput-boolean v1, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1948
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    move-object/from16 v11, p5

    move/from16 v10, p6

    goto :goto_1

    .line 1949
    :cond_1
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_2

    if-eqz v9, :cond_2

    .line 1950
    iput-boolean v1, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1951
    move/from16 v10, p6

    invoke-direct {p0, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    move-object/from16 v11, p5

    goto :goto_1

    .line 1949
    :cond_2
    move/from16 v10, p6

    move-object/from16 v11, p5

    goto :goto_1

    .line 1953
    :cond_3
    move/from16 v10, p6

    if-ne v8, v1, :cond_6

    .line 1954
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_5

    .line 1955
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1956
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1958
    move-object/from16 v11, p5

    invoke-static {v11, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v12

    .line 1959
    .local v12, "downEvent":Landroid/view/KeyEvent;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1961
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 1956
    .end local v12    # "downEvent":Landroid/view/KeyEvent;
    :cond_4
    move-object/from16 v11, p5

    goto :goto_1

    .line 1954
    :cond_5
    move-object/from16 v11, p5

    goto :goto_1

    .line 1953
    :cond_6
    move-object/from16 v11, p5

    .line 1966
    :goto_1
    return-void
.end method

.method private hasMediaControlPermission(ILjava/lang/String;II)Z
    .locals 8
    .param p1, "resolvedUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1843
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p3, p4}, Lcom/android/server/media/MediaSessionService;->access$4200(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1844
    return v1

    .line 1850
    :cond_0
    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_7

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1854
    :cond_1
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    const-string v2, " (uid="

    const-string v3, "MediaSessionService"

    if-eqz v0, :cond_2

    .line 1855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_2
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1860
    .local v0, "userId":I
    const/4 v4, 0x0

    if-eq p1, v0, :cond_3

    .line 1861
    return v4

    .line 1866
    :cond_3
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1867
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$4300(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v5

    .line 1868
    .local v5, "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_5

    .line 1869
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1870
    nop

    .line 1871
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1870
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1872
    return v1

    .line 1869
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1876
    .end local v6    # "i":I
    :cond_5
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") doesn\'t have an enabled notification listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_6
    return v4

    .line 1853
    .end local v0    # "userId":I
    .end local v5    # "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_7
    :goto_1
    return v1
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .line 2126
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isValidLocalStreamType(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 2132
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .line 2121
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2122
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$5200(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2121
    :goto_1
    return v0
.end method

.method private startVoiceInput(Z)V
    .locals 8
    .param p1, "needWakeLock"    # Z

    .line 2083
    const/4 v0, 0x0

    .line 2089
    .local v0, "voiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2090
    .local v1, "pm":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 2091
    .local v2, "isLocked":Z
    :goto_0
    const-string v5, "MediaSessionService"

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2092
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2093
    const-string/jumbo v3, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2095
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 2096
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2097
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 2096
    :goto_1
    const-string v4, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2098
    const-string/jumbo v3, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :goto_2
    if-eqz p1, :cond_3

    .line 2102
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2105
    :cond_3
    nop

    .line 2106
    const/high16 v3, 0x10800000

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2108
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voiceIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_4
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2114
    if-eqz p1, :cond_5

    .line 2115
    :goto_3
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4

    .line 2114
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 2111
    :catch_0
    move-exception v3

    .line 2112
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2114
    nop

    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    if-eqz p1, :cond_5

    .line 2115
    goto :goto_3

    .line 2118
    :cond_5
    :goto_4
    return-void

    .line 2114
    :goto_5
    if-eqz p1, :cond_6

    .line 2115
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    throw v3
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 1823
    const/4 v0, 0x0

    .line 1824
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1827
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1828
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0, p4}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1832
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "getSessions"

    move v2, p3

    move v3, p4

    move v4, p2

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1836
    .local v1, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, p1, p3, p4, v1}, Lcom/android/server/media/MediaSessionService;->access$4100(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 1837
    return v1
.end method


# virtual methods
.method public addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .locals 11
    .param p1, "listener"    # Landroid/media/session/ISession2TokensListener;
    .param p2, "userId"    # I

    .line 1150
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1151
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1152
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1156
    .local v9, "token":J
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "addSession2TokensListener"

    const/4 v6, 0x0

    move v0, v7

    move v1, v8

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1159
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1160
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v2

    .line 1161
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 1162
    const-string v3, "MediaSessionService"

    const-string v4, "addSession2TokensListener is already added, ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1163
    return-void

    .line 1165
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v4, v5, p1, v0}, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    nop

    .end local v2    # "index":I
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1169
    .end local v0    # "resolvedUserId":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    nop

    .line 1171
    return-void

    .line 1167
    .restart local v0    # "resolvedUserId":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .end local v9    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    .end local p2    # "userId":I
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1169
    .end local v0    # "resolvedUserId":I
    .restart local v7    # "pid":I
    .restart local v8    # "uid":I
    .restart local v9    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .locals 17
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1104
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1105
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1106
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1109
    .local v11, "token":J
    move-object/from16 v13, p2

    move/from16 v14, p3

    :try_start_0
    invoke-direct {v1, v13, v14, v9, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v6

    .line 1110
    .local v6, "resolvedUserId":I
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1111
    :try_start_1
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object/from16 v8, p1

    invoke-static {v0, v8}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    move v7, v0

    .line 1112
    .local v7, "index":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 1113
    const-string v0, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1127
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    return-void

    .line 1116
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v16, v7

    .end local v7    # "index":I
    .local v16, "index":I
    move v7, v9

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    .line 1119
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1123
    nop

    .line 1124
    :try_start_4
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    nop

    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16    # "index":I
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1127
    .end local v6    # "resolvedUserId":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    nop

    .line 1129
    return-void

    .line 1120
    .restart local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .restart local v6    # "resolvedUserId":I
    .restart local v16    # "index":I
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "MediaSessionService"

    const-string v4, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1127
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1122
    return-void

    .line 1125
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16    # "index":I
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v9    # "pid":I
    .end local v10    # "uid":I
    .end local v11    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IActiveSessionsListener;
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p3    # "userId":I
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1127
    .end local v6    # "resolvedUserId":I
    .restart local v9    # "pid":I
    .restart local v10    # "uid":I
    .restart local v11    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IActiveSessionsListener;
    .restart local p2    # "componentName":Landroid/content/ComponentName;
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sessionInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1015
    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1016
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1017
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1019
    .local v12, "token":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p1

    :try_start_1
    invoke-static {v0, v14, v11}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1020
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "createSession"

    move v2, v10

    move v3, v11

    move/from16 v4, p5

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1022
    .local v5, "resolvedUserId":I
    if-eqz p2, :cond_0

    .line 1025
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v10

    move v4, v11

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1028
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1025
    return-object v0

    .line 1023
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Controller callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "pid":I
    .end local v11    # "uid":I
    .end local v12    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "cb":Landroid/media/session/ISessionCallback;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "sessionInfo":Landroid/os/Bundle;
    .end local p5    # "userId":I
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1028
    .end local v5    # "resolvedUserId":I
    .restart local v10    # "pid":I
    .restart local v11    # "uid":I
    .restart local v12    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "cb":Landroid/media/session/ISessionCallback;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "sessionInfo":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "suggestedStream"    # I
    .param p4, "delta"    # I
    .param p5, "flags"    # I

    .line 1701
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1702
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1703
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1705
    .local v12, "token":J
    move-object/from16 v14, p0

    :try_start_0
    iget-object v0, v14, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1706
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v10

    move v5, v11

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    .line 1708
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1710
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1711
    nop

    .line 1712
    return-void

    .line 1708
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v10    # "pid":I
    .end local v11    # "uid":I
    .end local v12    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "suggestedStream":I
    .end local p4    # "delta":I
    .end local p5    # "flags":I
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1710
    .restart local v10    # "pid":I
    .restart local v11    # "uid":I
    .restart local v12    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "suggestedStream":I
    .restart local p4    # "delta":I
    .restart local p5    # "flags":I
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "asSystemService"    # Z
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "needWakeLock"    # Z

    .line 1220
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    if-eqz v11, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1225
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1226
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1227
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1229
    .local v14, "token":J
    :try_start_0
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    .line 1230
    :try_start_1
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v9, p1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v8, p2

    :try_start_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1276
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_0
    move/from16 v8, p2

    goto/16 :goto_3

    .line 1229
    :cond_1
    move-object/from16 v9, p1

    move/from16 v8, p2

    .line 1234
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1237
    const-string v0, "MediaSessionService"

    const-string v1, "Not dispatching media key event because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1276
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    return-void

    .line 1242
    :cond_2
    :try_start_4
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1243
    :try_start_5
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    move/from16 v17, v0

    .line 1244
    .local v17, "isGlobalPriorityActive":Z
    if-eqz v17, :cond_3

    const/16 v0, 0x3e8

    if-eq v13, v0, :cond_3

    .line 1247
    const-string v0, "MediaSessionService"

    const-string v1, "Only the system can dispatch media key event to the global priority session."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1276
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1249
    return-void

    .line 1251
    :cond_3
    if-nez v17, :cond_4

    .line 1252
    :try_start_6
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1254
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the media key listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1257
    :try_start_7
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    new-instance v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;

    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v12

    move v5, v13

    move/from16 v6, p2

    move-object/from16 v19, v7

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$1;)V

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1260
    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1276
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    return-void

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the media key listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    if-nez v17, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v10, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_2

    .line 1271
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1274
    .end local v17    # "isGlobalPriorityActive":Z
    :goto_2
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1276
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    nop

    .line 1278
    return-void

    .line 1274
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "asSystemService":Z
    .end local p3    # "keyEvent":Landroid/view/KeyEvent;
    .end local p4    # "needWakeLock":Z
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1276
    .restart local v12    # "pid":I
    .restart local v13    # "uid":I
    .restart local v14    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "asSystemService":Z
    .restart local p3    # "keyEvent":Landroid/view/KeyEvent;
    .restart local p4    # "needWakeLock":Z
    :catchall_3
    move-exception v0

    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1221
    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    :cond_6
    :goto_4
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-media key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-void
.end method

.method public dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/view/KeyEvent;)Z
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1295
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1296
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1297
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1299
    .local v13, "token":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1300
    :try_start_1
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1301
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    if-nez v0, :cond_0

    .line 1302
    const-string v3, "MediaSessionService"

    const-string v4, "Failed to find session to dispatch key event."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v3, 0x0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1314
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1303
    return v3

    .line 1305
    :cond_0
    :try_start_2
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    .line 1306
    :try_start_3
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v10, p1

    :try_start_4
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v9, p3

    :try_start_5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1312
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_0
    move-object/from16 v9, p3

    goto :goto_2

    .line 1305
    .restart local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    move-object/from16 v10, p1

    move-object/from16 v9, p3

    .line 1310
    :goto_1
    const/4 v7, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v0

    move-object/from16 v4, p1

    move v5, v11

    move v6, v12

    move-object/from16 v8, p3

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result v3

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1314
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1310
    return v3

    .line 1312
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_2
    move-exception v0

    :goto_2
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "sessionToken":Landroid/media/session/MediaSession$Token;
    .end local p3    # "keyEvent":Landroid/view/KeyEvent;
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1314
    .restart local v11    # "pid":I
    .restart local v12    # "uid":I
    .restart local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "sessionToken":Landroid/media/session/MediaSession$Token;
    .restart local p3    # "keyEvent":Landroid/view/KeyEvent;
    :catchall_3
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "asSystemService"    # Z
    .param p4, "keyEvent"    # Landroid/view/KeyEvent;
    .param p5, "stream"    # I
    .param p6, "musicOnly"    # Z

    .line 1507
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    if-eqz v11, :cond_9

    .line 1508
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 1509
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 1510
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 1515
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1516
    .local v14, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1517
    .local v15, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1520
    .local v16, "token":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", musicOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :try_start_0
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1528
    :try_start_1
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1529
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1535
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_5

    .line 1536
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1538
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 1539
    invoke-static/range {p4 .. p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1538
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1540
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1541
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z

    .line 1542
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1543
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1545
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v3

    const/4 v4, 0x0

    .line 1543
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1546
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$3600(Lcom/android/server/media/MediaSessionService;)I

    move-result v3

    int-to-long v3, v3

    .line 1542
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1548
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1549
    :cond_3
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1550
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1551
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1552
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1551
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 1554
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1556
    :cond_4
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v11}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto/16 :goto_1

    .line 1559
    :cond_5
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1560
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1561
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1562
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 1564
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1566
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1567
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v19

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1568
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z

    move-result v20

    .line 1564
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move v5, v15

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1569
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move v5, v15

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_1

    .line 1572
    :cond_6
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v11}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1530
    :cond_7
    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move v5, v15

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1576
    :cond_8
    :goto_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1578
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1579
    nop

    .line 1580
    return-void

    .line 1576
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v14    # "pid":I
    .end local v15    # "uid":I
    .end local v16    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "asSystemService":Z
    .end local p4    # "keyEvent":Landroid/view/KeyEvent;
    .end local p5    # "stream":I
    .end local p6    # "musicOnly":Z
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1578
    .restart local v14    # "pid":I
    .restart local v15    # "uid":I
    .restart local v16    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "asSystemService":Z
    .restart local p4    # "keyEvent":Landroid/view/KeyEvent;
    .restart local p5    # "stream":I
    .restart local p6    # "musicOnly":Z
    :catchall_1
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1511
    .end local v14    # "pid":I
    .end local v15    # "uid":I
    .end local v16    # "token":J
    :cond_9
    :goto_2
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-volume key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-void
.end method

.method public dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/view/KeyEvent;)V
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Landroid/media/session/MediaSession$Token;
    .param p4, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1644
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 1645
    .local v15, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1646
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1648
    .local v22, "token":J
    :try_start_0
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 1649
    :try_start_1
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v11}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1650
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    if-nez v0, :cond_0

    .line 1651
    :try_start_2
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find session to dispatch key event, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Fallbacks to the default handling."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v6, 0x1

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move v5, v14

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1655
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1694
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1655
    return-void

    .line 1692
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    move-object/from16 v4, p2

    :goto_1
    move-object/from16 v5, p4

    :goto_2
    move v2, v14

    move v6, v15

    goto/16 :goto_7

    .line 1657
    .restart local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    :try_start_3
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v1, :cond_1

    .line 1658
    :try_start_4
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchVolumeKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v3, p1

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", opPkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v4, p2

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionToken="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", event="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v5, p4

    :try_start_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", session="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 1692
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    .line 1657
    .restart local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    .line 1663
    :goto_3
    :try_start_8
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move v2, v14

    move v6, v15

    goto :goto_5

    .line 1684
    :cond_2
    const/16 v1, 0x1014

    .line 1687
    .local v1, "flags":I
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1014

    const/16 v21, 0x0

    move-object v12, v0

    move-object/from16 v13, p1

    move v2, v14

    .end local v14    # "uid":I
    .local v2, "uid":I
    move-object/from16 v14, p2

    move v6, v15

    .end local v15    # "pid":I
    .local v6, "pid":I
    move/from16 v16, v2

    :try_start_9
    invoke-virtual/range {v12 .. v21}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    goto :goto_5

    .line 1665
    .end local v1    # "flags":I
    .end local v2    # "uid":I
    .end local v6    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    :cond_3
    move v2, v14

    move v6, v15

    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local v2    # "uid":I
    .restart local v6    # "pid":I
    const/4 v1, 0x0

    .line 1666
    .local v1, "direction":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x18

    if-eq v7, v8, :cond_6

    const/16 v8, 0x19

    if-eq v7, v8, :cond_5

    const/16 v8, 0xa4

    if-eq v7, v8, :cond_4

    goto :goto_4

    .line 1674
    :cond_4
    const/16 v1, 0x65

    goto :goto_4

    .line 1671
    :cond_5
    const/4 v1, -0x1

    .line 1672
    goto :goto_4

    .line 1668
    :cond_6
    const/4 v1, 0x1

    .line 1669
    nop

    .line 1677
    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v12, v0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v6

    move/from16 v16, v2

    move/from16 v19, v1

    invoke-virtual/range {v12 .. v21}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    .line 1680
    nop

    .line 1692
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    .end local v1    # "direction":I
    :goto_5
    monitor-exit v24
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1694
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1695
    nop

    .line 1696
    return-void

    .line 1692
    .end local v2    # "uid":I
    .end local v6    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    :goto_6
    move v2, v14

    move v6, v15

    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local v2    # "uid":I
    .restart local v6    # "pid":I
    :goto_7
    :try_start_a
    monitor-exit v24
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .end local v2    # "uid":I
    .end local v6    # "pid":I
    .end local v22    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "sessionToken":Landroid/media/session/MediaSession$Token;
    .end local p4    # "keyEvent":Landroid/view/KeyEvent;
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1694
    .restart local v2    # "uid":I
    .restart local v6    # "pid":I
    .restart local v22    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "sessionToken":Landroid/media/session/MediaSession$Token;
    .restart local p4    # "keyEvent":Landroid/view/KeyEvent;
    :catchall_6
    move-exception v0

    goto :goto_8

    .line 1692
    :catchall_7
    move-exception v0

    goto :goto_7

    .line 1694
    .end local v2    # "uid":I
    .end local v6    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    :catchall_8
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move v2, v14

    move v6, v15

    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local v2    # "uid":I
    .restart local v6    # "pid":I
    :goto_8
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1755
    :cond_0
    const-string v0, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1758
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1759
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessions listeners."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global priority session is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1762
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1764
    :cond_1
    const-string v1, "User Records:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1766
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1767
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1766
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1769
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1770
    .end local v1    # "count":I
    monitor-exit v0

    .line 1771
    return-void

    .line 1770
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentMediaButtonPackageName()Ljava/lang/String;
    .locals 4

    .line 1776
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1778
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1779
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1780
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1781
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMediaButtonPackageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaSessionService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    return-object v1

    .line 1787
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSession2Tokens(I)Landroid/content/pm/ParceledListSlice;
    .locals 11
    .param p1, "userId"    # I

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1082
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1083
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1088
    .local v9, "token":J
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "getSession2Tokens"

    const/4 v6, 0x0

    move v0, v7

    move v1, v8

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1092
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1093
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2, v0}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v2

    .line 1094
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :try_start_2
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1097
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    return-object v1

    .line 1094
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v7    # "pid":I
    .end local v8    # "uid":I
    .end local v9    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "userId":I
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1097
    .end local v0    # "resolvedUserId":I
    .restart local v7    # "pid":I
    .restart local v8    # "uid":I
    .restart local v9    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation

    .line 1060
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1061
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1062
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1065
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1066
    .local v4, "resolvedUserId":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1068
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v4}, Lcom/android/server/media/MediaSessionService;->access$2300(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object v7

    .line 1069
    .local v7, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    .line 1070
    .local v9, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    nop

    .end local v9    # "record":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_0

    .line 1072
    .end local v7    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    nop

    .line 1075
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1073
    return-object v5

    .line 1072
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1075
    .end local v4    # "resolvedUserId":I
    .end local v5    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isGlobalPriorityActive()Z
    .locals 2

    .line 1746
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1747
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1748
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "controllerPackageName"    # Ljava/lang/String;
    .param p2, "controllerPid"    # I
    .param p3, "controllerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1802
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1803
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1813
    .local v1, "token":J
    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasMediaControlPermission(ILjava/lang/String;II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    return v3

    .line 1816
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifySession2Created(Landroid/media/Session2Token;)V
    .locals 8
    .param p1, "sessionToken"    # Landroid/media/Session2Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1035
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1036
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1038
    .local v2, "token":J
    :try_start_0
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1039
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session2 is created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    invoke-virtual {p1}, Landroid/media/Session2Token;->getUid()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 1045
    new-instance v4, Lcom/android/server/media/MediaSessionService$Controller2Callback;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v4, v5, p1}, Lcom/android/server/media/MediaSessionService$Controller2Callback;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/Session2Token;)V

    .line 1050
    .local v4, "callback":Lcom/android/server/media/MediaSessionService$Controller2Callback;
    new-instance v5, Landroid/media/MediaController2$Builder;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Landroid/media/MediaController2$Builder;-><init>(Landroid/content/Context;Landroid/media/Session2Token;)V

    new-instance v6, Landroid/os/HandlerExecutor;

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1051
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaController2$Builder;->setControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/MediaController2$Builder;

    move-result-object v5

    .line 1052
    invoke-virtual {v5}, Landroid/media/MediaController2$Builder;->build()Landroid/media/MediaController2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    nop

    .end local v4    # "callback":Lcom/android/server/media/MediaSessionService$Controller2Callback;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1055
    nop

    .line 1056
    return-void

    .line 1042
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected Session2Token\'s UID, expected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " but actually="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {p1}, Landroid/media/Session2Token;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "sessionToken":Landroid/media/Session2Token;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "sessionToken":Landroid/media/Session2Token;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public registerRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 7
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1717
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1718
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1719
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1721
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1722
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1725
    nop

    .line 1726
    monitor-exit v4

    .line 1727
    return-void

    .line 1724
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "rvc":Landroid/media/IRemoteVolumeController;
    throw v5

    .line 1726
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "rvc":Landroid/media/IRemoteVolumeController;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method

.method public removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .locals 9
    .param p1, "listener"    # Landroid/media/session/ISession2TokensListener;

    .line 1175
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1176
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1177
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1180
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1181
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v5

    .line 1182
    .local v5, "index":I
    if-ltz v5, :cond_0

    .line 1183
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1184
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    .local v6, "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_start_2
    iget-object v7, v6, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v7}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1189
    goto :goto_0

    .line 1187
    :catch_0
    move-exception v7

    .line 1191
    .end local v5    # "index":I
    .end local v6    # "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1193
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    nop

    .line 1195
    return-void

    .line 1191
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1193
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/ISession2TokensListener;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v1

    .line 1136
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1137
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    goto :goto_0

    .line 1140
    :catch_0
    move-exception v3

    .line 1144
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 1145
    return-void

    .line 1144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setCallback(Landroid/media/session/ICallback;)V
    .locals 10
    .param p1, "callback"    # Landroid/media/session/ICallback;

    .line 1320
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1321
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1322
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1324
    .local v2, "token":J
    const/16 v4, 0x3ea

    :try_start_0
    invoke-static {v1, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1328
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1329
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1330
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1331
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_0

    goto :goto_1

    .line 1336
    :cond_0
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1337
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The callback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1338
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1337
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1340
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1340
    return-void

    .line 1343
    :cond_1
    :try_start_2
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/ICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1352
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1356
    goto :goto_0

    .line 1353
    :catch_0
    move-exception v7

    .line 1354
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "MediaSessionService"

    const-string v9, "Failed to set callback"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1357
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1360
    nop

    .line 1361
    return-void

    .line 1332
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_2
    :goto_1
    :try_start_4
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the callback, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1334
    return-void

    .line 1357
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "callback":Landroid/media/session/ICallback;
    :try_start_6
    throw v5

    .line 1325
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "callback":Landroid/media/session/ICallback;
    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Only Bluetooth service processes can set Callback"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "callback":Landroid/media/session/ICallback;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1359
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "callback":Landroid/media/session/ICallback;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .locals 11
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyListener;

    .line 1425
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1426
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1427
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1430
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4

    .line 1436
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1437
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1438
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1439
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_0

    goto/16 :goto_1

    .line 1444
    :cond_0
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 1445
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1445
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1475
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    return-void

    .line 1451
    :cond_1
    :try_start_2
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1452
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1454
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1455
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1454
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 1459
    :try_start_3
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1471
    goto :goto_0

    .line 1468
    :catch_0
    move-exception v7

    .line 1469
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1473
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1475
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    nop

    .line 1477
    return-void

    .line 1440
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_3
    :goto_1
    :try_start_5
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the media key listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1475
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    return-void

    .line 1473
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    :try_start_7
    throw v5

    .line 1433
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1475
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnMediaKeyListener;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .locals 11
    .param p1, "listener"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1365
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1366
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1367
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1370
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4

    .line 1377
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1378
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1379
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1380
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_0

    goto/16 :goto_1

    .line 1385
    :cond_0
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1386
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 1387
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1387
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1391
    return-void

    .line 1394
    :cond_1
    :try_start_2
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1395
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1397
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1398
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1397
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 1402
    :try_start_3
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1415
    goto :goto_0

    .line 1411
    :catch_0
    move-exception v7

    .line 1412
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1412
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1417
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1419
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    nop

    .line 1421
    return-void

    .line 1381
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_3
    :goto_1
    :try_start_5
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1419
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1383
    return-void

    .line 1417
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :try_start_7
    throw v5

    .line 1373
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1419
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unregisterRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 7
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .line 1731
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1732
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1733
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1734
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1736
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1737
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1739
    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1740
    nop

    .line 1741
    monitor-exit v4

    .line 1742
    return-void

    .line 1739
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "pid":I
    .end local v1    # "uid":I
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1    # "rvc":Landroid/media/IRemoteVolumeController;
    throw v5

    .line 1741
    .restart local v0    # "pid":I
    .restart local v1    # "uid":I
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1    # "rvc":Landroid/media/IRemoteVolumeController;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method
