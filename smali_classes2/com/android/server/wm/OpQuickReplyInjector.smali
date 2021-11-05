.class public Lcom/android/server/wm/OpQuickReplyInjector;
.super Ljava/lang/Object;
.source "OpQuickReplyInjector.java"


# static fields
.field public static final IS_QUICK_REPLY_ENABLED:Z

.field private static final TAG:Ljava/lang/String;

.field private static sForceResize:Z

.field private static sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lcom/android/server/wm/OpQuickReplyInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x20

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpQuickReplyInjector;->IS_QUICK_REPLY_ENABLED:Z

    .line 42
    sput-boolean v2, Lcom/android/server/wm/OpQuickReplyInjector;->sForceResize:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canReuseActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 6
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "reusedTask"    # Lcom/android/server/wm/Task;
    .param p2, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 323
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 324
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 326
    .local v0, "reuseStack":Lcom/android/server/wm/ActivityStack;
    iget v1, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    iget-object v3, p1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 327
    invoke-interface {v1, v3}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 330
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v4, "force support freeform in reuse"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 333
    :cond_0
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    .line 335
    iget-object v1, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v4}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "starting reuse activity mBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 339
    return v3

    .line 342
    .end local v0    # "reuseStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 233
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 234
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    .line 237
    :cond_0
    return-void
.end method

.method public static checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 240
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 241
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static enableFreeFormWindowManagement(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 359
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 360
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 361
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 363
    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v1, "force support freeform"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 368
    :cond_0
    return-void
.end method

.method public static exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 279
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 280
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 281
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isInCameraActivityList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 284
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset windowing mode for camera activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 287
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 288
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset options windowing mode options="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 291
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->exitQuickReply()V

    .line 293
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v1, "exitQuickReply for camera activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    return-void
.end method

.method public static exitQuickReply()V
    .locals 1

    .line 78
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 79
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->exitQuickReply()V

    .line 82
    :cond_0
    return-void
.end method

.method public static focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "lastFocus"    # Lcom/android/server/wm/WindowState;
    .param p1, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 158
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 159
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 162
    :cond_0
    return-void
.end method

.method public static getIMDimAmount()F
    .locals 1

    .line 203
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 204
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->getIMDimAmount()F

    move-result v0

    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getImBound()Landroid/graphics/Rect;
    .locals 1

    .line 124
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 125
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    .line 45
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getQuickReplyList(I)Ljava/util/List;
    .locals 1
    .param p0, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 71
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->getQuickReplyList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQuickReplyOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)I
    .locals 1
    .param p0, "homeStack"    # Lcom/android/server/wm/ActivityStack;
    .param p1, "focusedApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 263
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 264
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->getQuickReplyOrientation(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    return v0

    .line 267
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static initInstance()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/server/wm/OpQuickReplyInjector;->IS_QUICK_REPLY_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 51
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpQuickReply;

    sput-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 53
    :cond_0
    return-void
.end method

.method public static isForceShowStatusBar(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 173
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isForceShowStatusBar(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInCameraActivityList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 117
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isInCameraActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInIMEKilledList(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 195
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 196
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isInIMEKilledList(I)Z

    move-result v0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyExiting()Z
    .locals 1

    .line 247
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 248
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyExiting()Z

    move-result v0

    return v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p0, "winToken"    # Lcom/android/server/wm/ActivityRecord;

    .line 255
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 256
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    .line 259
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIM(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 101
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIME(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 109
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 187
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 188
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 218
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 219
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyRunning()Z
    .locals 1

    .line 92
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 93
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 271
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 273
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V

    .line 276
    :cond_0
    return-void
.end method

.method public static notifyImeShow(Ljava/lang/String;)V
    .locals 1
    .param p0, "imePkgName"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 212
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->notifyImeShow(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static notifyImeVisibilityChanged(ZI)V
    .locals 1
    .param p0, "imeVisible"    # Z
    .param p1, "imeHeight"    # I

    .line 165
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 166
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->notifyImeVisibilityChanged(ZI)V

    .line 169
    :cond_0
    return-void
.end method

.method public static onConfigChanged()V
    .locals 1

    .line 180
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 181
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->onConfigChanged()V

    .line 184
    :cond_0
    return-void
.end method

.method public static resetBoundsIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z
    .locals 8
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 299
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 300
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 303
    .local v0, "token":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, " caller:"

    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mIsQuickReplyApp:Z

    if-nez v5, :cond_1

    :cond_0
    sget-boolean v5, Lcom/android/server/wm/OpQuickReplyInjector;->sForceResize:Z

    if-eqz v5, :cond_3

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 305
    sput-boolean v2, Lcom/android/server/wm/OpQuickReplyInjector;->sForceResize:Z

    .line 306
    sget-object v2, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v2}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v2

    .line 307
    .local v2, "imBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 308
    sget-object v5, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force setBounds from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    :cond_2
    return v1

    .line 314
    .end local v2    # "imBounds":Landroid/graphics/Rect;
    :cond_3
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force setBounds skipped for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return v2

    .line 319
    .end local v0    # "token":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    return v1
.end method

.method public static resumeDefaultTopActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "topRunningActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 397
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumed activity to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "focusedNotQuickReply"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 404
    :cond_0
    return-void
.end method

.method public static setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 56
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 57
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 1
    .param p0, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 146
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 147
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 150
    :cond_0
    return-void
.end method

.method public static setForceResize(Z)V
    .locals 0
    .param p0, "forceResize"    # Z

    .line 154
    sput-boolean p0, Lcom/android/server/wm/OpQuickReplyInjector;->sForceResize:Z

    .line 155
    return-void
.end method

.method public static setKeyguardDone(Z)V
    .locals 1
    .param p0, "done"    # Z

    .line 139
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 140
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setKeyguardDone(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public static setQuickReplyRunning(Z)V
    .locals 1
    .param p0, "isRunning"    # Z

    .line 85
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 86
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public static setResumedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 132
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 133
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setResumedApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static shouldForceResizeTask(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p0, "resizeMode"    # I
    .param p1, "realActivity"    # Landroid/content/ComponentName;

    .line 371
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 372
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 373
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 375
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force init resizible for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x1

    return v0

    .line 380
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipTopBoundsAdjust(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p0, "realActivity"    # Landroid/content/ComponentName;
    .param p1, "windowMode"    # I

    .line 384
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 385
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 386
    if-eqz p0, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 389
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipTopBoundsAdjust for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x1

    return v0

    .line 393
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static systemReady()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 64
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->systemReady()V

    .line 67
    :cond_0
    return-void
.end method

.method public static updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p0, "inputMethodName"    # Ljava/lang/String;
    .param p1, "focusedWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "vf"    # Landroid/graphics/Rect;
    .param p3, "cf"    # Landroid/graphics/Rect;
    .param p4, "df"    # Landroid/graphics/Rect;
    .param p5, "pf"    # Landroid/graphics/Rect;

    .line 226
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 227
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 228
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/wm/IOpQuickReply;->updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 230
    :cond_0
    return-void
.end method

.method public static updateLaunchParams(Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 3
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 346
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 347
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 348
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 349
    invoke-interface {v0, p1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    .line 351
    iget-object v0, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v1}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 352
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting new activity mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    return-void
.end method
