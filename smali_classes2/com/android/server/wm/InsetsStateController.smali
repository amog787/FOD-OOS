.class Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field private final mControllers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;"
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

.field private final mLastState:Landroid/view/InsetsState;

.field private final mPendingControlChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Landroid/view/InsetsState;

.field private final mTypeWinControlMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinControlTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 46
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControllers:Landroid/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mWinControlTypeMap:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeWinControlMap:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 54
    sget-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$sIYEJIR4ztgffCLMi5Z1RvdxyYs;

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 62
    return-void
.end method

.method private addToControlMaps(Lcom/android/server/wm/WindowState;I)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "type"    # I

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mWinControlTypeMap:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$Ofxsu0zvrpKfv2Cf4dVk1yXm2uI;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 204
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeWinControlMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    return-void
.end method

.method static synthetic lambda$addToControlMaps$2(Lcom/android/server/wm/WindowState;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "key"    # Lcom/android/server/wm/WindowState;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 58
    :cond_0
    return-void
.end method

.method private notifyInsetsChanged()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 228
    return-void
.end method

.method private notifyPendingInsetsControlChanged()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$InsetsStateController$GPqC21M0LSzcpOJhVE8RaWC9c1g;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$GPqC21M0LSzcpOJhVE8RaWC9c1g;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method private onControlChanged(ILcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeWinControlMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 168
    .local v0, "previous":Lcom/android/server/wm/WindowState;
    if-ne p2, v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 172
    .local v1, "controller":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v1, :cond_1

    .line 173
    return-void

    .line 175
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    return-void

    .line 178
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 179
    if-eqz v0, :cond_3

    .line 180
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/WindowState;I)V

    .line 181
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_3
    if-eqz p2, :cond_4

    .line 184
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/WindowState;I)V

    .line 185
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_4
    return-void
.end method

.method private removeFromControlMaps(Lcom/android/server/wm/WindowState;I)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "type"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mWinControlTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 191
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mWinControlTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeWinControlMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 199
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Control map:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeWinControlMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeWinControlMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeWinControlMap:Landroid/util/SparseArray;

    .line 237
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getControlsForDispatch(Lcom/android/server/wm/WindowState;)[Landroid/view/InsetsSourceControl;
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mWinControlTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 92
    .local v0, "controlled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 93
    const/4 v1, 0x0

    return-object v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 96
    .local v1, "size":I
    new-array v2, v1, [Landroid/view/InsetsSourceControl;

    .line 97
    .local v2, "result":[Landroid/view/InsetsSourceControl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 98
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mControllers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;
    .locals 4
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 72
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 73
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object v1

    .line 77
    :cond_0
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    .line 78
    .local v1, "state":Landroid/view/InsetsState;
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 79
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    .line 80
    .local v2, "type":I
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->removeSource(I)V

    .line 83
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 84
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->removeSource(I)V

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->removeSource(I)V

    .line 87
    :cond_1
    return-object v1
.end method

.method getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "type"    # I

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControllers:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$InsetsStateController$pXoYGy4X5aPw1QFi0iIWKiTMlDg;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$pXoYGy4X5aPw1QFi0iIWKiTMlDg;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method public synthetic lambda$getSourceProvider$1$InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/InsetsSourceProvider;
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;

    .line 108
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

.method public synthetic lambda$notifyPendingInsetsControlChanged$3$InsetsStateController()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 220
    .local v1, "controllingWin":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->notifyInsetsControlChanged()V

    .line 218
    .end local v1    # "controllingWin":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 223
    return-void
.end method

.method notifyControlChanged(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 211
    return-void
.end method

.method notifyControlRevoked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 1
    .param p1, "previousControllingWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "provider"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 163
    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/WindowState;I)V

    .line 164
    return-void
.end method

.method onBarControllingWindowChanged(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "controllingWindow"    # Lcom/android/server/wm/WindowState;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/WindowState;)V

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/WindowState;)V

    .line 158
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 159
    return-void
.end method

.method onImeTargetChanged(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 141
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/WindowState;)V

    .line 142
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 143
    return-void
.end method

.method onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V
    .locals 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "state"    # Landroid/view/InsetsState;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "changed":Z
    invoke-virtual {p2}, Landroid/view/InsetsState;->getSourcesCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 128
    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 129
    .local v2, "source":Landroid/view/InsetsSource;
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControllers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    .line 130
    .local v3, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-nez v3, :cond_0

    .line 131
    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsSource;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 127
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v3    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 138
    :cond_2
    return-void
.end method

.method onPostLayout()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControllers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mControllers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v2, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 121
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 123
    :cond_1
    return-void
.end method
