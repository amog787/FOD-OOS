.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field private final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field private final mInnerRect:Landroid/graphics/Rect;

.field private final mOuterRect:Landroid/graphics/Rect;

.field private final mTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V
    .locals 17
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "outer"    # Landroid/graphics/Rect;
    .param p4, "inner"    # Landroid/graphics/Rect;
    .param p5, "layer"    # I
    .param p6, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p7, "forceDefaultOrientation"    # Z
    .param p8, "surfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/android/server/wm/DisplayContent;",
            "Z",
            "Landroid/view/SurfaceControl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 87
    .local p1, "factory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v0, v1, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 88
    const/4 v4, 0x0

    .line 90
    .local v4, "success":Z
    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v1, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v1, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    .line 97
    :try_start_0
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ge v0, v6, :cond_0

    .line 98
    iget-object v0, v1, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v6, 0x0

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v3, Landroid/graphics/Rect;->right:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6

    .line 101
    :cond_0
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-ge v0, v6, :cond_1

    .line 102
    iget-object v0, v1, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v6, 0x1

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6

    .line 105
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v6, :cond_2

    .line 106
    iget-object v0, v1, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v6, 0x2

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v3, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6

    .line 110
    :cond_2
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v0, v6, :cond_3

    .line 111
    iget-object v0, v1, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v6, 0x3

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_3
    const/4 v0, 0x1

    .line 116
    .end local v4    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_4

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 120
    :cond_4
    return-void

    .line 116
    .end local v0    # "success":Z
    .restart local v4    # "success":Z
    :catchall_0
    move-exception v0

    if-nez v4, :cond_5

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 119
    :cond_5
    throw v0
.end method


# virtual methods
.method public kill()V
    .locals 8

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 124
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 125
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 126
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x30d41fe

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v7, v3, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 128
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aput-object v3, v2, v1

    .line 124
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 132
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 72
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Outer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 73
    const-string v0, " / Inner: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 74
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 76
    aget-object v1, v1, v0

    .line 77
    .local v1, "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 78
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 79
    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 80
    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 75
    .end local v1    # "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
