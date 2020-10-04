.class Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlackSurface"
.end annotation


# instance fields
.field final layer:I

.field final left:I

.field final surface:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/BlackFrame;

.field final top:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/wm/BlackFrame;
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "layer"    # I
    .param p4, "l"    # I
    .param p5, "t"    # I
    .param p6, "r"    # I
    .param p7, "b"    # I
    .param p8, "dc"    # Lcom/android/server/wm/DisplayContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    .line 44
    iput p5, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    .line 45
    iput p3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->layer:I

    .line 46
    sub-int v0, p6, p4

    .line 47
    .local v0, "w":I
    sub-int v1, p7, p5

    .line 49
    .local v1, "h":I
    invoke-virtual {p8}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 50
    const-string v3, "BlackSurface"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 52
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 54
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 55
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 56
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 57
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 58
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v4, v4

    invoke-virtual {p2, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 59
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 60
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  BLACK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": CREATE layer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method clearMatrix(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 89
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 90
    return-void
.end method

.method setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "alpha"    # F

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 66
    return-void
.end method

.method setColor(Landroid/view/SurfaceControl$Transaction;[F)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "color"    # [F

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 101
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .locals 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 74
    iget-object v4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x3

    aget v6, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x4

    aget v8, v0, v1

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 86
    return-void
.end method
