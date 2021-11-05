.class Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardDisplayState"
.end annotation


# instance fields
.field private mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mDisplayId:I

.field private mOccluded:Z

.field private mRequestDismissKeyguard:Z

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "displayId"    # I

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 509
    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 510
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 499
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 499
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    return-object v0
.end method

.method private getStackForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityStack;
    .locals 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 578
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "tdaNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 579
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 580
    .local v1, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "sNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 581
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 582
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    return-object v3

    .line 580
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 578
    .end local v1    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v2    # "sNdx":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 588
    .end local v0    # "tdaNdx":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method acquiredSleepToken()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-string v2, "keyguard"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 521
    :cond_0
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 603
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 604
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 605
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 606
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 607
    return-void
.end method

.method dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, "  Occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, " DismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, " at display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method onRemoved()V
    .locals 1

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 514
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 515
    return-void
.end method

.method releaseSleepToken()V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 528
    :cond_0
    return-void
.end method

.method visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V
    .locals 8
    .param p1, "controller"    # Lcom/android/server/wm/KeyguardController;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 531
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 532
    .local v0, "lastOccluded":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 533
    .local v1, "lastDismissActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 534
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 535
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 537
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->getStackForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 538
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 539
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 540
    .local v5, "topDismissing":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_0

    .line 541
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-ne v6, v5, :cond_0

    .line 542
    invoke-virtual {p1, v4, v2}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 545
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 546
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 549
    :cond_2
    iget v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v6, :cond_4

    .line 550
    iget-boolean v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 551
    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    nop

    :goto_2
    or-int/2addr v2, v6

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 555
    .end local v5    # "topDismissing":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-nez v2, :cond_5

    .line 556
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    iget-object v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 557
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->isShowingDreamLw()Z

    move-result v5

    or-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 560
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v0, v2, :cond_6

    .line 561
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-static {p1, v2}, Lcom/android/server/wm/KeyguardController;->access$400(Lcom/android/server/wm/KeyguardController;I)V

    .line 563
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v2, :cond_7

    iget-boolean v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-nez v5, :cond_7

    if-eqz v2, :cond_7

    .line 565
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    .line 566
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$500(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v5

    .line 565
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 567
    iput-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 569
    :cond_7
    return-void
.end method
