.class Lcom/android/server/media/MediaRoute2ProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaRoute2ProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRoute2ProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 163
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received package manager broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2ProviderWatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    invoke-static {v0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->access$100(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 170
    return-void
.end method
