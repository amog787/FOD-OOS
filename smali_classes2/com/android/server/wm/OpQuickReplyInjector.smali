.class public Lcom/android/server/wm/OpQuickReplyInjector;
.super Ljava/lang/Object;
.source "OpQuickReplyInjector.java"


# static fields
.field public static final IS_QUICK_REPLY_ENABLED:Z

.field private static final TAG:Ljava/lang/String;

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

    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpQuickReplyInjector;->IS_QUICK_REPLY_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canReuseActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 6
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "reusedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 314
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 315
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 317
    .local v0, "reuseStack":Lcom/android/server/wm/ActivityStack;
    iget v1, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 318
    invoke-interface {v1, v3}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 321
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v4, "force support freeform in reuse"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 324
    :cond_0
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v1, v3}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    .line 326
    iget-object v1, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v4}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 327
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

    .line 329
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 330
    return v3

    .line 333
    .end local v0    # "reuseStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 226
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 227
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->checkAndAddWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    .line 230
    :cond_0
    return-void
.end method

.method public static checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 233
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 234
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->checkAndRemoveWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)V

    .line 237
    :cond_0
    return-void
.end method

.method public static enableFreeFormWindowManagement(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 350
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 351
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 352
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 353
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 354
    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v1, "force support freeform"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 359
    :cond_0
    return-void
.end method

.method public static exitQuicReplyOnCameraStart(Landroid/content/Intent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 272
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 273
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 274
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isInCameraActivityList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget v0, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 277
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset windowing mode for camera activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput v1, p1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 280
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 281
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset options windowing mode options="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 284
    :cond_1
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->exitQuickReply()V

    .line 286
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    const-string v1, "exitQuickReply for camera activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    return-void
.end method

.method public static exitQuickReply()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 77
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->exitQuickReply()V

    .line 80
    :cond_0
    return-void
.end method

.method public static focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "lastFocus"    # Lcom/android/server/wm/WindowState;
    .param p1, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 151
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 152
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 155
    :cond_0
    return-void
.end method

.method public static getIMDimAmount()F
    .locals 1

    .line 196
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 197
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->getIMDimAmount()F

    move-result v0

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getImBound()Landroid/graphics/Rect;
    .locals 1

    .line 122
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 123
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 1

    .line 43
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

    .line 68
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 69
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->getQuickReplyList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQuickReplyOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;)I
    .locals 1
    .param p0, "homeStack"    # Lcom/android/server/wm/TaskStack;
    .param p1, "focusedApp"    # Lcom/android/server/wm/AppWindowToken;

    .line 256
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 257
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->getQuickReplyOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;)I

    move-result v0

    return v0

    .line 260
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static initInstance()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/server/wm/OpQuickReplyInjector;->IS_QUICK_REPLY_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    .line 49
    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpQuickReply;

    sput-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 51
    :cond_0
    return-void
.end method

.method public static isForceShowStatusBar(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 166
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isForceShowStatusBar(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInCameraActivityList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 115
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isInCameraActivityList(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInIMEKilledList(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 188
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 189
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isInIMEKilledList(I)Z

    move-result v0

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyExiting()Z
    .locals 1

    .line 240
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 241
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyExiting()Z

    move-result v0

    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p0, "winToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 248
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 249
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIM(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 99
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIME(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 107
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 180
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 181
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIMEWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 211
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 212
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIMWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isQuickReplyRunning()Z
    .locals 1

    .line 90
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 91
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 264
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 266
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->killApplicationProcess(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ActivityInfo;)V

    .line 269
    :cond_0
    return-void
.end method

.method public static notifyImeShow(Ljava/lang/String;)V
    .locals 1
    .param p0, "imePkgName"    # Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 205
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->notifyImeShow(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static notifyImeVisibilityChanged(ZI)V
    .locals 1
    .param p0, "imeVisible"    # Z
    .param p1, "imeHeight"    # I

    .line 158
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 159
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->notifyImeVisibilityChanged(ZI)V

    .line 162
    :cond_0
    return-void
.end method

.method public static onConfigChanged()V
    .locals 1

    .line 173
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 174
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->onConfigChanged()V

    .line 177
    :cond_0
    return-void
.end method

.method public static resetBoundsIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z
    .locals 8
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 292
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 293
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 295
    .local v0, "token":Lcom/android/server/wm/AppWindowToken;
    const/16 v2, 0xa

    const-string v3, " caller:"

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mIsQuickReplyApp:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 296
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 297
    sget-object v4, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v4}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v4

    .line 298
    .local v4, "imBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 299
    sget-object v5, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force setBounds from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    :cond_0
    return v1

    .line 305
    .end local v4    # "imBounds":Landroid/graphics/Rect;
    :cond_1
    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force setBounds skipped for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v1, 0x0

    return v1

    .line 310
    .end local v0    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return v1
.end method

.method public static resumeDefaultTopActivity(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "topRunningActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 388
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumed activity to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v0, "focusedNotQuickReply"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 395
    :cond_0
    return-void
.end method

.method public static setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 54
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 55
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpQuickReply;->setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .locals 1
    .param p0, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 144
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 145
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static setKeyguardDone(Z)V
    .locals 1
    .param p0, "done"    # Z

    .line 137
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 138
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setKeyguardDone(Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public static setQuickReplyRunning(Z)V
    .locals 1
    .param p0, "isRunning"    # Z

    .line 83
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 84
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public static setResumedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 130
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 131
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpQuickReply;->setResumedApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static shouldForceResizeTask(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p0, "resizeMode"    # I
    .param p1, "realActivity"    # Landroid/content/ComponentName;

    .line 362
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 363
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 364
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 366
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force init resizible for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipTopBoundsAdjust(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p0, "realActivity"    # Landroid/content/ComponentName;
    .param p1, "windowMode"    # I

    .line 375
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 376
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 377
    if-eqz p0, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 380
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipTopBoundsAdjust for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static systemReady()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 62
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/android/server/wm/IOpQuickReply;->systemReady()V

    .line 65
    :cond_0
    return-void
.end method

.method public static updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p0, "inputMethodName"    # Ljava/lang/String;
    .param p1, "focusedWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "vf"    # Landroid/graphics/Rect;
    .param p3, "cf"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "df"    # Landroid/graphics/Rect;
    .param p6, "pf"    # Landroid/graphics/Rect;

    .line 219
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 220
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 221
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IOpQuickReply;->updateIMEFrameIfNeeded(Ljava/lang/String;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 223
    :cond_0
    return-void
.end method

.method public static updateLaunchParams(Landroid/app/ActivityOptions;Ljava/lang/String;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 3
    .param p0, "options"    # Landroid/app/ActivityOptions;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 337
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->initInstance()V

    .line 338
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    if-eqz v0, :cond_0

    .line 339
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    .line 340
    invoke-interface {v0, p1}, Lcom/android/server/wm/IOpQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/wm/IOpQuickReply;->setQuickReplyRunning(Z)V

    .line 342
    iget-object v0, p2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/OpQuickReplyInjector;->sOpQuickReply:Lcom/android/server/wm/IOpQuickReply;

    invoke-interface {v1}, Lcom/android/server/wm/IOpQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 343
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

    .line 347
    :cond_0
    return-void
.end method
