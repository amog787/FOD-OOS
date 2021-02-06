.class final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransitionInfoSnapshot"
.end annotation


# instance fields
.field final activityRecordIdHashCode:I

.field private final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final bindApplicationDelayMs:I

.field private final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field private final launchedActivityLaunchToken:Ljava/lang/String;

.field private final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field final launchedActivityName:Ljava/lang/String;

.field final launchedActivityShortComponentName:Ljava/lang/String;

.field final packageName:Ljava/lang/String;

.field private final processName:Ljava/lang/String;

.field private final processRecord:Lcom/android/server/wm/WindowProcessController;

.field private final reason:I

.field private final startingWindowDelayMs:I

.field final type:I

.field final userId:I

.field final windowsDrawnDelayMs:I

.field final windowsFullyDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 351
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityMetricsLogger$1;

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .param p2, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowsFullyDrawnDelayMs"    # I

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 357
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 358
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 359
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 360
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 361
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getRequiredAbi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 364
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 365
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 366
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 367
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 368
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 369
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 370
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 371
    iget v0, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 372
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 373
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 374
    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 375
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/wm/ActivityMetricsLogger$1;

    .line 327
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getLaunchState()I
    .locals 2

    .line 378
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 386
    const/4 v0, -0x1

    return v0

    .line 382
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 380
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 384
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
