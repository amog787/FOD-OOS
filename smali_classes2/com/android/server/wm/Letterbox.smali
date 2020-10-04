.class public Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Letterbox$LetterboxSurface;,
        Lcom/android/server/wm/Letterbox$InputInterceptor;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field private final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mInner:Landroid/graphics/Rect;

.field private final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mOuter:Landroid/graphics/Rect;

.field private final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "surfaceControlFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v1, "top"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 48
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v1, "left"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 49
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v1, "bottom"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 50
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v1, "right"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mFactory:Ljava/util/function/Supplier;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/Letterbox;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFactory:Ljava/util/function/Supplier;

    return-object v0
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 145
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 144
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method attachInput(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 152
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 151
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    .line 128
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method getInnerFrame()Landroid/graphics/Rect;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 5

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 89
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 90
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 91
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 92
    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 118
    sget-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 119
    return-void
.end method

.method public isOverlappingWith(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 105
    .local v4, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->isOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v4    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return v2
.end method

.method public layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 12
    .param p1, "outer"    # Landroid/graphics/Rect;
    .param p2, "inner"    # Landroid/graphics/Rect;
    .param p3, "surfaceOrigin"    # Landroid/graphics/Point;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 78
    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 80
    iget-object v5, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 81
    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 136
    .local v4, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    const/4 v0, 0x1

    return v0

    .line 135
    .end local v4    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    return v2
.end method

.method onMovedToDisplay(I)V
    .locals 5
    .param p1, "displayId"    # I

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 158
    .local v3, "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$000(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 159
    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$000(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v4, Landroid/view/InputWindowHandle;->displayId:I

    .line 157
    .end local v3    # "surface":Lcom/android/server/wm/Letterbox$LetterboxSurface;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method
