.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EPSILON:F = 0.001f

.field private static final GLOBAL_ID:I = -0x1

.field private static final MSG_ALLOWED_MODES_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"


# instance fields
.field private final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field private final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field private mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field private final mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    .line 88
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    .line 89
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 47
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 47
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 47
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 47
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyAllowedModesChangedLocked()V

    return-void
.end method

.method private filterModes([Landroid/view/Display$Mode;IIFF)[I
    .locals 7
    .param p1, "supportedModes"    # [Landroid/view/Display$Mode;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minRefreshRate"    # F
    .param p5, "maxRefreshRate"    # F

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 230
    .local v3, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    if-ne v4, p2, :cond_2

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    if-eq v4, p3, :cond_0

    .line 238
    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 244
    .local v4, "refreshRate":F
    const v5, 0x3a83126f    # 0.001f

    sub-float v6, p4, v5

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_2

    add-float/2addr v5, p5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 253
    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v3    # "mode":Landroid/view/Display$Mode;
    .end local v4    # "refreshRate":F
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 258
    .local v1, "size":I
    new-array v2, v1, [I

    .line 259
    .local v2, "availableModeIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 260
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    aput v4, v2, v3

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 262
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method private getAllowedModesLocked(Landroid/util/SparseArray;[Landroid/view/Display$Mode;Landroid/view/Display$Mode;)[I
    .locals 12
    .param p2, "modes"    # [Landroid/view/Display$Mode;
    .param p3, "defaultMode"    # Landroid/view/Display$Mode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;[",
            "Landroid/view/Display$Mode;",
            "Landroid/view/Display$Mode;",
            ")[I"
        }
    .end annotation

    .line 157
    .local p1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    const/4 v0, 0x0

    .line 158
    .local v0, "lowestConsideredPriority":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_6

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "minRefreshRate":F
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 161
    .local v2, "maxRefreshRate":F
    const/4 v3, -0x1

    .line 162
    .local v3, "height":I
    const/4 v4, -0x1

    .line 164
    .local v4, "width":I
    const/4 v5, 0x3

    .line 165
    .local v5, "priority":I
    :goto_1
    const/4 v6, -0x1

    if-lt v5, v0, :cond_2

    .line 167
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 168
    .local v7, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v7, :cond_0

    .line 169
    goto :goto_2

    .line 172
    :cond_0
    iget v8, v7, Lcom/android/server/display/DisplayModeDirector$Vote;->minRefreshRate:F

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 173
    iget v8, v7, Lcom/android/server/display/DisplayModeDirector$Vote;->maxRefreshRate:F

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 176
    if-ne v3, v6, :cond_1

    if-ne v4, v6, :cond_1

    iget v6, v7, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v6, :cond_1

    iget v6, v7, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v6, :cond_1

    .line 178
    iget v4, v7, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    .line 179
    iget v3, v7, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    .line 166
    .end local v7    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 186
    .end local v5    # "priority":I
    :cond_2
    if-eq v3, v6, :cond_3

    if-ne v4, v6, :cond_4

    .line 187
    :cond_3
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    .line 188
    invoke-virtual {p3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 191
    :cond_4
    nop

    .line 192
    move-object v6, p0

    move-object v7, p2

    move v8, v4

    move v9, v3

    move v10, v1

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;IIFF)[I

    move-result-object v5

    .line 193
    .local v5, "availableModes":[I
    array-length v6, v5

    if-lez v6, :cond_5

    .line 204
    return-object v5

    .line 218
    :cond_5
    nop

    .end local v1    # "minRefreshRate":F
    .end local v2    # "maxRefreshRate":F
    .end local v3    # "height":I
    .end local v4    # "width":I
    .end local v5    # "availableModes":[I
    add-int/lit8 v0, v0, 0x1

    .line 219
    goto :goto_0

    .line 223
    :cond_6
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    aput v3, v1, v2

    return-object v1
.end method

.method private getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .locals 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 369
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    return-object v1

    .line 372
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 373
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    return-object v1
.end method

.method private getVotesLocked(I)Landroid/util/SparseArray;
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 136
    .local v0, "displayVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    goto :goto_0

    .line 139
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 142
    .restart local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 143
    .local v2, "globalVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v2, :cond_2

    .line 144
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 145
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 146
    .local v4, "priority":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 147
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    .end local v4    # "priority":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private notifyAllowedModesChangedLocked()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 365
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 331
    if-ltz p2, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 339
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 340
    .local v1, "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-eqz p3, :cond_1

    .line 341
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 346
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyAllowedModesChangedLocked()V

    .line 354
    return-void

    .line 332
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v1    # "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 332
    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 322
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 323
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 290
    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 295
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 296
    .local v4, "modes":[Landroid/view/Display$Mode;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .end local v3    # "id":I
    .end local v4    # "modes":[Landroid/view/Display$Mode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "i":I
    :cond_0
    const-string v2, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 301
    .restart local v3    # "id":I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    .line 302
    .local v4, "mode":Landroid/view/Display$Mode;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    .end local v3    # "id":I
    .end local v4    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 304
    .end local v2    # "i":I
    :cond_1
    const-string v2, "  mVotesByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    nop

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 308
    .local v2, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    const/4 v3, 0x3

    .local v3, "p":I
    :goto_3
    if-ltz v3, :cond_3

    .line 309
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 310
    .local v4, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v4, :cond_2

    .line 311
    goto :goto_4

    .line 313
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    .end local v4    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 305
    .end local v2    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v3    # "p":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 316
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 317
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowedModes(I)[I
    .locals 7
    .param p1, "displayId"    # I

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 121
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    .line 122
    .local v2, "modes":[Landroid/view/Display$Mode;
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 123
    .local v3, "defaultMode":Landroid/view/Display$Mode;
    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector;->getAllowedModesLocked(Landroid/util/SparseArray;[Landroid/view/Display$Mode;Landroid/view/Display$Mode;)[I

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 124
    :cond_1
    :goto_0
    const-string v4, "DisplayModeDirector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asked about unknown display, returning empty allowed set! (id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v4, 0x0

    new-array v4, v4, [I

    monitor-exit v0

    return-object v4

    .line 129
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v2    # "modes":[Landroid/view/Display$Mode;
    .end local v3    # "defaultMode":Landroid/view/Display$Mode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method public setListener(Lcom/android/server/display/DisplayModeDirector$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/display/DisplayModeDirector$Listener;

    .line 279
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mListener:Lcom/android/server/display/DisplayModeDirector$Listener;

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 101
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    .line 102
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 103
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyAllowedModesChangedLocked()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
