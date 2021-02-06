.class Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestureHandler:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gestureHandler"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 1148
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1149
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    .line 1150
    iput-object p2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->mGestureHandler:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 1151
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1163
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->mGestureHandler:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 1164
    return-void
.end method

.method public register()V
    .locals 3

    .line 1154
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1155
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1159
    return-void
.end method
