.class Lcom/android/server/wm/InsetsSourceProvider;
.super Ljava/lang/Object;
.source "InsetsSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

.field private mClientVisible:Z

.field private mControl:Landroid/view/InsetsSourceControl;

.field private final mControllable:Z

.field private mControllingWin:Lcom/android/server/wm/WindowState;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

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

.field private mServerVisible:Z

.field private final mSource:Landroid/view/InsetsSource;

.field private final mStateController:Lcom/android/server/wm/InsetsStateController;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 74
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 75
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 77
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    .line 78
    .local v0, "type":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 81
    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-lt v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    goto :goto_1

    .line 83
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    goto :goto_1

    .line 79
    :cond_3
    :goto_0
    sget v3, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 85
    :goto_1
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Lcom/android/server/wm/WindowState;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsStateController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/InsetsSourceProvider;)Landroid/view/InsetsSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Z

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/wm/InsetsSourceProvider;Landroid/view/InsetsSourceControl;)Landroid/view/InsetsSourceControl;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p1, "x1"    # Landroid/view/InsetsSourceControl;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-object p1
.end method

.method private setClientVisible(Z)V
    .locals 3
    .param p1, "clientVisible"    # Z

    .line 179
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne v0, p1, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$guE7h8X4ZgHS-WlK6mDEaOIHG60;->INSTANCE:Lcom/android/server/wm/-$$Lambda$guE7h8X4ZgHS-WlK6mDEaOIHG60;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 185
    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 186
    return-void
.end method

.method private setServerVisible(Z)V
    .locals 0
    .param p1, "serverVisible"    # Z

    .line 189
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 190
    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 191
    return-void
.end method

.method private updateVisibility()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method getControl()Landroid/view/InsetsSourceControl;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method getSource()Landroid/view/InsetsSource;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    return-object v0
.end method

.method isClientVisible()Z
    .locals 1

    .line 202
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

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    return v0
.end method

.method onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsSource;)Z
    .locals 2
    .param p1, "caller"    # Lcom/android/server/wm/WindowState;
    .param p2, "modifiedSource"    # Landroid/view/InsetsSource;

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 175
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method onPostLayout()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 140
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/WindowState;)V

    .line 144
    .end local v0    # "frame":Landroid/graphics/Rect;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 146
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p2, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 111
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    .line 112
    if-nez p1, :cond_1

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowState;->setInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 121
    :cond_2
    :goto_0
    return-void
.end method

.method updateControlForTarget(Lcom/android/server/wm/WindowState;Z)V
    .locals 6
    .param p1, "target"    # Lcom/android/server/wm/WindowState;
    .param p2, "force"    # Z

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    .line 151
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 154
    return-void

    .line 156
    :cond_1
    if-nez p1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 159
    return-void

    .line 161
    :cond_2
    new-instance v0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;-><init>(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$1;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 165
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    .line 166
    new-instance v0, Landroid/view/InsetsSourceControl;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-static {v2}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->access$100(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 167
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 168
    return-void
.end method
