.class Lcom/android/server/wm/DragState$InputInterceptor;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputInterceptor"
.end annotation


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field mDragWindowHandle:Landroid/view/InputWindowHandle;

.field mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

.field mServerChannel:Landroid/view/InputChannel;

.field final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/wm/DragState;
    .param p2, "display"    # Landroid/view/Display;

    .line 267
    iput-object p1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const-string v0, "drag"

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 269
    .local v1, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 270
    const/4 v3, 0x1

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 271
    iget-object v4, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 272
    new-instance v4, Lcom/android/server/wm/DragInputEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    iget-object v7, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 273
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-direct {v4, v5, v7, v8}, Lcom/android/server/wm/DragInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 275
    new-instance v4, Landroid/view/InputApplicationHandle;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-direct {v4, v5}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    iput-object v0, v4, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 277
    const-wide v7, 0x12a05f200L

    iput-wide v7, v4, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 280
    new-instance v5, Landroid/view/InputWindowHandle;

    .line 281
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    invoke-direct {v5, v4, v6, v9}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v5, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 282
    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v0, v4, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DragState;->getDragLayerLocked()I

    move-result v4

    iput v4, v0, Landroid/view/InputWindowHandle;->layer:I

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 286
    const/16 v4, 0x7e0

    iput v4, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 287
    iput-wide v7, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 289
    iput-boolean v3, v0, Landroid/view/InputWindowHandle;->visible:Z

    .line 290
    iput-boolean v2, v0, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 291
    iput-boolean v3, v0, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 292
    iput-boolean v2, v0, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 293
    iput-boolean v2, v0, Landroid/view/InputWindowHandle;->paused:Z

    .line 294
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v0, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 297
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 300
    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 304
    iput v2, v0, Landroid/view/InputWindowHandle;->frameTop:I

    .line 305
    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 309
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "WindowManager"

    const-string v2, "Pausing rotation during drag"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->pauseRotationLocked()V

    .line 313
    return-void
.end method


# virtual methods
.method tearDown()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/DragInputEventReceiver;->dispose()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 321
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 322
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 324
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 325
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 328
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "WindowManager"

    const-string v1, "Resuming rotation after drag"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->resumeRotationLocked()V

    .line 332
    return-void
.end method
