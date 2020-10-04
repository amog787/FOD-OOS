.class public final Lcom/android/server/autofill/ui/AutoFillUI;
.super Ljava/lang/Object;
.source "AutoFillUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillUI"


# instance fields
.field private mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field private final mContext:Landroid/content/Context;

.field private mFillUi:Lcom/android/server/autofill/ui/FillUi;

.field private final mHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

.field private final mUiModeMgr:Lcom/android/server/UiModeManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 90
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Lcom/android/server/autofill/ui/OverlayControl;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/OverlayControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 92
    const-class v0, Lcom/android/server/UiModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/UiModeManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .line 60
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p1, "x1"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p1, "x1"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "x2"    # Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/autofill/ui/AutoFillUI;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .line 60
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;

    .line 60
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p1, "x1"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "x2"    # Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method private destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p3, "notifyClient"    # Z

    .line 439
    invoke-direct {p0, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 440
    invoke-direct {p0, p1, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 441
    return-void
.end method

.method private destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V
    .locals 4
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "notifyClient"    # Z

    .line 415
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    const-string v1, "AutofillUI"

    if-nez v0, :cond_1

    .line 419
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "destroySaveUiUiThread(): already destroyed"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    return-void

    .line 423
    :cond_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySaveUiUiThread(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->destroy()V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 426
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 428
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "destroySaveUiUiThread(): notifying client"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3
    iget-object v0, p1, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p1, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error notifying client to set save UI state to hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return-void
.end method

.method private hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 445
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 446
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v1

    .line 447
    .local v1, "pendingSaveUi":Lcom/android/server/autofill/ui/PendingUi;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 448
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_0

    .line 449
    const-string v2, "AutofillUI"

    const-string v3, "hideAllUiThread(): destroying Save UI because pending restoration is finished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 454
    :cond_1
    return-void
.end method

.method private hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "notifyClient"    # Z

    .line 394
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v0, :cond_1

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/FillUi;->destroy(Z)V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 398
    :cond_1
    return-void
.end method

.method private hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .locals 2
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 403
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSaveUiUiThread(): mSaveUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v0, :cond_2

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v0

    return-object v0

    .line 410
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 108
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$i7qTc5vqiej5Psbl-bIkD7js-Ao;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 2
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p3, "notifyClient"    # Z

    .line 370
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$XWhvh2-Jd9NLMoEos-e8RkZdQaI;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$XWhvh2-Jd9NLMoEos-e8RkZdQaI;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 374
    const-string v0, "Autofill UI"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v0, "  "

    .line 376
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "    "

    .line 377
    .local v1, "prefix2":Ljava/lang/String;
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Night mode: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 378
    iget-object v3, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    const-string v4, "    "

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showsFillUi: true"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/autofill/ui/FillUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showsFillUi: false"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    :goto_0
    iget-object v3, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "showsSaveUi: true"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/autofill/ui/SaveUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "showsSaveUi: false"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    :goto_1
    return-void
.end method

.method public filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 153
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$LjywPhTUqjU0ZUlG1crxBg8qhRA;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$LjywPhTUqjU0ZUlG1crxBg8qhRA;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 362
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$56AC3ykfo4h_e2LSjdkJ3XQn370;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$56AC3ykfo4h_e2LSjdkJ3XQn370;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method public hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 144
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$VF2EbGE70QNyGDbklN9Uz5xHqyQ;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public synthetic lambda$clearCallback$1$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 109
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne v0, p1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 113
    :cond_0
    return-void
.end method

.method public synthetic lambda$destroyAll$9$AutoFillUI(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0
    .param p1, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p3, "notifyClient"    # Z

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public synthetic lambda$filterFillUi$4$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "filterText"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq p1, v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/FillUi;->setFilterText(Ljava/lang/String;)V

    .line 160
    :cond_1
    return-void
.end method

.method public synthetic lambda$hideAll$8$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public synthetic lambda$hideFillUi$3$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public synthetic lambda$onPendingSaveUi$7$AutoFillUI(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 350
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->onPendingUi(ILandroid/os/IBinder;)V

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPendingSaveUi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): no save ui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void
.end method

.method public synthetic lambda$setCallback$0$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 97
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_1

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 104
    :cond_1
    return-void
.end method

.method public synthetic lambda$showError$2$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    :cond_1
    return-void
.end method

.method public synthetic lambda$showFillUi$5$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
    .locals 18
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p4, "filterText"    # Ljava/lang/String;
    .param p5, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p6, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "log"    # Landroid/metrics/LogMaker;

    .line 195
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-object/from16 v7, p1

    if-eq v7, v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 199
    new-instance v15, Lcom/android/server/autofill/ui/FillUi;

    iget-object v9, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    iget-object v13, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 201
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v16

    new-instance v17, Lcom/android/server/autofill/ui/AutoFillUI$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    move-object v8, v15

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p5

    move-object v0, v15

    move-object/from16 v15, p6

    invoke-direct/range {v8 .. v17}, Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLcom/android/server/autofill/ui/FillUi$Callback;)V

    iput-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 267
    return-void
.end method

.method public synthetic lambda$showSaveUi$6$AutoFillUI(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V
    .locals 17
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p2, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p3, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p4, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "servicePackageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "info"    # Landroid/service/autofill/SaveInfo;
    .param p8, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p9, "log"    # Landroid/metrics/LogMaker;
    .param p10, "isUpdate"    # Z
    .param p11, "compatMode"    # Z

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-object/from16 v2, p1

    if-eq v2, v1, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 299
    new-instance v1, Lcom/android/server/autofill/ui/SaveUi;

    iget-object v4, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    new-instance v13, Lcom/android/server/autofill/ui/AutoFillUI$2;

    move-object/from16 v15, p2

    move-object/from16 v14, p9

    invoke-direct {v13, v0, v14, v15}, Lcom/android/server/autofill/ui/AutoFillUI$2;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/PendingUi;)V

    iget-object v3, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 341
    invoke-virtual {v3}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v16

    move-object v3, v1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v14, v16

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v3 .. v16}, Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V

    iput-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 342
    return-void
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 349
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$R46Kz1SlDpiZBOYi-1HNH5FBjnU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$R46Kz1SlDpiZBOYi-1HNH5FBjnU;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method

.method public setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 96
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$Z-Di7CGd-L0nOI4i7_RO1FYbhgU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$Z-Di7CGd-L0nOI4i7_RO1FYbhgU;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 120
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 121
    return-void
.end method

.method public showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showError(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$S8lqjy9BKKn2SSfu43iaVPGD6rg;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V
    .locals 16
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "filterText"    # Ljava/lang/String;
    .param p4, "servicePackageName"    # Ljava/lang/String;
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p7, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p9, "sessionId"    # I
    .param p10, "compatMode"    # Z

    .line 182
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 183
    if-nez p3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 184
    .local v0, "size":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFillUi(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillUI"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    .end local v0    # "size":I
    :cond_1
    move-object/from16 v9, p1

    .line 186
    :goto_1
    const/16 v0, 0x38e

    .line 187
    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-static {v0, v11, v10, v12, v13}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38f

    .line 190
    if-nez p3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 189
    invoke-virtual {v0, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v2, 0x38d

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v14

    .line 194
    .local v14, "log":Landroid/metrics/LogMaker;
    move-object/from16 v15, p0

    iget-object v8, v15, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object v9, v7

    move-object/from16 v7, p7

    move-object v10, v8

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$H0BWucCEHDp2_3FUpZ9-CLDtxYQ;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;ZZ)V
    .locals 17
    .param p1, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p2, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "servicePackageName"    # Ljava/lang/String;
    .param p4, "info"    # Landroid/service/autofill/SaveInfo;
    .param p5, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "callback"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p8, "pendingSaveUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p9, "isUpdate"    # Z
    .param p10, "compatMode"    # Z

    .line 278
    move/from16 v13, p9

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveUi(update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_0
    move-object/from16 v14, p4

    .line 282
    :goto_0
    const/4 v0, 0x0

    .line 283
    .local v0, "numIds":I
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 284
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    array-length v2, v1

    :goto_2
    add-int v15, v0, v2

    .line 286
    .end local v0    # "numIds":I
    .local v15, "numIds":I
    const/16 v0, 0x394

    move-object/from16 v12, p8

    iget v1, v12, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 287
    move-object/from16 v11, p3

    move-object/from16 v10, p6

    move/from16 v9, p10

    invoke-static {v0, v10, v11, v1, v9}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x395

    .line 289
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v8

    .line 290
    .local v8, "log":Landroid/metrics/LogMaker;
    if-eqz v13, :cond_3

    .line 291
    const/16 v0, 0x613

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 294
    :cond_3
    move-object/from16 v7, p0

    iget-object v6, v7, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p1

    move-object v13, v5

    move-object/from16 v5, p2

    move-object v14, v6

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v16, v8

    .end local v8    # "log":Landroid/metrics/LogMaker;
    .local v16, "log":Landroid/metrics/LogMaker;
    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, v16

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/autofill/ui/-$$Lambda$AutoFillUI$_6s4RnleY3q9wMVHqQks_jl2KOA;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;ZZ)V

    invoke-virtual {v14, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method
