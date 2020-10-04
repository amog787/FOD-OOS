.class Lcom/android/server/wm/ActivityDisplay;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityDisplay.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/wm/ActivityStack;",
        ">;",
        "Lcom/android/server/wm/WindowContainerListener;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z

.field private static sNextFreeStackId:I


# instance fields
.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDisplayId:I

.field private mHomeStack:Lcom/android/server/wm/ActivityStack;

.field private mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

.field mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field private mPinnedStack:Lcom/android/server/wm/ActivityStack;

.field private mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

.field private mRecentsStack:Lcom/android/server/wm/ActivityStack;

.field private mRemoved:Z

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSingleTaskInstance:Z

.field private mSleeping:Z

.field private mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

.field public mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    .line 96
    sput-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    .line 97
    const/4 v1, -0x1

    sput v1, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    .line 104
    sput v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V
    .locals 2
    .param p1, "root"    # Lcom/android/server/wm/RootActivityContainer;
    .param p2, "display"    # Landroid/view/Display;

    .line 174
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    .line 99
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 123
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    .line 164
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    .line 165
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    .line 166
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    .line 167
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 170
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 172
    new-instance v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 175
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 176
    iget-object v0, p1, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 177
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 178
    iput-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->createDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 180
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    .line 181
    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 814
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    .line 815
    .local v0, "activityType":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 817
    .local v1, "windowingMode":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, " stack="

    const-string v5, " already exist on display="

    if-ne v0, v3, :cond_2

    .line 818
    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_2

    .line 823
    :cond_2
    if-ne v0, v2, :cond_5

    .line 824
    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_4

    if-ne v6, p1, :cond_3

    goto :goto_1

    .line 825
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 828
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    .line 830
    :cond_5
    :goto_2
    if-ne v1, v3, :cond_8

    .line 831
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_7

    if-ne v2, p1, :cond_6

    goto :goto_3

    .line 832
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 836
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_5

    .line 837
    :cond_8
    if-ne v1, v2, :cond_b

    .line 838
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_a

    if-ne v2, p1, :cond_9

    goto :goto_4

    .line 839
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 843
    :cond_a
    :goto_4
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 844
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeActivated()V

    .line 846
    :cond_b
    :goto_5
    return-void
.end method

.method private alwaysCreateStack(II)Z
    .locals 2
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 376
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "candidatePosition"    # I

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 317
    .local v0, "position":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 322
    :cond_0
    :goto_0
    if-lez v0, :cond_3

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 324
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    goto :goto_1

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 330
    goto :goto_1

    .line 332
    :cond_2
    nop

    .end local v1    # "targetStack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    .line 333
    goto :goto_0

    .line 334
    :cond_3
    :goto_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .locals 5
    .param p1, "windowingMode"    # I
    .param p2, "supportsMultiWindow"    # Z
    .param p3, "supportsSplitScreen"    # Z
    .param p4, "supportsFreeform"    # Z
    .param p5, "supportsPip"    # Z
    .param p6, "activityType"    # I

    .line 926
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 930
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 931
    return v1

    .line 934
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v2

    .line 935
    .local v2, "displayWindowingMode":I
    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    goto :goto_0

    .line 944
    :cond_2
    if-nez p4, :cond_3

    if-ne p1, v4, :cond_3

    .line 945
    return v1

    .line 948
    :cond_3
    if-nez p5, :cond_4

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 949
    return v1

    .line 951
    :cond_4
    return v0

    .line 937
    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 938
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eq v2, v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    .line 937
    :goto_1
    return v0

    .line 928
    .end local v2    # "displayWindowingMode":I
    :cond_7
    :goto_2
    return v0
.end method

.method private onSplitScreenModeActivated()V
    .locals 9

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 897
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 898
    .local v1, "otherStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eq v1, v2, :cond_1

    .line 899
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v2

    if-nez v2, :cond_0

    .line 900
    goto :goto_1

    .line 902
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    .end local v1    # "otherStack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 908
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 909
    nop

    .line 910
    return-void

    .line 908
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private onSplitScreenModeDismissed()V
    .locals 11

    .line 864
    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 867
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 868
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 869
    .local v4, "otherStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 870
    goto :goto_1

    .line 872
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    .end local v4    # "otherStack":Lcom/android/server/wm/ActivityStack;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 877
    .end local v2    # "i":I
    :cond_1
    nop

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 879
    .local v1, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 885
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 889
    .end local v1    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    nop

    .line 890
    return-void

    .line 877
    :catchall_0
    move-exception v2

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 879
    .restart local v1    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 885
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 889
    .end local v1    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    throw v2
.end method

.method private onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1538
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 1538
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1541
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 261
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 263
    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 9
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "includingParents"    # Z
    .param p4, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 271
    .local v1, "prevFocusedStack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 272
    .local v2, "wasContained":Z
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positionChildAt: Can only have one child on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I

    move-result v3

    .line 277
    .local v3, "insertPosition":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 284
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p2, v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_2

    .line 286
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v4, p1, :cond_4

    .line 287
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 290
    :cond_4
    :goto_2
    if-eqz p4, :cond_7

    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 292
    .local v0, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eq v0, v1, :cond_7

    .line 293
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 294
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v4, v4, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    iget v5, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 295
    const/4 v6, -0x1

    if-nez v0, :cond_5

    move v7, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v7

    .line 296
    :goto_3
    iget-object v8, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v6

    .line 294
    :goto_4
    invoke-static {v4, v5, v7, v6, p4}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIIILjava/lang/String;)V

    .line 305
    .end local v0    # "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_8

    .line 306
    nop

    .line 307
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 306
    invoke-virtual {v0, v3, v4, p3}, Lcom/android/server/wm/DisplayContent;->positionStackAt(ILcom/android/server/wm/TaskStack;Z)V

    .line 309
    :cond_8
    if-nez v2, :cond_9

    .line 310
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->setParent(Lcom/android/server/wm/ActivityDisplay;)V

    .line 312
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 313
    return-void
.end method

.method private releaseSelfIfNeeded()V
    .locals 3

    .line 1302
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 1307
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1311
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->remove()V

    goto :goto_1

    .line 1312
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1313
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    .line 1314
    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1315
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RootActivityContainer;->removeChild(Lcom/android/server/wm/ActivityDisplay;)V

    .line 1316
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1317
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(I)V

    .line 1319
    :cond_3
    :goto_1
    return-void

    .line 1303
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_2
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 849
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 850
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1

    .line 852
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_2

    .line 854
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_3

    .line 856
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 859
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeDismissed()V

    .line 861
    :cond_3
    :goto_0
    return-void
.end method

.method private updateBounds()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->setBounds(IIII)I

    .line 190
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    .line 637
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 638
    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    .line 646
    :goto_0
    sget v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    if-lez v0, :cond_2

    .line 647
    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    .line 649
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 651
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-virtual {v0, v4, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_4

    .line 658
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    .line 661
    :cond_4
    return-void
.end method

.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "milliseconds"    # I

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    .line 671
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 672
    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v1, -0x1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 676
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_1
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 682
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 684
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 686
    :cond_0
    return-void
.end method

.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 218
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 219
    const/4 p2, 0x0

    goto :goto_0

    .line 220
    :cond_0
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 223
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 228
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 579
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    const/4 v1, 0x0

    return v1

    .line 577
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 583
    .end local v0    # "stackNdx":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 584
    .local v0, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_2

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: mLastFocusedStack changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 589
    return v1
.end method

.method public continueUpdateImeTarget()V
    .locals 1

    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 1559
    :cond_0
    return-void
.end method

.method protected createDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 435
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 443
    :cond_0
    if-nez p2, :cond_1

    .line 446
    const/4 p2, 0x1

    .line 449
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 453
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-nez v0, :cond_2

    goto :goto_0

    .line 454
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 467
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getNextStackId()I

    move-result v0

    .line 468
    .local v0, "stackId":I
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/ActivityDisplay;->createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 463
    .end local v0    # "stackId":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;
    .locals 9
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "stackId"    # I
    .param p4, "onTop"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIIZ)TT;"
        }
    .end annotation

    .line 474
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v5, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move v6, p1

    move v7, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityDisplay;ILcom/android/server/wm/ActivityStackSupervisor;IIZ)V

    return-object v0
.end method

.method public deferUpdateImeTarget()V
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 1548
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 1550
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1585
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v1, :cond_0

    const-string v1, " mSingleTaskInstance"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1584
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, "myPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_1

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mHomeStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_2

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRecentsStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_3

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPinnedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_4

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSplitScreenPrimaryStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_5

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPreferredTopFocusableStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_6

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLastFocusedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1608
    const-string v1, "  mAllSleepTokens="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 1610
    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1611
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1612
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1609
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1616
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public dumpStacks(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1619
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1620
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget v1, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1621
    if-lez v0, :cond_0

    .line 1622
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1619
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1625
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1447
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1448
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1446
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1451
    .end local v0    # "stackNdx":I
    :cond_0
    return-void
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isPreferredDisplay"    # Z
    .param p3, "result"    # Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->clear()V

    .line 694
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_6

    .line 695
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 696
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_5

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping stack: (mismatch activity/stack) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 703
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 709
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    .line 710
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_4

    .line 713
    const/4 v2, 0x0

    .line 714
    .local v2, "pulled":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v3, v1, :cond_1

    .line 715
    const/16 v3, 0x1f4

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;I)V

    .line 716
    const/4 v2, 0x1

    .line 719
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_2

    .line 725
    if-nez v2, :cond_2

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 731
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_3

    .line 733
    const/4 v3, 0x6

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityDisplay;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 735
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 736
    return-void

    .line 737
    .end local v2    # "pulled":Z
    :cond_4
    if-eqz p2, :cond_5

    .line 741
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    .line 694
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 747
    .end local v0    # "stackNdx":I
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_8

    .line 748
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 750
    :cond_8
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityStack;
    .locals 1
    .param p1, "index"    # I

    .line 1212
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 488
    return-object v0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 492
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 493
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    return-object v1

    .line 491
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 498
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 8
    .param p1, "userId"    # I

    .line 1484
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1485
    return-object v1

    .line 1488
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1489
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1490
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 1491
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1492
    goto :goto_2

    .line 1495
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1496
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_1
    if-ltz v5, :cond_4

    .line 1497
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1498
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v7, p1, :cond_3

    .line 1500
    :cond_2
    return-object v6

    .line 1496
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1489
    .end local v3    # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1504
    .end local v2    # "taskNdx":I
    :cond_5
    return-object v1
.end method

.method getHomeStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1119
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 502
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 6
    .param p1, "currentFocus"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 506
    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 509
    .local v0, "currentWindowingMode":I
    :goto_0
    const/4 v1, 0x0

    .line 510
    .local v1, "candidate":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_7

    .line 511
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 512
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1

    if-ne v3, p1, :cond_1

    .line 513
    goto :goto_2

    .line 515
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_2

    .line 516
    goto :goto_2

    .line 521
    :cond_2
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sIsKeyguardDone:Z

    if-nez v4, :cond_3

    .line 522
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 523
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not focus on PIP window if keyguard locked stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 530
    :cond_3
    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    if-nez v1, :cond_5

    .line 531
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 539
    move-object v1, v3

    .line 540
    nop

    .line 510
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 542
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 544
    return-object v1

    .line 546
    :cond_6
    return-object v3

    .line 548
    .end local v2    # "i":I
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_7
    return-object v1
.end method

.method getNextStackId()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 419
    sget v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 392
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    if-eqz v0, :cond_0

    .line 393
    return-object v0

    .line 396
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;, "TT;"
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "activityType"    # I
    .param p5, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/TaskRecord;",
            "IZ)TT;"
        }
    .end annotation

    .line 408
    if-eqz p2, :cond_0

    .line 409
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 413
    .local v0, "windowingMode":I
    :goto_0
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 414
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .locals 3

    .line 1323
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1324
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1325
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    .line 1326
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 552
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 553
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_0

    .line 554
    const/4 v1, 0x0

    return-object v1

    .line 558
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 559
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    .line 562
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 563
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    .line 566
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 569
    :cond_3
    return-object v1
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 340
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v2, p1, :cond_0

    .line 341
    return-object v1

    .line 338
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 353
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 355
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 358
    :cond_1
    if-ne p1, v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 360
    :cond_2
    if-ne p1, v1, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 366
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 367
    return-object v1

    .line 364
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1388
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1389
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    :goto_0
    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "windowingMode"    # I

    .line 1063
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1065
    .local v1, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1066
    return-object v1

    .line 1063
    .end local v1    # "current":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1069
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1164
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1168
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 1171
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 1173
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1174
    return-void

    .line 1176
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_3

    .line 1177
    return-void

    .line 1179
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1180
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1181
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 1182
    return-void

    .line 1166
    :cond_4
    :goto_0
    return-void
.end method

.method hasPinnedStack()Z
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSplitScreenPrimaryStack()Z
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPrivate()Z
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    .line 1237
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    return v0
.end method

.method isSingleTaskInstance()Z
    .locals 1

    .line 1580
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    return v0
.end method

.method isSleeping()Z
    .locals 1

    .line 1508
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 1054
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 1055
    .local v3, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1056
    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    return v1

    .line 1053
    .end local v3    # "current":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1059
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUidPresent(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1225
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 1226
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->isUidPresent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    const/4 v0, 0x1

    return v0

    .line 1229
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    goto :goto_0

    .line 1230
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1465
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_0

    .line 1466
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1467
    return-void

    .line 1469
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1470
    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 1454
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1457
    :cond_0
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    return-void

    .line 1403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 1406
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1407
    .local v1, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 1408
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 1409
    .local v3, "s":Lcom/android/server/wm/ActivityStack;
    if-ne v3, p1, :cond_1

    .line 1410
    goto :goto_2

    .line 1412
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    .line 1413
    .local v4, "winMode":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    goto :goto_1

    :cond_2
    move v6, v5

    .line 1415
    .local v6, "isValidWindowingMode":Z
    :cond_3
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 1417
    add-int/lit8 v0, v2, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 1418
    goto :goto_3

    .line 1407
    .end local v3    # "s":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "winMode":I
    .end local v6    # "isValidWindowingMode":Z
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1421
    .end local v2    # "stackNdx":I
    :cond_5
    :goto_3
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "behindStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1429
    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1438
    .local v0, "stackIndex":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1439
    .local v1, "behindStackIndex":I
    if-gt v0, v1, :cond_1

    .line 1440
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1441
    .local v2, "insertIndex":I
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 1442
    return-void

    .line 1430
    .end local v0    # "stackIndex":I
    .end local v1    # "behindStackIndex":I
    .end local v2    # "insertIndex":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1142
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->preOnConfigurationChanged()V

    .line 1145
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1146
    return-void
.end method

.method onDisplayChanged()V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 195
    .local v0, "displayId":I
    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    .line 197
    .local v1, "displayState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v3, "Display-off"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_0

    .line 199
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v2, :cond_1

    .line 200
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 201
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 205
    .end local v1    # "displayState":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 210
    :cond_2
    return-void
.end method

.method onExitingSplitScreenMode()V
    .locals 1

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    .line 1160
    return-void
.end method

.method public onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 215
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->onLockTaskPackagesUpdated()V

    .line 1149
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1152
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 1124
    nop

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 1126
    .local v0, "currRotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1127
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    .line 1129
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1130
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 1129
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationLocked(II)V

    .line 1132
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1133
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    .line 1134
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V

    .line 1137
    :cond_1
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 809
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 810
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 811
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z
    .locals 7
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "dontWait"    # Z

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "someActivityPaused":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_4

    .line 607
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 608
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 609
    .local v3, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_3

    .line 610
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_0

    .line 611
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 615
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_1

    .line 616
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickReply: skip pausing stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " resumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    goto :goto_1

    .line 622
    :cond_1
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseBackStacks: stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mResumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2, p3}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v4

    or-int/2addr v0, v4

    .line 606
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 628
    .end local v1    # "stackNdx":I
    :cond_4
    return v0
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 258
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 245
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z
    .param p3, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 250
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    .line 1521
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_0
    return-void
.end method

.method remove()V
    .locals 8

    .line 1241
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v0

    .line 1242
    .local v0, "destroyContentOnRemoval":Z
    const/4 v1, 0x0

    .line 1243
    .local v1, "lastReparentedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 1250
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 1251
    .local v2, "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 1253
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1255
    .local v3, "numStacks":I
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    .line 1256
    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    .line 1258
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_2

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 1264
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1265
    const/4 v7, 0x4

    goto :goto_1

    .line 1266
    :cond_1
    const/4 v7, 0x0

    :goto_1
    nop

    .line 1267
    .local v7, "windowingMode":I
    invoke-virtual {v6, v2, v5, v5}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V

    .line 1268
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1269
    move-object v1, v6

    goto :goto_3

    .line 1259
    .end local v7    # "windowingMode":I
    :cond_2
    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 1273
    :goto_3
    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v7, v3, v7

    sub-int/2addr v4, v7

    .line 1274
    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v7

    .line 1255
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/2addr v4, v5

    goto :goto_0

    .line 1277
    .end local v3    # "numStacks":I
    .end local v4    # "stackNdx":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1278
    nop

    .line 1279
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    .line 1283
    if-eqz v1, :cond_4

    .line 1284
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 1286
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    .line 1288
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1289
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1290
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1293
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_5

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear mAllSleepTokens for remove display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 1299
    :cond_6
    return-void

    .line 1277
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v3
.end method

.method removeChild(Lcom/android/server/wm/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 231
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_1

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 237
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 238
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 240
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 241
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 6
    .param p1, "windowingModes"    # [I

    .line 757
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    .line 764
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_4

    .line 766
    aget v2, p1, v1

    .line 767
    .local v2, "windowingMode":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 768
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 769
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_1

    .line 770
    goto :goto_2

    .line 772
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_2

    .line 773
    goto :goto_2

    .line 775
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 765
    .end local v2    # "windowingMode":I
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 779
    .end local v1    # "j":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 780
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 779
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 782
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 758
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 6
    .param p1, "activityTypes"    # [I

    .line 785
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 792
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_3

    .line 794
    aget v2, p1, v1

    .line 795
    .local v2, "activityType":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 796
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 797
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 798
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 793
    .end local v2    # "activityType":I
    .end local v3    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 803
    .end local v1    # "j":I
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 804
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 803
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 806
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 786
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_5
    :goto_3
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;I)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "activityType"    # I

    .line 968
    if-eqz p2, :cond_0

    .line 969
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 973
    .local v0, "windowingMode":I
    :goto_0
    if-nez v0, :cond_3

    .line 974
    if-eqz p3, :cond_1

    .line 975
    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 977
    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 978
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 980
    :cond_2
    if-nez v0, :cond_3

    .line 982
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v0

    .line 985
    :cond_3
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 986
    if-eqz v0, :cond_4

    .line 987
    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 986
    :goto_1
    return v1
.end method

.method setDisplayToSingleTaskInstance()V
    .locals 5

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    .line 1563
    .local v0, "childCount":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 1567
    if-lez v0, :cond_1

    .line 1568
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1569
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v3

    if-gt v3, v1, :cond_0

    goto :goto_0

    .line 1570
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display stack already has multiple tasks. display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1575
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    .line 1576
    return-void

    .line 1564
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display already has multiple stacks. display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "moveFocusNow"    # Z

    .line 1350
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    .line 1351
    return-void

    .line 1354
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1355
    .local v0, "token":Landroid/os/IBinder;
    const-string v1, "WindowManager"

    if-nez v0, :cond_2

    .line 1356
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing focused app, displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_1
    const/4 v1, 0x0

    .local v1, "newFocus":Lcom/android/server/wm/AppWindowToken;
    goto :goto_0

    .line 1360
    .end local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1361
    .local v2, "newFocus":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_3

    .line 1362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set focused app to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " moveFocusNow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_4
    move-object v1, v2

    .end local v2    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    if-eqz v1, :cond_5

    .line 1372
    invoke-static {p1}, Lcom/android/server/wm/OpScreenCompatInjector;->getCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    .line 1376
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    .line 1377
    .local v2, "changed":Z
    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 1378
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1381
    :cond_6
    return-void
.end method

.method setIsSleeping(Z)V
    .locals 0
    .param p1, "asleep"    # Z

    .line 1512
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    .line 1513
    return-void
.end method

.method shouldDestroyContentOnRemove()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1341
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method shouldSleep()Z
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method supportsSystemDecorations()Z
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1073
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5
    .param p1, "considerKeyguardState"    # Z

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, "topRunning":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1088
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    .line 1089
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1093
    :cond_0
    if-nez v0, :cond_3

    .line 1094
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 1095
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 1097
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v3, v1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1098
    goto :goto_1

    .line 1100
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_2

    .line 1102
    goto :goto_2

    .line 1094
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1109
    .end local v2    # "i":I
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1110
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1111
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1112
    const/4 v2, 0x0

    return-object v2

    .line 1115
    :cond_4
    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    .line 1530
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1531
    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I
    .locals 14
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/TaskRecord;
    .param p4, "activityType"    # I

    .line 1003
    move-object v7, p0

    move v0, p1

    iget-object v1, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1004
    .local v1, "supportsMultiWindow":Z
    iget-object v2, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1005
    .local v2, "supportsSplitScreen":Z
    iget-object v3, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1006
    .local v3, "supportsFreeform":Z
    iget-object v4, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 1007
    .local v4, "supportsPip":Z
    if-eqz v1, :cond_1

    .line 1008
    if-eqz p3, :cond_0

    .line 1009
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v1

    .line 1010
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_0

    .line 1012
    :cond_0
    if-eqz p2, :cond_1

    .line 1013
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    .line 1014
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    .line 1015
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v3

    .line 1016
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_0

    .line 1020
    :cond_1
    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    .end local v1    # "supportsMultiWindow":Z
    .end local v2    # "supportsSplitScreen":Z
    .end local v3    # "supportsFreeform":Z
    .end local v4    # "supportsPip":Z
    .local v8, "supportsSplitScreen":Z
    .local v9, "supportsFreeform":Z
    .local v10, "supportsPip":Z
    .local v11, "supportsMultiWindow":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v12

    .line 1021
    .local v12, "inSplitScreenMode":Z
    if-nez v12, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1025
    const/4 v0, 0x0

    move v13, v0

    .end local p1    # "windowingMode":I
    .local v0, "windowingMode":I
    goto :goto_1

    .line 1026
    .end local v0    # "windowingMode":I
    .restart local p1    # "windowingMode":I
    :cond_2
    if-eqz v12, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-eqz v8, :cond_4

    .line 1029
    const/4 v0, 0x4

    move v13, v0

    .end local p1    # "windowingMode":I
    .restart local v0    # "windowingMode":I
    goto :goto_1

    .line 1032
    .end local v0    # "windowingMode":I
    .restart local p1    # "windowingMode":I
    :cond_4
    move v13, v0

    .end local p1    # "windowingMode":I
    .local v13, "windowingMode":I
    :goto_1
    if-eqz v13, :cond_5

    .line 1033
    move-object v0, p0

    move v1, v13

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v10

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1035
    return v13

    .line 1037
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 1629
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1630
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1631
    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1632
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1633
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1634
    .local v2, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_1

    .line 1635
    iget v5, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1636
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1637
    .local v3, "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_0

    .line 1638
    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1640
    .end local v3    # "focusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_0
    goto :goto_0

    .line 1641
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1643
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 1644
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 1645
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    const-wide v5, 0x20b00000003L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/ActivityStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1643
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1647
    .end local v3    # "stackNdx":I
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1648
    return-void
.end method
