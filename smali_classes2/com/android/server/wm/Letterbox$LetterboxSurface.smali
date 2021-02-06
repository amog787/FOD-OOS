.class Lcom/android/server/wm/Letterbox$LetterboxSurface;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LetterboxSurface"
.end annotation


# instance fields
.field private mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

.field private final mLayoutFrameGlobal:Landroid/graphics/Rect;

.field private final mLayoutFrameRelative:Landroid/graphics/Rect;

.field private mSurface:Landroid/view/SurfaceControl;

.field private final mSurfaceFrameRelative:Landroid/graphics/Rect;

.field private final mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 261
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 262
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 267
    iput-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    return-object v0
.end method

.method private createSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->access$200(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Letterbox - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 279
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 281
    const-string v1, "LetterboxSurface.createSurface"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 283
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 285
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 286
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "isFODAndKeyguard":Z
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 335
    .local v1, "isShowing":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    iget-object v2, v2, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 336
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isFODAndKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    const/4 v0, 0x1

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 343
    :cond_2
    return-void

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 355
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 356
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 359
    const-string v2, "Letterbox"

    const-string v3, "show it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-nez v2, :cond_4

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->createSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 364
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 365
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 366
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 365
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 367
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 368
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_6

    .line 369
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 371
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v2, :cond_7

    .line 372
    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Letterbox$InputInterceptor;->updateTouchableRegion(Landroid/graphics/Rect;)V

    .line 373
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    iget-object v3, v3, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 375
    :cond_7
    return-void
.end method

.method attachInput(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->dispose()V

    .line 292
    :cond_0
    new-instance v0, Lcom/android/server/wm/Letterbox$InputInterceptor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Letterbox_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Letterbox$InputInterceptor;-><init>(Ljava/lang/String;Lcom/android/server/wm/WindowState;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 293
    return-void
.end method

.method public getHeight()I
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isOverlappingWith(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public layout(IIIILandroid/graphics/Point;)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "surfaceOrigin"    # Landroid/graphics/Point;

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    iget v1, p5, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, p5, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 274
    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .locals 4

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "isFODAndKeyguard":Z
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 381
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isFODAndKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    return v2

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1
.end method

.method public remove()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->access$300(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 298
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->dispose()V

    .line 302
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 304
    :cond_1
    return-void
.end method
