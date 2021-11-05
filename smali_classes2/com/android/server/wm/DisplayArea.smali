.class public Lcom/android/server/wm/DisplayArea;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayArea$Type;,
        Lcom/android/server/wm/DisplayArea$Root;,
        Lcom/android/server/wm/DisplayArea$Tokens;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/WindowContainer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mFeatureId:I

.field private final mName:Ljava/lang/String;

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field private final mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field protected final mType:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;

    .line 80
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 1
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "featureId"    # I

    .line 84
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 77
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 86
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayArea;->mOrientation:I

    .line 87
    iput-object p2, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 88
    iput-object p3, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 89
    iput p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 90
    new-instance v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 91
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 93
    return-void
.end method


# virtual methods
.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 140
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 141
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 144
    return-void
.end method

.method fillsParent()Z
    .locals 1

    .line 125
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayArea;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 153
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 280
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    return-object p0
.end method

.method getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;
    .locals 4

    .line 195
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Landroid/window/DisplayAreaInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/window/DisplayAreaInfo;-><init>(Landroid/window/WindowContainerToken;II)V

    .line 197
    .local v0, "info":Landroid/window/DisplayAreaInfo;
    iget-object v1, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 198
    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 130
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    .line 148
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const-wide v0, 0x10b00000004L

    return-wide v0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method isOrganized()Z
    .locals 1

    .line 190
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method needsZBoost()Z
    .locals 1

    .line 120
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 97
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayArea$Type;->checkChild(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    .line 102
    instance-of v0, p1, Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 109
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 110
    .local v1, "top":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 111
    .local v2, "bottom":Lcom/android/server/wm/WindowContainer;
    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    .line 112
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayArea$Type;->checkSiblings(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    .line 108
    .end local v1    # "top":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "bottom":Lcom/android/server/wm/WindowContainer;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 180
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 181
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 186
    :cond_0
    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    .line 70
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method sendDisplayAreaAppeared()V
    .locals 2

    .line 168
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 170
    return-void
.end method

.method sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 173
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->migrateToNewSurfaceControl()V

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 176
    return-void
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 157
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-ne v0, p1, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 162
    .local v0, "lastOrganizer":Landroid/window/IDisplayAreaOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaAppeared()V

    .line 165
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
