.class Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "ImeInsetsSourceProvider.java"


# instance fields
.field private mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

.field private mIsImeLayoutDrawn:Z

.field private mShowImeRunner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 42
    return-void
.end method


# virtual methods
.method abortShowImePostLayout()V
    .locals 5

    .line 110
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x51d654b9

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 112
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    .line 113
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    .line 114
    return-void
.end method

.method checkShowImePostLayout()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetFromDisplayContentAndImeSame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 96
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 104
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    const-string v0, "showImePostLayout pending for mImeTargetFromIme="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 156
    :cond_0
    return-void
.end method

.method isImeTargetFromDisplayContentAndImeSame()Z
    .locals 10

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 128
    .local v0, "dcTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 129
    .local v1, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 132
    :cond_0
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x25ae1e4d

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v2

    aput-object v5, v9, v4

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v3, v0, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v3, :cond_4

    .line 137
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v3, v5, :cond_4

    iget v3, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 139
    invoke-interface {v5}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gt v3, v5, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 140
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v1, v3, :cond_5

    .line 143
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 144
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    move v2, v4

    .line 136
    :goto_2
    return v2

    .line 130
    :cond_7
    :goto_3
    return v2
.end method

.method public synthetic lambda$scheduleShowImePostLayout$0$ImeInsetsSourceProvider()V
    .locals 9

    .line 70
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x72efe808

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetFromDisplayContentAndImeSame()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 75
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x22eb33ec

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-static {v6, v7, v2, v1, v8}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-interface {v0, v3, v5}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 78
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v3, :cond_4

    if-eqz v3, :cond_4

    .line 79
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x5ca81f2e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v6, v2, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .end local v0    # "target":Lcom/android/server/wm/InsetsControlTarget;
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    .line 86
    return-void
.end method

.method scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 7
    .param p1, "imeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 54
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 55
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 56
    .local v0, "targetChanged":Z
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    .line 57
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 59
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x85d1a3e

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    .line 64
    return-void

    .line 67
    :cond_2
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_IME_enabled:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeTargetFromIme:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/server/wm/ProtoLogGroup;

    const v6, -0x540edc89

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v5, v6, v2, v3, v1}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/android/server/wm/-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ImeInsetsSourceProvider$1aCwANZDoNIzXR0mfeN2iV_k2Yo;-><init>(Lcom/android/server/wm/ImeInsetsSourceProvider;)V

    iput-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 88
    return-void
.end method
