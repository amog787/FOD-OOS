.class public Lcom/android/server/media/MediaShellCommand;
.super Landroid/os/ShellCommand;
.source "MediaShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaShellCommand$ControllerMonitor;,
        Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = ""

.field private static sMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private static sThread:Landroid/app/ActivityThread;


# instance fields
.field private mErrorWriter:Ljava/io/PrintWriter;

.field private mSessionService:Landroid/media/session/ISessionManager;

.field private mWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaShellCommand;

    .line 48
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaShellCommand;

    .line 48
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method private runDispatch()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "cmd":Ljava/lang/String;
    const-string/jumbo v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/16 v2, 0x7e

    .local v2, "keycode":I
    goto/16 :goto_0

    .line 161
    .end local v2    # "keycode":I
    :cond_0
    const-string/jumbo v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    const/16 v2, 0x7f

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 163
    .end local v2    # "keycode":I
    :cond_1
    const-string/jumbo v2, "play-pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    const/16 v2, 0x55

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 165
    .end local v2    # "keycode":I
    :cond_2
    const-string/jumbo v2, "mute"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    const/16 v2, 0x5b

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 167
    .end local v2    # "keycode":I
    :cond_3
    const-string v2, "headsethook"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    const/16 v2, 0x4f

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 169
    .end local v2    # "keycode":I
    :cond_4
    const-string/jumbo v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    const/16 v2, 0x56

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 171
    .end local v2    # "keycode":I
    :cond_5
    const-string/jumbo v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 172
    const/16 v2, 0x57

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 173
    .end local v2    # "keycode":I
    :cond_6
    const-string/jumbo v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    const/16 v2, 0x58

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 175
    .end local v2    # "keycode":I
    :cond_7
    const-string/jumbo v2, "rewind"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 176
    const/16 v2, 0x59

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 177
    .end local v2    # "keycode":I
    :cond_8
    const-string/jumbo v2, "record"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 178
    const/16 v2, 0x82

    .restart local v2    # "keycode":I
    goto :goto_0

    .line 179
    .end local v2    # "keycode":I
    :cond_9
    const-string v2, "fast-forward"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 180
    const/16 v2, 0x5a

    .line 185
    .restart local v2    # "keycode":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 186
    .local v16, "now":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x101

    move-object v3, v15

    move-wide/from16 v4, v16

    move-wide/from16 v6, v16

    move v9, v2

    move-object/from16 v19, v1

    move-object v1, v15

    .end local v1    # "cmd":Ljava/lang/String;
    .local v19, "cmd":Ljava/lang/String;
    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {v0, v1}, Lcom/android/server/media/MediaShellCommand;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 188
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/16 v15, 0x101

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-direct {v0, v1}, Lcom/android/server/media/MediaShellCommand;->sendMediaKey(Landroid/view/KeyEvent;)V

    .line 190
    return-void

    .line 182
    .end local v2    # "keycode":I
    .end local v16    # "now":J
    .end local v19    # "cmd":Ljava/lang/String;
    .restart local v1    # "cmd":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v1

    .end local v1    # "cmd":Ljava/lang/String;
    .restart local v19    # "cmd":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown dispatch code \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    .end local v19    # "cmd":Ljava/lang/String;
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private runListSessions()V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Sessions:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    :try_start_0
    sget-object v0, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    .local v2, "controller":Landroid/media/session/MediaController;
    if-eqz v2, :cond_0

    .line 339
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    goto :goto_1

    .line 341
    :catch_0
    move-exception v3

    .line 345
    .end local v2    # "controller":Landroid/media/session/MediaController;
    :cond_0
    :goto_1
    goto :goto_0

    .line 348
    .end local v0    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_1
    goto :goto_2

    .line 346
    :catch_1
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    const-string v2, "***Error listing sessions***"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private runMonitor()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    const-string v1, "Error: must include a session id"

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 129
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "success":Z
    :try_start_0
    sget-object v2, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .local v4, "controller":Landroid/media/session/MediaController;
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    new-instance v5, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    invoke-direct {v5, p0, v4}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;-><init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V

    .line 140
    .local v5, "monitor":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    invoke-virtual {v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    const/4 v1, 0x1

    .line 142
    goto :goto_2

    .line 144
    .end local v5    # "monitor":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 146
    :cond_1
    nop

    .line 147
    .end local v4    # "controller":Landroid/media/session/MediaController;
    :goto_1
    goto :goto_0

    .line 150
    .end local v2    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :cond_2
    :goto_2
    goto :goto_3

    .line 148
    :catch_1
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***Error monitoring session*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    if-nez v1, :cond_3

    .line 152
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No session found with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    :cond_3
    return-void
.end method

.method private runVolume()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 354
    invoke-static {p0}, Lcom/android/server/media/VolumeCtrl;->run(Lcom/android/server/media/MediaShellCommand;)V

    .line 355
    return-void
.end method

.method private sendMediaKey(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    :goto_0
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 60
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 65
    :cond_0
    sget-object v0, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    const-string/jumbo v1, "media_session"

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 67
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaShellCommand;->sThread:Landroid/app/ActivityThread;

    .line 68
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    nop

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    sput-object v2, Lcom/android/server/media/MediaShellCommand;->sMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 72
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mSessionService:Landroid/media/session/ISessionManager;

    .line 74
    if-eqz v0, :cond_6

    .line 80
    const/4 v0, -0x1

    :try_start_0
    const-string v1, "dispatch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runDispatch()V

    goto :goto_0

    .line 82
    :cond_2
    const-string/jumbo v1, "list-sessions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runListSessions()V

    goto :goto_0

    .line 84
    :cond_3
    const-string/jumbo v1, "monitor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runMonitor()V

    goto :goto_0

    .line 86
    :cond_4
    const-string/jumbo v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    invoke-direct {p0}, Lcom/android/server/media/MediaShellCommand;->runVolume()V

    .line 95
    :goto_0
    nop

    .line 96
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    .line 94
    return v0

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t connect to media session service; is the system running?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onHelp()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "usage: media_session [subcommand] [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session dispatch KEY"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session list-sessions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session monitor <tag>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "       media_session volume [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 108
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session dispatch: dispatch a media key to the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                KEY may be: play, pause, play-pause, mute, headsethook,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                stop, next, previous, rewind, record, fast-forword."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session list-sessions: print a list of the current sessions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "media_session monitor: monitor updates to the specified session."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "                       Use the tag from list-sessions."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media_session volume:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 116
    return-void
.end method

.method showError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errMsg"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand;->onHelp()V

    .line 194
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    return-void
.end method
