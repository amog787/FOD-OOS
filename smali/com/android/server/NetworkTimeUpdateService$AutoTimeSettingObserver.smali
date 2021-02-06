.class Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoTimeSettingObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMsg:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "msg"    # I

    .line 258
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 259
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    .line 261
    iput p3, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    .line 262
    return-void
.end method

.method private isAutomaticTimeEnabled()Z
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 266
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 274
    const-string v0, "NetworkTimeUpdateService"

    const-string v1, "AUTO_TIME onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->isAutomaticTimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    :cond_0
    return-void
.end method
