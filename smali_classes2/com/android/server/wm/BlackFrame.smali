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
.field final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field final mForceDefaultOrientation:Z

.field final mInnerRect:Landroid/graphics/Rect;

.field final mOuterRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V
    .locals 17
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "outer"    # Landroid/graphics/Rect;
    .param p3, "inner"    # Landroid/graphics/Rect;
    .param p4, "layer"    # I
    .param p5, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "forceDefaultOrientation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 128
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 108
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    .line 129
    const/4 v13, 0x0

    .line 131
    .local v13, "success":Z
    move/from16 v14, p6

    iput-boolean v14, v10, Lcom/android/server/wm/BlackFrame;->mForceDefaultOrientation:Z

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v10, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    .line 138
    :try_start_0
    iget v0, v11, Landroid/graphics/Rect;->top:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x0

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v12, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    .line 142
    :cond_0
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    .line 143
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x1

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    .line 146
    :cond_1
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_2

    .line 147
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x2

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v12, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15

    .line 150
    :cond_2
    iget v0, v11, Landroid/graphics/Rect;->right:I

    iget v1, v12, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3

    .line 151
    iget-object v0, v10, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v15, 0x3

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v5, v12, Landroid/graphics/Rect;->right:I

    iget v6, v11, Landroid/graphics/Rect;->top:I

    iget v7, v11, Landroid/graphics/Rect;->right:I

    iget v8, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V

    aput-object v16, v0, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_3
    const/4 v0, 0x1

    .line 156
    .end local v13    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_4

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 160
    :cond_4
    return-void

    .line 156
    .end local v0    # "success":Z
    .restart local v13    # "success":Z
    :catchall_0
    move-exception v0

    if-nez v13, :cond_5

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public clearMatrix(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 203
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 204
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BlackFrame$BlackSurface;->clearMatrix(Landroid/view/SurfaceControl$Transaction;)V

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 178
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 179
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public kill()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    if-eqz v0, :cond_3

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 165
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 166
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  BLACK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->remove()V

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 164
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 114
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Outer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 115
    const-string v0, " / Inner: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 116
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 118
    aget-object v1, v1, v0

    .line 119
    .local v1, "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 120
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 121
    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 122
    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 117
    .end local v1    # "bs":Lcom/android/server/wm/BlackFrame$BlackSurface;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "alpha"    # F

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 187
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 188
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setColor(Landroid/view/SurfaceControl$Transaction;[F)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "color"    # [F

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 218
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 219
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setColor(Landroid/view/SurfaceControl$Transaction;[F)V

    .line 217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 195
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 196
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BlackFrame$BlackSurface;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
