.class Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/accessibility/MagnificationController;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/accessibility/MagnificationController;

    .line 1275
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 1276
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 1277
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    .line 1278
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1296
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$600(Lcom/android/server/accessibility/MagnificationController;)V

    .line 1297
    return-void
.end method

.method public registerIfNecessary()V
    .locals 3

    .line 1281
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 1285
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 1288
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 1292
    :cond_0
    return-void
.end method
