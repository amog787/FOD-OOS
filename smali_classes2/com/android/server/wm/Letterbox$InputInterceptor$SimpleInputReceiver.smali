.class Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;
.super Landroid/view/InputEventReceiver;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox$InputInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleInputReceiver"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/InputChannel;)V
    .locals 1
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .line 250
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 251
    return-void
.end method
