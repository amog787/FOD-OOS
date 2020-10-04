.class final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field static DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorFade"


# instance fields
.field private mCreatedResources:Z

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayLayerStack:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mGLBuffers:[I

.field private mGammaLoc:I

.field private mMode:I

.field private mOpacityLoc:I

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 107
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 108
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 116
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 117
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 135
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 136
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 137
    return-void
.end method

.method private attachEglContext()Z
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 675
    return v1

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 679
    return v1

    .line 681
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 13

    .line 470
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 471
    return v1

    .line 474
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 476
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 477
    nop

    .line 512
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 477
    return v1

    .line 479
    :cond_1
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 482
    :cond_2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 483
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    .local v3, "s":Landroid/view/Surface;
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    .line 486
    .local v4, "token":Landroid/os/IBinder;
    if-nez v4, :cond_3

    .line 487
    const-string v2, "ColorFade"

    const-string v5, "Failed to take screenshot because internal display is disconnected"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    nop

    .line 496
    :try_start_3
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 497
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 512
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 489
    return v1

    .line 492
    :cond_3
    :try_start_4
    invoke-static {v4, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 493
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 494
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v0, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 496
    .end local v4    # "token":Landroid/os/IBinder;
    :try_start_5
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 497
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 498
    nop

    .line 503
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 504
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 505
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 506
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 509
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-static {v1, v1, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 510
    const/4 v7, 0x0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v8, v1

    const/4 v9, 0x0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v10, v1

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 512
    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    .end local v3    # "s":Landroid/view/Surface;
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 513
    nop

    .line 514
    return v2

    .line 496
    .restart local v0    # "st":Landroid/graphics/SurfaceTexture;
    .restart local v3    # "s":Landroid/view/Surface;
    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 497
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .end local p0    # "this":Lcom/android/server/display/ColorFade;
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 512
    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    .end local v3    # "s":Landroid/view/Surface;
    .restart local p0    # "this":Lcom/android/server/display/ColorFade;
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1
    .param p0, "func"    # Ljava/lang/String;

    .line 702
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "log"    # Z

    .line 706
    const/4 v0, 0x0

    .line 708
    .local v0, "hadError":Z
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    if-eqz v1, :cond_1

    .line 709
    if-eqz p1, :cond_0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "ColorFade"

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_1
    return v0
.end method

.method private createEglContext()Z
    .locals 12

    .line 526
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 527
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 528
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v3, :cond_0

    .line 529
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 530
    return v2

    .line 533
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 534
    .local v0, "version":[I
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v0, v2, v0, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 536
    const-string v1, "eglInitialize"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 537
    return v2

    .line 541
    .end local v0    # "version":[I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_4

    .line 542
    const/16 v0, 0xb

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 551
    .local v4, "eglConfigAttribList":[I
    new-array v0, v1, [I

    .line 552
    .local v0, "numEglConfigs":[I
    new-array v11, v1, [Landroid/opengl/EGLConfig;

    .line 553
    .local v11, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v11

    const/4 v10, 0x0

    move-object v6, v11

    move-object v9, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 555
    const-string v1, "eglChooseConfig"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 556
    return v2

    .line 558
    :cond_2
    aget v3, v0, v2

    if-gtz v3, :cond_3

    .line 559
    const-string v1, "ColorFade"

    const-string/jumbo v3, "no valid config found"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return v2

    .line 563
    :cond_3
    aget-object v3, v11, v2

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 566
    .end local v0    # "numEglConfigs":[I
    .end local v4    # "eglConfigAttribList":[I
    .end local v11    # "eglConfigs":[Landroid/opengl/EGLConfig;
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_5

    .line 567
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 571
    .local v0, "eglContextAttribList":[I
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 573
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v3, :cond_5

    .line 574
    const-string v1, "eglCreateContext"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 575
    return v2

    .line 578
    .end local v0    # "eglContextAttribList":[I
    :cond_5
    return v1

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 6

    .line 616
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 617
    new-array v0, v1, [I

    const/16 v2, 0x3038

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 621
    .local v0, "eglSurfaceAttribList":[I
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {v2, v4, v5, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 623
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v2, :cond_0

    .line 624
    const-string v1, "eglCreateWindowSurface"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 625
    return v3

    .line 628
    .end local v0    # "eglSurfaceAttribList":[I
    :cond_0
    return v1
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "size"    # I

    .line 692
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 693
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 694
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .locals 5

    .line 582
    const-string v0, "ColorFade"

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v1, :cond_0

    .line 583
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_2

    .line 587
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 589
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_0
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 590
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 591
    .local v2, "builder":Landroid/view/SurfaceControl$Builder;
    iget v3, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 592
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    goto :goto_0

    .line 594
    :cond_1
    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 596
    :goto_0
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v2    # "builder":Landroid/view/SurfaceControl$Builder;
    nop

    .line 602
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 603
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 604
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 605
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 607
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 609
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 610
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_1

    .line 597
    :catch_0
    move-exception v2

    .line 598
    .local v2, "ex":Landroid/view/Surface$OutOfResourcesException;
    const-string v3, "Unable to create surface."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v0, 0x0

    return v0

    .line 612
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "ex":Landroid/view/Surface$OutOfResourcesException;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private destroyEglSurface()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 633
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 636
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 638
    :cond_1
    return-void
.end method

.method private destroyGLBuffers()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 307
    const-string v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 308
    return-void
.end method

.method private destroyGLShaders()V
    .locals 1

    .line 267
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 268
    const-string v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 269
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    .line 518
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 520
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 521
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 523
    :cond_0
    return-void
.end method

.method private destroySurface()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 644
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->remove()V

    .line 647
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 650
    nop

    .line 651
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 655
    :cond_0
    :goto_0
    return-void
.end method

.method private detachEglContext()V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 686
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 689
    :cond_0
    return-void
.end method

.method private drawFaded(FF)V
    .locals 11
    .param p1, "opacity"    # F
    .param p2, "gamma"    # F

    .line 418
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawFaded: opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", gamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFade"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 425
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 426
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 427
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 428
    iget v0, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 431
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 432
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 435
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    const v4, 0x8892

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 436
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 437
    iget v5, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 439
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 440
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 441
    iget v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 443
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 446
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 447
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 448
    return-void
.end method

.method private initGLBuffers()Z
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 276
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 277
    const/16 v0, 0x2600

    const/16 v3, 0x2800

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 279
    const/16 v3, 0x2801

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 281
    const v0, 0x812f

    const/16 v3, 0x2802

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 283
    const/16 v3, 0x2803

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 285
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 288
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 291
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 292
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v2, v0, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 296
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 297
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v5, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 300
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 302
    return v3
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 233
    const v0, 0x1100003

    const v1, 0x8b31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 235
    .local v0, "vshader":I
    const v1, 0x1100002

    const v2, 0x8b30

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 237
    .local v1, "fshader":I
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 238
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 242
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 243
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 244
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 245
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 247
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 249
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "position"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 250
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "uv"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 252
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "proj_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 253
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "tex_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 255
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "opacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 256
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string v4, "gamma"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 257
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "texUnit"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 259
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 260
    iget v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 261
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 263
    const/4 v2, 0x1

    return v2

    .line 238
    :cond_1
    :goto_0
    return v2
.end method

.method private loadShader(Landroid/content/Context;II)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "type"    # I

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "source":Ljava/lang/String;
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 216
    .local v1, "shader":I
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 217
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 219
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 220
    .local v2, "compiled":[I
    const/4 v3, 0x0

    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 221
    aget v3, v2, v3

    if-nez v3, :cond_0

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorFade"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 226
    const/4 v1, 0x0

    .line 229
    :cond_0
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 3
    .param p0, "func"    # Ljava/lang/String;

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ColorFade"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    return-void
.end method

.method private ortho(FFFFFF)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "znear"    # F
    .param p6, "zfar"    # F

    .line 451
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 452
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 453
    const/4 v3, 0x2

    aput v1, v0, v3

    .line 454
    const/4 v3, 0x3

    aput v1, v0, v3

    .line 455
    const/4 v3, 0x4

    aput v1, v0, v3

    .line 456
    sub-float v3, p4, p3

    div-float/2addr v2, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 457
    const/4 v2, 0x6

    aput v1, v0, v2

    .line 458
    const/4 v2, 0x7

    aput v1, v0, v2

    .line 459
    const/16 v2, 0x8

    aput v1, v0, v2

    .line 460
    const/16 v2, 0x9

    aput v1, v0, v2

    .line 461
    sub-float v2, p6, p5

    const/high16 v3, -0x40000000    # -2.0f

    div-float/2addr v3, v2

    const/16 v2, 0xa

    aput v3, v0, v2

    .line 462
    const/16 v2, 0xb

    aput v1, v0, v2

    .line 463
    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 464
    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 465
    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 466
    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 467
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 203
    .local v0, "stream":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 205
    .end local v0    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized shader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorFade"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 2
    .param p0, "vtx"    # Ljava/nio/FloatBuffer;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .line 311
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setQuad: x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFade"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 316
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 317
    const/4 v0, 0x3

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 318
    const/4 v0, 0x4

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 319
    const/4 v0, 0x5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 320
    const/4 v0, 0x6

    add-float v1, p1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 321
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 322
    return-void
.end method

.method private showSurface(F)Z
    .locals 3
    .param p1, "alpha"    # F

    .line 658
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 662
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 663
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 666
    nop

    .line 667
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 668
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 670
    :cond_1
    return v1

    .line 665
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 360
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "ColorFade"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 366
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 369
    :cond_1
    return-void
.end method

.method public dismissResources()V
    .locals 2

    .line 331
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "ColorFade"

    const-string v1, "dismissResources"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    .line 339
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 340
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    .line 341
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 344
    nop

    .line 347
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0

    .line 350
    :cond_1
    :goto_0
    return-void
.end method

.method public draw(F)Z
    .locals 18
    .param p1, "level"    # F

    .line 379
    move-object/from16 v1, p0

    move/from16 v2, p1

    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawFrame: level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ColorFade"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/display/ColorFade;->mPrepared:Z

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 384
    return v3

    .line 387
    :cond_1
    iget v0, v1, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v4, :cond_2

    .line 388
    sub-float/2addr v5, v2

    invoke-direct {v1, v5}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 391
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 392
    return v3

    .line 396
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, v0, v0, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 397
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 400
    sub-float v0, v5, v2

    float-to-double v6, v0

    .line 401
    .local v6, "one_minus_level":D
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 402
    .local v8, "cos":D
    const-wide/16 v10, 0x0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    goto :goto_0

    :cond_4
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 403
    .local v10, "sign":D
    :goto_0
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    neg-double v14, v14

    double-to-float v0, v14

    add-float/2addr v0, v5

    .line 404
    .local v0, "opacity":F
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v16, v10, v14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v16, v16, v12

    add-double v16, v16, v14

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    mul-double v16, v16, v12

    const-wide v12, 0x3fb999999999999aL    # 0.1

    add-double v12, v16, v12

    double-to-float v4, v12

    .line 405
    .local v4, "gamma":F
    div-float v12, v5, v4

    invoke-direct {v1, v0, v12}, Lcom/android/server/display/ColorFade;->drawFaded(FF)V

    .line 406
    const-string v12, "drawFrame"

    invoke-static {v12}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_5

    .line 407
    nop

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 407
    return v3

    .line 410
    :cond_5
    :try_start_1
    iget-object v3, v1, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v12, v1, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v3, v12}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    nop

    .end local v0    # "opacity":F
    .end local v4    # "gamma":F
    .end local v6    # "one_minus_level":D
    .end local v8    # "cos":D
    .end local v10    # "sign":D
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 413
    nop

    .line 414
    invoke-direct {v1, v5}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 412
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 718
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 719
    const-string v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 147
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepare: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFade"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 155
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 156
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 157
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 158
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 161
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createSurface()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglContext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglSurface()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreenshotTextureAndSetViewport()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    return v2

    .line 172
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "prepare"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 179
    nop

    .line 182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 192
    if-ne p2, v1, :cond_4

    .line 193
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    .line 194
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_4
    return v1

    .line 173
    :cond_5
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    nop

    .line 178
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 175
    return v2

    .line 178
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v1

    .line 163
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 164
    return v2
.end method
