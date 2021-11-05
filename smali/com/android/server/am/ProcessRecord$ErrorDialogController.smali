.class Lcom/android/server/am/ProcessRecord$ErrorDialogController;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorDialogController"
.end annotation


# instance fields
.field private mAnrDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppNotRespondingDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mViolationDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StrictModeViolationDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

.field final synthetic this$0:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessRecord;

    .line 2143
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    .line 2143
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    .line 2143
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    return-object v0
.end method

.method private getDisplayContexts(Z)Ljava/util/List;
    .locals 2
    .param p1, "lastUsedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 2301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2302
    .local v0, "displayContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p1, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$000(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->getDisplayContextsWithErrorDialogs(Ljava/util/List;)V

    .line 2306
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_3

    .line 2307
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v1, :cond_2

    .line 2308
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayUiContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 2309
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    .line 2307
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2311
    :cond_3
    return-object v0
.end method


# virtual methods
.method clearAllErrorDialogs()V
    .locals 0

    .line 2170
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearCrashDialogs()V

    .line 2171
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearAnrDialogs()V

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearViolationDialogs()V

    .line 2173
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearWaitingDialog()V

    .line 2174
    return-void
.end method

.method clearAnrDialogs()V
    .locals 2

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2192
    return-void

    .line 2194
    :cond_0
    sget-object v1, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;->INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 2196
    return-void
.end method

.method clearCrashDialogs()V
    .locals 1

    .line 2177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearCrashDialogs(Z)V

    .line 2178
    return-void
.end method

.method clearCrashDialogs(Z)V
    .locals 2
    .param p1, "needDismiss"    # Z

    .line 2181
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2182
    return-void

    .line 2184
    :cond_0
    if-eqz p1, :cond_1

    .line 2185
    sget-object v1, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;->INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2187
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 2188
    return-void
.end method

.method clearViolationDialogs()V
    .locals 2

    .line 2199
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2200
    return-void

    .line 2202
    :cond_0
    sget-object v1, Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;->INSTANCE:Lcom/android/server/am/-$$Lambda$wajKhQOjpilT0K4j-1sLOJKYftw;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 2204
    return-void
.end method

.method clearWaitingDialog()V
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v0, :cond_0

    .line 2208
    return-void

    .line 2210
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;->dismiss()V

    .line 2211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 2212
    return-void
.end method

.method forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;)V"
        }
    .end annotation

    .line 2215
    .local p1, "dialogs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/am/BaseErrorDialog;>;"
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/BaseErrorDialog;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2216
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseErrorDialog;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2215
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2218
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method hasAnrDialogs()Z
    .locals 1

    .line 2158
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasCrashDialogs()Z
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasDebugWaitingDialog()Z
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasViolationDialogs()Z
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$showAnrDialogs$1$ProcessRecord$ErrorDialogController()V
    .locals 2

    .line 2247
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2248
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 2249
    .local v1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppNotRespondingDialog;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2250
    if-eqz v1, :cond_0

    .line 2251
    sget-object v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;->INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2253
    :cond_0
    return-void

    .line 2249
    .end local v1    # "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppNotRespondingDialog;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showCrashDialogs$0$ProcessRecord$ErrorDialogController()V
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2230
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 2231
    .local v1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppErrorDialog;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2232
    if-eqz v1, :cond_0

    .line 2233
    sget-object v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;->INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2235
    :cond_0
    return-void

    .line 2231
    .end local v1    # "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppErrorDialog;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showDebugWaitingDialogs$3$ProcessRecord$ErrorDialogController()V
    .locals 2

    .line 2282
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2283
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 2284
    .local v1, "dialog":Landroid/app/Dialog;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2285
    if-eqz v1, :cond_0

    .line 2286
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2288
    :cond_0
    return-void

    .line 2284
    .end local v1    # "dialog":Landroid/app/Dialog;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showViolationDialogs$2$ProcessRecord$ErrorDialogController()V
    .locals 2

    .line 2266
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2267
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 2268
    .local v1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/StrictModeViolationDialog;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2269
    if-eqz v1, :cond_0

    .line 2270
    sget-object v0, Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;->INSTANCE:Lcom/android/server/am/-$$Lambda$1WA8m3qLmGLM_p471nun2GeoDvg;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 2272
    :cond_0
    return-void

    .line 2268
    .end local v1    # "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/StrictModeViolationDialog;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .locals 6
    .param p1, "data"    # Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 2239
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2240
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 2241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2242
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2243
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v5}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2245
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$pOUTBc6k6s3-ZuZYLsjopLU9JWw;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$pOUTBc6k6s3-ZuZYLsjopLU9JWw;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2254
    return-void
.end method

.method showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V
    .locals 6
    .param p1, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 2221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2222
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 2223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2224
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2225
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v5}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-direct {v4, v2, v5, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2227
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$W-AQD6Azm5daJOusD9r1R26WGBo;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$W-AQD6Azm5daJOusD9r1R26WGBo;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2236
    return-void
.end method

.method showDebugWaitingDialogs()V
    .locals 5

    .line 2276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2277
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2278
    .local v1, "c":Landroid/content/Context;
    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v3}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 2280
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v2}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M;

    invoke-direct {v3, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2289
    return-void
.end method

.method showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V
    .locals 7
    .param p1, "res"    # Lcom/android/server/am/AppErrorResult;

    .line 2257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 2258
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 2259
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2260
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2261
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    .line 2262
    invoke-static {v5}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2, v5, p1, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 2261
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2259
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2264
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->this$0:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Lcom/android/server/am/ProcessRecord;->access$300(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$yEOzfx-KIitetidLDudmF3WIN9Y;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$yEOzfx-KIitetidLDudmF3WIN9Y;-><init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2273
    return-void
.end method
