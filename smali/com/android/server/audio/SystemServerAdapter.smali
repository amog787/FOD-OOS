.class public Lcom/android/server/audio/SystemServerAdapter;
.super Ljava/lang/Object;
.source "SystemServerAdapter.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static final getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/android/server/audio/SystemServerAdapter;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SystemServerAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public isPrivileged()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public sendDeviceBecomingNoisyIntent()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 80
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    throw v3
.end method

.method public sendMicrophoneMuteChangedIntent()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 66
    return-void
.end method
