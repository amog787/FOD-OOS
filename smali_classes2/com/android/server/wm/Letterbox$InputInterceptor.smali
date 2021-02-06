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

.field final mToken:Landroid/os/IBinder;

.field final mWindowHandle:Landroid/view/InputWindowHandle;

.field final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/wm/WindowState;)V
    .locals 6
    .param p1, "namePrefix"    # Ljava/lang/String;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 204
    .local v1, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 205
    const/4 v2, 0x1

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 206
    new-instance v3, Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;

    iget-object v4, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {v3, v4}, Lcom/android/server/wm/Letterbox$InputInterceptor$SimpleInputReceiver;-><init>(Landroid/view/InputChannel;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 208
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 209
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    .line 211
    new-instance v3, Landroid/view/InputWindowHandle;

    const/4 v4, 0x0

    .line 212
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 213
    iput-object v0, v3, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 214
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    iput-object v4, v3, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 215
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const v4, 0x20800028

    iput v4, v3, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 219
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/16 v4, 0x7e6

    iput v4, v3, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 220
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const-wide v4, 0x12a05f200L

    iput-wide v4, v3, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 222
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v3, Landroid/view/InputWindowHandle;->visible:Z

    .line 223
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 226
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 246
    return-void
.end method

.method updateTouchableRegion(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 234
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    .line 239
    return-void
.end method
