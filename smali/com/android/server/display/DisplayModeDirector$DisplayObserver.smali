.class final Lcom/android/server/display/DisplayModeDirector$DisplayObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 621
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    .line 623
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 624
    return-void
.end method

.method private updateDisplayModes(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 669
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 670
    .local v0, "d":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 674
    return-void

    .line 676
    :cond_0
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 677
    .local v1, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 678
    const/4 v2, 0x0

    .line 679
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 680
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 681
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    const/4 v2, 0x1

    .line 684
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 685
    const/4 v2, 0x1

    .line 686
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 688
    :cond_2
    if-eqz v2, :cond_3

    .line 689
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$500(Lcom/android/server/display/DisplayModeDirector;)V

    .line 691
    :cond_3
    monitor-exit v3

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public observe()V
    .locals 11

    .line 627
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 628
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 631
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 632
    .local v1, "modes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 633
    .local v2, "defaultModes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Display$Mode;>;"
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 634
    .local v3, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    .line 635
    .local v4, "displays":[Landroid/view/Display;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 636
    .local v7, "d":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    .line 637
    .local v8, "displayId":I
    invoke-virtual {v7, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 638
    iget-object v9, v3, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 639
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    .end local v7    # "d":Landroid/view/Display;
    .end local v8    # "displayId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 641
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 642
    :try_start_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 643
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 644
    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/view/Display$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    iget-object v8, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Display$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 647
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_1
    monitor-exit v5

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 652
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    .line 653
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 665
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->updateDisplayModes(I)V

    .line 666
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 657
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 659
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 660
    monitor-exit v0

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
