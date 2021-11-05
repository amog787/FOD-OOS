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

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MasterClearReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MasterClearReceiver;

    .line 36
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/MasterClearReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MasterClearReceiver;

    .line 36
    iget-boolean v0, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MasterClear"

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "The request uses the deprecated Intent#ACTION_MASTER_CLEAR, Intent#ACTION_FACTORY_RESET should be used instead."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    const-string v0, "android.intent.extra.FORCE_MASTER_CLEAR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    const-string v2, "The request uses the deprecated Intent#EXTRA_FORCE_MASTER_CLEAR, Intent#EXTRA_FORCE_FACTORY_RESET should be used instead."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    const v2, 0x1040222

    .line 59
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "factoryResetPackage":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 62
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 64
    return-void

    .line 67
    :cond_3
    const-string/jumbo v3, "shutdown"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 68
    .local v3, "shutdown":Z
    const-string v5, "android.intent.extra.REASON"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, "reason":Ljava/lang/String;
    const-string v5, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    .line 70
    const-string v5, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/MasterClearReceiver;->mWipeEsims:Z

    .line 71
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    const-string v0, "android.intent.extra.FORCE_FACTORY_RESET"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v11, v4

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    move v11, v0

    .line 74
    .local v11, "forceWipe":Z
    :goto_1
    const-string v0, "!!! FACTORY RESET !!!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string v7, "Reboot"

    move-object v5, v0

    move-object v6, p0

    move-object v8, p1

    move v9, v3

    move-object v10, v12

    invoke-direct/range {v5 .. v11}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 97
    .local v0, "thr":Ljava/lang/Thread;
    iget-boolean v1, p0, Lcom/android/server/MasterClearReceiver;->mWipeExternalStorage:Z

    if-eqz v1, :cond_6

    .line 99
    new-instance v1, Lcom/android/server/MasterClearReceiver$WipeDataTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeDataTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/android/server/MasterClearReceiver$WipeDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 101
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    :goto_2
    return-void
.end method
