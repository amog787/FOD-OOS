.class final Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppRequestObserver"
.end annotation


# instance fields
.field private mAppRequestedModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 556
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    .line 558
    return-void
.end method

.method private findModeByIdLocked(II)Landroid/view/Display$Mode;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 591
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 592
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 593
    return-object v1

    .line 595
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 596
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 597
    return-object v4

    .line 595
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    :cond_2
    return-object v1
.end method

.method private setAppRequestedModeLocked(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->findModeByIdLocked(II)Landroid/view/Display$Mode;

    move-result-object v0

    .line 568
    .local v0, "requestedMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    return-void

    .line 574
    :cond_0
    if-eqz v0, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 577
    .local v1, "refreshRate":F
    invoke-static {v1, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .line 578
    .local v2, "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    .line 579
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    .line 578
    invoke-static {v3, v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 580
    .local v1, "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_0

    .line 581
    .end local v1    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v2    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 582
    const/4 v2, 0x0

    .line 583
    .restart local v2    # "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/4 v1, 0x0

    .line 585
    .restart local v1    # "sizeVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, v2}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 586
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x2

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 587
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 604
    const-string v0, "  AppRequestObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, "    mAppRequestedModeByDisplay:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 608
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->mAppRequestedModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display$Mode;

    .line 609
    .local v2, "mode":Landroid/view/Display$Mode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    .end local v1    # "id":I
    .end local v2    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setAppRequestedMode(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "modeId"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 562
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedModeLocked(II)V

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
