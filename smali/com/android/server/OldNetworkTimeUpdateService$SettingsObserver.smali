.class Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OldNetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I

    .line 297
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 298
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 299
    iput p2, p0, Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;->mMsg:I

    .line 300
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 310
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/OldNetworkTimeUpdateService$SettingsObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 311
    return-void
.end method
