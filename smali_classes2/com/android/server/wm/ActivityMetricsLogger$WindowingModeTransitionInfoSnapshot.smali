.class final Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowingModeTransitionInfoSnapshot"
.end annotation


# instance fields
.field final activityRecordIdHashCode:I

.field private final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field final bindApplicationDelayMs:I

.field private final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field private final launchedActivityLaunchToken:Ljava/lang/String;

.field private final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field final launchedActivityName:Ljava/lang/String;

.field final launchedActivityShortComponentName:Ljava/lang/String;

.field final packageName:Ljava/lang/String;

.field final processName:Ljava/lang/String;

.field private final processRecord:Lcom/android/server/wm/WindowProcessController;

.field private final reason:I

.field private final startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field final type:I

.field final userId:I

.field final windowsDrawnDelayMs:I

.field final windowsFullyDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p2, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 229
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)V

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "x2"    # Lcom/android/server/wm/ActivityMetricsLogger$1;

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p2, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 234
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    .line 235
    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p2, "info"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "windowsFullyDrawnDelayMs"    # I

    .line 238
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->this$0:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 240
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 241
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 242
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 243
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 244
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getRequiredAbi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 247
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$200(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    .line 248
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$300(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 249
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 250
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 251
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->access$600(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 252
    invoke-static {p1, p3}, Lcom/android/server/wm/ActivityMetricsLogger;->access$700(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 253
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 254
    iget v0, p3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 255
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 256
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 257
    iput p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .param p3, "x2"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/server/wm/ActivityMetricsLogger$1;

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 205
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 205
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method


# virtual methods
.method getLaunchState()I
    .locals 2

    .line 261
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 269
    const/4 v0, -0x1

    return v0

    .line 265
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 263
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 267
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
