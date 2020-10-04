.class public Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;
.super Ljava/lang/Object;
.source "OnePlusSceneUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusSceneUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityStack"
.end annotation


# static fields
.field private static mProcessName:Ljava/lang/String;

.field private static mUid:I


# instance fields
.field private mActivityStack:Lcom/android/server/wm/ActivityStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mProcessName:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mUid:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0
    .param p1, "as"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    .line 35
    invoke-static {p1, p2}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 36
    return-void
.end method

.method public static getCurUid()I
    .locals 1

    .line 71
    sget v0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mUid:I

    return v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mProcessName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final handleEvaluateGameMode(ZZ)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "enabledESportMode"    # Z

    .line 59
    invoke-static {p1, p2}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleEvaluateGameMode(ZZ)V

    .line 60
    return-void
.end method

.method public final handleEvaluateReadMode(I)V
    .locals 0
    .param p1, "enabled"    # I

    .line 55
    invoke-static {p1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->handleEvaluateReadMode(I)V

    .line 56
    return-void
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "next"    # Lcom/android/server/wm/ActivityRecord;

    .line 46
    invoke-static {p1, p3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 47
    iget-object v0, p0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V

    .line 48
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getProcName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mProcessName:Ljava/lang/String;

    .line 49
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mUid:I

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z
    .locals 1
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .line 40
    iget-object v0, p0, Lcom/android/server/am/OnePlusSceneUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p3}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final updateDisableSceneScreenEffectFlag(I)V
    .locals 0
    .param p1, "toDisableMode"    # I

    .line 63
    invoke-static {p1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateDisableSceneScreenEffectFlag(I)V

    .line 64
    return-void
.end method

.method public final updateSceneScreenEffectFlag(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 67
    invoke-static {p1}, Lcom/android/server/wm/OnePlusSceneManagerInjector;->updateSceneScreenEffectFlag(I)V

    .line 68
    return-void
.end method
