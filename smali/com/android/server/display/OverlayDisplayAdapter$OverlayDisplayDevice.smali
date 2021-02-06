.class abstract Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field private mActiveMode:I

.field private final mDefaultMode:I

.field private final mDisplayPresentationDeadlineNanos:J

.field private final mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mModes:[Landroid/view/Display$Mode;

.field private final mName:Ljava/lang/String;

.field private final mRawModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshRate:F

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJLcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;ILandroid/graphics/SurfaceTexture;I)V
    .locals 16
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "activeMode"    # I
    .param p6, "defaultMode"    # I
    .param p7, "refreshRate"    # F
    .param p8, "presentationDeadlineNanos"    # J
    .param p10, "flags"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .param p11, "state"    # I
    .param p12, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p13, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IIFJ",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;",
            "I",
            "Landroid/graphics/SurfaceTexture;",
            "I)V"
        }
    .end annotation

    .line 283
    .local p4, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p7

    iput-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "overlay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p2

    invoke-direct {v0, v1, v6, v4}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 285
    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    .line 286
    iput v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    .line 287
    move-wide/from16 v7, p8

    iput-wide v7, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    .line 288
    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 289
    move/from16 v9, p11

    iput v9, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    .line 290
    move-object/from16 v10, p12

    iput-object v10, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 291
    iput-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    .line 292
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/view/Display$Mode;

    iput-object v11, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    .line 293
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 294
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 295
    .local v12, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    iget-object v13, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget v14, v12, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v15, v12, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    invoke-static {v14, v15, v3}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v14

    aput-object v14, v13, v11

    .line 293
    .end local v12    # "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 297
    .end local v11    # "i":I
    :cond_0
    move/from16 v11, p5

    iput v11, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    .line 298
    move/from16 v12, p6

    iput v12, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    .line 299
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 303
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 305
    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 308
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 9

    .line 332
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    aget-object v0, v0, v1

    .line 334
    .local v0, "mode":Landroid/view/Display$Mode;
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 335
    .local v1, "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 336
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 337
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 339
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 340
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 341
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 342
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 343
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 344
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 345
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 346
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    const-wide/32 v5, 0x3b9aca00

    iget v7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    float-to-int v7, v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 348
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 349
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget-boolean v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v4, v3

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget-boolean v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget-boolean v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 359
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 360
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 362
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 364
    .end local v0    # "mode":Landroid/view/Display$Mode;
    .end local v1    # "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .locals 1

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onModeChangedLocked(I)V
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 317
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    .line 323
    :cond_1
    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 5
    .param p1, "displayModeSpecs"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 370
    iget v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 371
    .local v0, "id":I
    const/4 v1, -0x1

    .line 372
    .local v1, "index":I
    if-nez v0, :cond_0

    .line 374
    const/4 v1, 0x0

    goto :goto_1

    .line 376
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 377
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 378
    move v1, v2

    .line 379
    goto :goto_1

    .line 376
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 383
    .end local v2    # "i":I
    :cond_2
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OverlayDisplayAdapter"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    .line 387
    :cond_3
    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    if-ne v2, v1, :cond_4

    .line 388
    return-void

    .line 390
    :cond_4
    iput v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    .line 391
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 392
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 393
    invoke-virtual {p0, v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->onModeChangedLocked(I)V

    .line 394
    return-void
.end method

.method public setStateLocked(I)V
    .locals 1
    .param p1, "state"    # I

    .line 326
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 328
    return-void
.end method
