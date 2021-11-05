.class Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field private final mControlTargetTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDispatchInsetsChanged:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private final mLastState:Landroid/view/InsetsState;

.field private final mPendingControlChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Landroid/view/InsetsState;

.field private final mTypeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeFakeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 63
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 76
    sget-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 81
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsStateController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method private addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .locals 2
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 508
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    if-eqz p3, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    :goto_0
    return-void
.end method

.method private getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;
    .locals 9
    .param p1, "type"    # I
    .param p2, "windowingMode"    # I
    .param p3, "isAlwaysOnTop"    # Z
    .param p4, "aboveIme"    # Z

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 202
    .local v0, "state":Landroid/view/InsetsState;
    const/4 v1, -0x1

    const/16 v2, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_5

    .line 203
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v1

    .line 204
    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 207
    const/4 v1, 0x2

    if-ne p1, v3, :cond_0

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->removeSource(I)V

    .line 209
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 214
    :cond_0
    if-nez p1, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 219
    :cond_1
    if-ne p1, v2, :cond_5

    .line 220
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 221
    iget-object v5, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 222
    .local v5, "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->overridesImeFrame()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 223
    new-instance v6, Landroid/view/InsetsSource;

    .line 225
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 226
    .local v6, "override":Landroid/view/InsetsSource;
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getImeOverrideFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 227
    invoke-virtual {v0, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 220
    .end local v5    # "otherProvider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v6    # "override":Landroid/view/InsetsSource;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 235
    .local v1, "navBarProvider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v1, :cond_5

    iget-object v5, v1, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_5

    .line 236
    new-instance v5, Landroid/view/InsetsSource;

    .line 237
    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 238
    .local v5, "navSource":Landroid/view/InsetsSource;
    iget-object v6, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-string v7, "WindowManager"

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    .line 239
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 240
    invoke-virtual {v5, v3}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 241
    iget-object v6, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {v0, v5}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 243
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_5

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInsetsForDispatchInner set IME rect:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :cond_4
    invoke-virtual {v5, v4}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 249
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 251
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_5

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInsetsForDispatchInner hide IME rect:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mImeOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v1    # "navBarProvider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v5    # "navSource":Landroid/view/InsetsSource;
    :cond_5
    :goto_1
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    if-ne p2, v1, :cond_8

    if-eqz p3, :cond_8

    .line 263
    :cond_6
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v1

    .line 270
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v1

    if-nez v1, :cond_7

    .line 271
    invoke-virtual {v0, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 274
    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->removeSource(I)V

    .line 277
    :cond_8
    if-eqz p4, :cond_9

    .line 278
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 279
    .local v1, "imeSource":Landroid/view/InsetsSource;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 280
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v1, v2

    .line 281
    invoke-virtual {v1, v4}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 282
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 283
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v0, v2

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 288
    .end local v1    # "imeSource":Landroid/view/InsetsSource;
    :cond_9
    return-object v0
.end method

.method private static getInsetsTypeForWindowType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 185
    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x7db

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_0

    .line 193
    const/4 v0, -0x1

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_1
    const/16 v0, 0xd

    return v0

    .line 187
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isAboveIme(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4
    .param p1, "target"    # Lcom/android/server/wm/WindowContainer;

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 164
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    .line 167
    :cond_0
    instance-of v2, p1, Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3

    .line 168
    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 175
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mBehindIme:Z

    if-eqz v3, :cond_2

    .line 176
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 177
    invoke-static {v3}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 178
    invoke-static {v3}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 175
    :goto_1
    return v1

    .line 181
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    return v1

    .line 165
    :cond_4
    :goto_2
    return v1
.end method

.method static synthetic lambda$addToControlMaps$3(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "key"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 80
    :cond_0
    return-void
.end method

.method private notifyPendingInsetsControlChanged()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$InsetsStateController$-1iOXDf-1s3wDHcMIHBKNk6MS3I;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$-1iOXDf-1s3wDHcMIHBKNk6MS3I;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method private onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 435
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_0

    .line 436
    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 439
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_1

    .line 440
    return-void

    .line 442
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 443
    return-void

    .line 445
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 446
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    .line 447
    if-eqz v0, :cond_3

    .line 448
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 449
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_3
    if-eqz p2, :cond_4

    .line 452
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 453
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_4
    return-void
.end method

.method private removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .locals 2
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 490
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_1
    if-eqz p3, :cond_2

    .line 498
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 502
    :goto_0
    return-void
.end method


# virtual methods
.method computeSimulatedState(Landroid/view/InsetsState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V
    .locals 3
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p4, "windowFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 386
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    iget-object v2, v1, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v2, p2, :cond_0

    .line 387
    invoke-virtual {v1, p3, p4}, Lcom/android/server/wm/InsetsSourceProvider;->createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 384
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 390
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Control map:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const-string v1, " -> "

    if-ltz v0, :cond_0

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 552
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 554
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  InsetsSourceProviders map:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 555
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 560
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 297
    .local v0, "controlled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 298
    const/4 v1, 0x0

    return-object v1

    .line 300
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 301
    .local v1, "size":I
    new-array v2, v1, [Landroid/view/InsetsSourceControl;

    .line 302
    .local v2, "result":[Landroid/view/InsetsSourceControl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 303
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .locals 1

    .line 323
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object v0
.end method

.method getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;
    .locals 5
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 111
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 115
    .local v1, "type":I
    :goto_0
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sNavGestureFullscreenList:Ljava/util/List;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAlwaysOnTop()Z

    move-result v3

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsStateController;->isAboveIme(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    .line 117
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;

    move-result-object v2

    .line 120
    .local v2, "insetsState":Landroid/view/InsetsState;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 122
    .local v3, "navSource":Landroid/view/InsetsSource;
    if-eqz v3, :cond_1

    .line 123
    new-instance v4, Landroid/view/InsetsSource;

    invoke-direct {v4, v3}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v3, v4

    .line 124
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 125
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v2, v4

    .line 126
    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 128
    :cond_1
    return-object v2

    .line 131
    .end local v2    # "insetsState":Landroid/view/InsetsState;
    .end local v3    # "navSource":Landroid/view/InsetsSource;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAlwaysOnTop()Z

    move-result v3

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsStateController;->isAboveIme(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    .line 131
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;

    move-result-object v2

    return-object v2
.end method

.method getInsetsForWindowMetrics(Landroid/view/WindowManager$LayoutParams;)Landroid/view/InsetsState;
    .locals 8
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 136
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/android/server/wm/InsetsStateController;->getInsetsTypeForWindowType(I)I

    move-result v0

    .line 137
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 138
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getWindowingMode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 140
    .local v3, "windowingMode":I
    :goto_0
    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isAlwaysOnTop()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    .line 143
    .local v5, "alwaysOnTop":Z
    :goto_1
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sNavGestureFullscreenList:Ljava/util/List;

    iget-object v7, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 144
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 145
    nop

    .line 146
    invoke-direct {p0, v1}, Lcom/android/server/wm/InsetsStateController;->isAboveIme(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    .line 145
    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;

    move-result-object v6

    .line 148
    .local v6, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 150
    .local v4, "navSource":Landroid/view/InsetsSource;
    if-eqz v4, :cond_2

    .line 151
    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v4}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object v4, v7

    .line 152
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 153
    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, v6}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v6, v2

    .line 154
    invoke-virtual {v6, v4}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 156
    :cond_2
    return-object v6

    .line 159
    .end local v4    # "navSource":Landroid/view/InsetsSource;
    .end local v6    # "insetsState":Landroid/view/InsetsState;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/wm/InsetsStateController;->isAboveIme(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatchInner(IIZZ)Landroid/view/InsetsState;

    move-result-object v2

    return-object v2
.end method

.method getRawInsetsState()Landroid/view/InsetsState;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "type"    # I

    .line 312
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$InsetsStateController$pXoYGy4X5aPw1QFi0iIWKiTMlDg;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$pXoYGy4X5aPw1QFi0iIWKiTMlDg;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$c8m0K1Ykk6OHrDEJKWFPmp5WxKU;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$getSourceProvider$1$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;

    .line 314
    new-instance v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 315
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 314
    return-object v0
.end method

.method public synthetic lambda$getSourceProvider$2$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;

    .line 318
    new-instance v0, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method public synthetic lambda$notifyPendingInsetsControlChanged$4$InsetsStateController()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 528
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->onSurfaceTransactionApplied()V

    .line 526
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 530
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsControlTarget;

    .line 532
    .local v1, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged()V

    .line 530
    .end local v1    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 534
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 535
    return-void
.end method

.method notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 519
    return-void
.end method

.method notifyControlRevoked(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 2
    .param p1, "previousControlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "provider"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 428
    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 430
    return-void
.end method

.method notifyInsetsChanged()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->notifyInsetsChanged()V

    .line 543
    :cond_0
    return-void
.end method

.method onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 2
    .param p1, "statusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "fakeStatusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p3, "navControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p4, "fakeNavControlling"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 420
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 421
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 422
    invoke-virtual {p0, v1, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 423
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 424
    return-void
.end method

.method onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "fakeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 465
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 466
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 469
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_1

    .line 470
    return-void

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 473
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_2

    .line 474
    return-void

    .line 476
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForFakeTarget(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 477
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 478
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 479
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_3
    if-eqz p2, :cond_4

    .line 482
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 483
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_4
    return-void
.end method

.method onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 7
    .param p1, "imeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 400
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 401
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    :goto_0
    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 402
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "null"

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x62dc4f45

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 405
    return-void
.end method

.method onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V
    .locals 5
    .param p1, "windowState"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "state"    # Landroid/view/InsetsState;

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 359
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 360
    .local v2, "source":Landroid/view/InsetsSource;
    if-nez v2, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    .line 362
    .local v3, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v3, :cond_1

    .line 363
    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsSource;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 358
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v3    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 370
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 372
    :cond_3
    return-void
.end method

.method onPostLayout()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWinInsetsChanged:Ljava/util/ArrayList;

    .line 342
    .local v0, "winInsetsChanged":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v3, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    goto :goto_2

    .line 349
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 349
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 353
    .end local v2    # "i":I
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 354
    return-void
.end method

.method peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 2
    .param p1, "type"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method
