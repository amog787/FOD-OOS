.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeDataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# instance fields
.field private mWipeEsims:Z

.field private mWipeExternalStorage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MasterClearReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MasterClearReceiver;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/MasterClearReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MasterClearReceiver;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MasterClear"

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    const-string v2, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    const/4 v2, 0x0

    const-string/jumbo v3, "shutdown"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 62
    .local v3, "shutdown":Z
    const-string v4, "android.intent.extra.REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, "reason":Ljava/lang/String;
    const-string v4, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 64
    const-string v4, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 65
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    const-string v0, "android.intent.extra.FORCE_FACTORY_RESET"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v10, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    move v10, v0

    .line 68
    .local v10, "forceWipe":Z
    :goto_1
    const-string v0, "!!! FACTORY RESET !!!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v6, "Reboot"

    move-object v4, v0

    move-object v5, p0

    move-object v7, p1

    move v8, v3

    move-object v9, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 91
    .local v0, "thr":Ljava/lang/Thread;
    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    if-eqz v1, :cond_5

    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 93
    :cond_6
    :goto_2
    new-instance v1, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :goto_3
    return-void
.end method
