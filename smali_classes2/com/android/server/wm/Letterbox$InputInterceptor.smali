.class Lcom/android/server/wm/Letterbox$InputInterceptor;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputInterceptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;
    }
.end annotation


# instance fields
.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mToken:Landroid/os/Binder;

.field final mWindowHandle:Landroid/view/InputWindowHandle;

.field final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    .line 173
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 176
    .local v1, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 177
    const/4 v2, 0x1

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 178
    new-instance v3, Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;

    iget-object v4, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {v3, v4}, Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;-><init>(Landroid/view/InputChannel;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 180
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 182
    new-instance v3, Landroid/view/InputWindowHandle;

    .line 183
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 184
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v0, v3, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 185
    iget-object v4, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    iput-object v4, v3, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 186
    const v4, 0x20800028

    iput v4, v3, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 190
    const/16 v4, 0x7e6

    iput v4, v3, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 191
    const-wide v4, 0x12a05f200L

    iput-wide v4, v3, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 193
    iput-boolean v2, v3, Landroid/view/InputWindowHandle;->visible:Z

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, v3, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 195
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 197
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 217
    return-void
.end method

.method updateTouchableRegion(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 205
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/Binder;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 208
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    .line 210
    return-void
.end method
