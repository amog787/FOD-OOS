.class public Lcom/android/server/accessibility/ActionReplacingCallback;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "ActionReplacingCallback.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ActionReplacingCallback"


# instance fields
.field private final mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field mDone:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mInteractionId:I

.field private final mLock:Ljava/lang/Object;

.field mMultiNodeCallbackHappened:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mNodesFromOriginalWindow:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNodesWithReplacementActions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field mSingleNodeCallbackHappened:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V
    .locals 18
    .param p1, "serviceCallback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p2, "connectionWithReplacementActions"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p3, "interactionId"    # I
    .param p4, "interrogatingPid"    # I
    .param p5, "interrogatingTid"    # J

    .line 70
    move-object/from16 v13, p0

    move/from16 v14, p3

    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 71
    move-object/from16 v15, p1

    iput-object v15, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 72
    move-object/from16 v12, p2

    iput-object v12, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 73
    iput v14, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 78
    .local v16, "identityToken":J
    :try_start_0
    iget-object v1, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mConnectionWithReplacementActions:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v4, 0x0

    add-int/lit8 v5, v14, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-object v12, v0

    invoke-interface/range {v1 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 86
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v13, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private recycleReplaceActionNodesLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 240
    .local v1, "nodeWithReplacementAction":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 238
    .end local v1    # "nodeWithReplacementAction":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    .line 243
    return-void
.end method

.method private replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAllActions()V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 207
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    .line 212
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 213
    .local v1, "nodeWithReplacementActions":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 215
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v2, :cond_1

    .line 217
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 218
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 221
    .end local v3    # "j":I
    :cond_0
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 222
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 224
    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 225
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 226
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 227
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 228
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 229
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 210
    .end local v1    # "nodeWithReplacementActions":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private replaceInfoActionsAndCallService()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    if-eqz v1, :cond_0

    .line 151
    monitor-exit v0

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->recycleReplaceActionNodesLocked()V

    .line 157
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 158
    .local v1, "nodeToReturn":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 167
    :goto_0
    return-void

    .line 159
    .end local v1    # "nodeToReturn":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private replaceInfosActionsAndCallService()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    if-eqz v1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->recycleReplaceActionNodesLocked()V

    .line 184
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    if-nez v1, :cond_2

    .line 185
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v1, "nodesToReturn":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mDone:Z

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v1, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    goto :goto_2

    .line 190
    :catch_0
    move-exception v0

    .line 195
    :goto_2
    return-void

    .line 187
    .end local v1    # "nodesToReturn":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    if-ne p2, v1, :cond_1

    .line 97
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSingleNodeCallbackHappened:Z

    .line 104
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z

    .line 105
    .local v1, "readyForCallback":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallService()V

    .line 109
    :cond_0
    return-void

    .line 99
    .end local v1    # "readyForCallback":Z
    :cond_1
    :try_start_1
    const-string v1, "ActionReplacingCallback"

    const-string v2, "Callback with unexpected interactionId"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    monitor-exit v0

    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 4
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 116
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    goto :goto_0

    .line 119
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    add-int/2addr v1, v2

    if-ne p2, v1, :cond_3

    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesWithReplacementActions:Ljava/util/List;

    .line 125
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSingleNodeCallbackHappened:Z

    .line 126
    .local v1, "callbackForSingleNode":Z
    iget-boolean v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z

    .line 127
    .local v3, "callbackForMultipleNodes":Z
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mMultiNodeCallbackHappened:Z

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallService()V

    .line 132
    :cond_1
    if-eqz v3, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfosActionsAndCallService()V

    .line 135
    :cond_2
    return-void

    .line 122
    .end local v1    # "callbackForSingleNode":Z
    .end local v3    # "callbackForMultipleNodes":Z
    :cond_3
    :try_start_1
    const-string v1, "ActionReplacingCallback"

    const-string v2, "Callback with unexpected interactionId"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    monitor-exit v0

    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .locals 1
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V

    .line 142
    return-void
.end method
