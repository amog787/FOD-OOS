.class Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlackSurface"
.end annotation


# instance fields
.field final layer:I

.field final left:I

.field final surface:Landroid/view/SurfaceControl;

.field final top:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V
    .locals 18
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I
    .param p7, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p8, "surfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 42
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v3, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    .line 44
    iput v4, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    .line 45
    iput v2, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->layer:I

    .line 46
    sub-int v5, p5, v3

    .line 47
    .local v5, "w":I
    sub-int v6, p6, v4

    .line 49
    .local v6, "h":I
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 50
    const-string v8, "BlackSurface"

    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 51
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 52
    move-object/from16 v9, p8

    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 53
    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 54
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 55
    invoke-virtual {v1, v7, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 56
    iget-object v7, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 57
    iget-object v7, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 58
    iget-object v7, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget v8, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v8, v8

    iget v10, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v10, v10

    invoke-virtual {v1, v7, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 59
    iget-object v7, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 60
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    int-to-long v10, v2

    .local v10, "protoLogParam1":J
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v12, 0x91d49e9

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v8, v12, v13, v14, v15}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":J
    :cond_0
    return-void
.end method
