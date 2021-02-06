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
    .locals 9
    .param p1, "this$0"    # Lcom/android/server/wm/DragState;
    .param p2, "display"    # Landroid/view/Display;

    .line 264
    iput-object p1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-string v0, "drag"

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 266
    .local v1, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 267
    const/4 v3, 0x1

    aget-object v4, v1, v3

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 268
    iget-object v4, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 269
    new-instance v4, Lcom/android/server/wm/DragInputEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    iget-object v6, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 270
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/wm/DragInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 272
    new-instance v4, Landroid/view/InputApplicationHandle;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-direct {v4, v5}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 273
    iput-object v0, v4, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 274
    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    const-wide v5, 0x12a05f200L

    iput-wide v5, v4, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 277
    new-instance v4, Landroid/view/InputWindowHandle;

    iget-object v7, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 278
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-direct {v4, v7, v8}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 279
    iput-object v0, v4, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/16 v4, 0x7e0

    iput v4, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-wide v5, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v3, v0, Landroid/view/InputWindowHandle;->visible:Z

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v0, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v3, v0, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v0, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v0, Landroid/view/InputWindowHandle;->paused:Z

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v0, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v0, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v0, Landroid/view/InputWindowHandle;->frameTop:I

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/InputWindowHandle;->frameRight:I

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {p1}, Lcom/android/server/wm/DragState;->access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 305
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v3, -0x2968721e

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->pause()V

    .line 307
    return-void
.end method


# virtual methods
.method tearDown()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/DragInputEventReceiver;->dispose()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 313
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 314
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 315
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 316
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    .line 318
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 319
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 322
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0x1011681c

    const/4 v3, 0x0

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->resume()V

    .line 324
    return-void
.end method
