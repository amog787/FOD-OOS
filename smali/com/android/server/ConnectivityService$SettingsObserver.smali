.class Lcom/android/server/ConnectivityService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUriEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4650
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4651
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    .line 4652
    iput-object p1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mContext:Landroid/content/Context;

    .line 4653
    iput-object p2, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 4654
    return-void
.end method


# virtual methods
.method observe(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "what"    # I

    .line 4657
    iget-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4658
    iget-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4659
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4660
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 4664
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Should never be reached."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 4669
    iget-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4670
    .local v0, "what":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 4671
    iget-object v1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4673
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching event to send for URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    .line 4675
    :goto_0
    return-void
.end method
