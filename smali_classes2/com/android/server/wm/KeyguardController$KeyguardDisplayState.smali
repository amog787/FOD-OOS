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

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 476
    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 477
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 466
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 466
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    return-object v0
.end method

.method private getStackForControllingOccluding(Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .param p1, "display"    # Lcom/android/server/wm/ActivityDisplay;

    .line 544
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 545
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 546
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    return-object v1

    .line 544
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 551
    .end local v0    # "stackNdx":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method acquiredSleepToken()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-string v2, "keyguard"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 488
    :cond_0
    return-void
.end method

.method dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "  Occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, " DismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, " at display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method onRemoved()V
    .locals 1

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 481
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 482
    return-void
.end method

.method releaseSleepToken()V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 495
    :cond_0
    return-void
.end method

.method visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/ActivityDisplay;)V
    .locals 8
    .param p1, "controller"    # Lcom/android/server/wm/KeyguardController;
    .param p2, "display"    # Lcom/android/server/wm/ActivityDisplay;

    .line 498
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 499
    .local v0, "lastOccluded":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 500
    .local v1, "lastDismissActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 501
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 502
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 504
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->getStackForControllingOccluding(Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 505
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 506
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 507
    .local v5, "topDismissing":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_0

    .line 508
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-ne v6, v5, :cond_0

    .line 509
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

    .line 512
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 513
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 516
    :cond_2
    iget v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v6, :cond_4

    .line 517
    iget-boolean v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 518
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

    .line 522
    .end local v5    # "topDismissing":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-nez v2, :cond_5

    .line 523
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v5

    or-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 526
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v0, v2, :cond_6

    .line 527
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-static {p1, v2}, Lcom/android/server/wm/KeyguardController;->access$500(Lcom/android/server/wm/KeyguardController;I)V

    .line 529
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v2, :cond_7

    iget-boolean v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-nez v5, :cond_7

    if-eqz v2, :cond_7

    .line 531
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    .line 532
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v5

    .line 531
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 533
    iput-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 535
    :cond_7
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 566
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 567
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 568
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 569
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 570
    return-void
.end method
