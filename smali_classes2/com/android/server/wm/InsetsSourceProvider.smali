.class Lcom/android/server/wm/InsetsSourceProvider;
.super Ljava/lang/Object;
.source "InsetsSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

.field private mClientVisible:Z

.field private mControl:Landroid/view/InsetsSourceControl;

.field private mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private final mControllable:Z

.field protected final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFakeControl:Landroid/view/InsetsSourceControl;

.field private mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mFinishSeamlessRotateFrameNumber:J

.field private mFrameProvider:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mImeOverrideFrame:Landroid/graphics/Rect;

.field private mIsLeashReadyForDispatching:Z

.field private mNeedUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mSeamlessRotating:Z

.field private mServerVisible:Z

.field protected final mSource:Landroid/view/InsetsSource;

.field private final mStateController:Lcom/android/server/wm/InsetsStateController;

.field private final mTmpRect:Landroid/graphics/Rect;

.field protected mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFinishSeamlessRotateFrameNumber:J

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.oneplus.brickmode"

    const-string v2, "com.nearme.gamecenter"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mNeedUpdateList:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 124
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 125
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 126
    new-instance v0, Landroid/view/InsetsSourceControl;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    .line 129
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    .line 130
    .local v0, "type":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 133
    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-lt v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    goto :goto_1

    .line 135
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    goto :goto_1

    .line 131
    :cond_3
    :goto_0
    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 137
    :goto_1
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/InsetsSourceProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 75
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsControlTarget;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 75
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 75
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsStateController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/InsetsSourceProvider;Landroid/view/InsetsSourceControl;)Landroid/view/InsetsSourceControl;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Landroid/view/InsetsSourceControl;

    .line 75
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Z

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    return-void
.end method

.method private isMirroredSource()Z
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 451
    return v1

    .line 453
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    .line 454
    .local v0, "provides":[I
    if-nez v0, :cond_1

    .line 455
    return v1

    .line 457
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 458
    aget v3, v0, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 459
    const/4 v1, 0x1

    return v1

    .line 457
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method private needUpdateClientVisible(Ljava/lang/String;)Z
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mNeedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mNeedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mNeedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    return v1

    .line 285
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setClientVisible(Z)V
    .locals 3
    .param p1, "clientVisible"    # Z

    .line 427
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne v0, p1, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3f

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 433
    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 434
    return-void
.end method

.method private updateVisibility()V
    .locals 8

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isMirroredSource()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 444
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x6b945f6

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v2

    invoke-static {v4, v5, v3, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 447
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method createSimulatedSource(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)Landroid/view/InsetsSource;
    .locals 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 240
    new-instance v0, Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/InsetsSource;-><init>(I)V

    .line 241
    .local v0, "source":Landroid/view/InsetsSource;
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 243
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 247
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "InsetsSourceProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsSourceControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mFakeControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsSourceControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 513
    const-string v0, " mIsLeashReadyForDispatching="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 514
    const-string v0, " mImeOverrideFrame="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mWin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    if-eqz v0, :cond_2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mAdapter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_3

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mControlTarget="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_4

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPendingControlTarget="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_5

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mFakeControlTarget="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 541
    :cond_5
    return-void
.end method

.method finishSeamlessRotation(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .line 408
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 410
    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFinishSeamlessRotateFrameNumber:J

    .line 412
    :cond_1
    return-void
.end method

.method getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .locals 4
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 467
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Landroid/view/InsetsSourceControl;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 472
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;)V

    .line 471
    return-object v0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-object v0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    return-object v0

    .line 479
    :cond_2
    return-object v1
.end method

.method getControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0
.end method

.method getImeOverrideFrame()Landroid/graphics/Rect;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getSource()Landroid/view/InsetsSource;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    return-object v0
.end method

.method hasWindow()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isClientVisible()Z
    .locals 1

    .line 487
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isControllable()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    return v0
.end method

.method public isHomeApp(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "winCandidate"    # Lcom/android/server/wm/WindowState;

    .line 300
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 302
    .local v1, "activityType":I
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsSource;)Z
    .locals 2
    .param p1, "caller"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "modifiedSource"    # Landroid/view/InsetsSource;

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v0, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 419
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method onPostLayout()V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame()V

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 263
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_2

    .line 265
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 266
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 269
    .end local v0    # "frame":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method onSurfaceTransactionApplied()V
    .locals 1

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 424
    return-void
.end method

.method overridesImeFrame()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setServerVisible(Z)V
    .locals 0
    .param p1, "serverVisible"    # Z

    .line 438
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 439
    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 440
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p2, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    .local p3, "imeFrameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 172
    :cond_1
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x17994c99

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 174
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    .line 175
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    .line 176
    if-nez p1, :cond_3

    .line 177
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 180
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    if-eqz v0, :cond_4

    .line 181
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_4

    .line 183
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 184
    iput-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 187
    :cond_4
    :goto_0
    return-void
.end method

.method startSeamlessRotation()V
    .locals 1

    .line 399
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 405
    :cond_0
    return-void
.end method

.method updateControlForFakeTarget(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 1
    .param p1, "fakeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 279
    return-void
.end method

.method updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .locals 12
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "force"    # Z

    .line 307
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    if-eqz v0, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_2

    .line 320
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_3

    .line 323
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 324
    return-void

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_4

    .line 327
    return-void

    .line 329
    :cond_4
    if-nez p1, :cond_5

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 333
    return-void

    .line 335
    :cond_5
    new-instance v0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;-><init>(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$1;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 338
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->needUpdateClientVisible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 348
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    if-nez v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq p1, v0, :cond_7

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 350
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->isHomeApp(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 355
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_9

    .line 363
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-nez v0, :cond_8

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    goto :goto_0

    .line 366
    :cond_8
    const-string v0, "WindowManager"

    const-string v3, "QuickReply:skipping clientHidden for IME"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 371
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    iget-boolean v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    xor-int/2addr v5, v2

    const/16 v6, 0x20

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 376
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 378
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-static {v4}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->access$100(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;

    move-result-object v4

    .line 379
    .local v4, "leash":Landroid/view/SurfaceControl;
    iget-wide v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFinishSeamlessRotateFrameNumber:J

    .line 380
    .local v5, "frameNumber":J
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFinishSeamlessRotateFrameNumber:J

    .line 381
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    .line 386
    iget-object v7, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v7

    .line 387
    .local v7, "barrier":Landroid/view/SurfaceControl;
    iget-object v8, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v0, v8, v7, v5, v6}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    .line 388
    invoke-virtual {v0, v4, v7, v5, v6}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;

    .line 390
    .end local v7    # "barrier":Landroid/view/SurfaceControl;
    :cond_a
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 391
    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 392
    new-instance v7, Landroid/view/InsetsSourceControl;

    iget-object v8, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v8}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    new-instance v9, Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 393
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v7, v8, v4, v9}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;)V

    iput-object v7, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 394
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v10, 0x1c66bec

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v3

    aput-object v8, v11, v2

    invoke-static {v9, v10, v3, v1, v11}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 396
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method updateSourceFrame()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 202
    return-void

    .line 208
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mImeOverrideFrame:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_4

    goto :goto_1

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 228
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 234
    :goto_2
    return-void
.end method
