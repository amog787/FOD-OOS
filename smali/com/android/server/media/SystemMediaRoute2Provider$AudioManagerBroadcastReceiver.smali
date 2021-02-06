.class Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemMediaRoute2Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioManagerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;Lcom/android/server/media/SystemMediaRoute2Provider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/SystemMediaRoute2Provider;
    .param p2, "x1"    # Lcom/android/server/media/SystemMediaRoute2Provider$1;

    .line 413
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    const/4 v0, -0x1

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 423
    .local v0, "streamType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 424
    return-void

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$AudioManagerBroadcastReceiver;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateVolume()V

    .line 428
    return-void
.end method
