.class final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayWindowsObserver"
.end annotation


# instance fields
.field private final mA11yWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedWindowInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private mHasWatchOutsideTouchWindow:Z

.field private mTrackingWindows:Z

.field private final mWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .locals 0
    .param p2, "displayId"    # I

    .line 137
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 128
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 131
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 138
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 139
    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 122
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return v0
.end method

.method private cacheWindows(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 402
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 403
    .local v0, "oldWindowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 403
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 406
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 407
    .local v1, "newWindowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 408
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 409
    .local v3, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-static {v3}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v3    # "newWindow":Landroid/view/WindowInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private clearWindowsLocked()V
    .locals 3

    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 480
    .local v0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$700(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    .line 483
    .local v1, "activeWindowId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$600(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 486
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 487
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 488
    return-void
.end method

.method private getTypeForWindowManagerWindowType(I)I
    .locals 5
    .param p1, "windowType"    # I

    .line 693
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    const/16 v4, 0x3ed

    if-eq p1, v4, :cond_3

    const/16 v4, 0x7e1

    if-eq p1, v4, :cond_2

    const/16 v4, 0x7e8

    if-eq p1, v4, :cond_2

    const/16 v4, 0x7f0

    if-eq p1, v4, :cond_1

    const/16 v3, 0x7f2

    if-eq p1, v3, :cond_0

    const/16 v3, 0x7f4

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7f6

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7e3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7e4

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    .line 742
    const/4 v0, -0x1

    return v0

    .line 711
    :pswitch_0
    return v1

    .line 734
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 738
    :cond_1
    return v3

    .line 730
    :cond_2
    :pswitch_1
    return v2

    .line 706
    :cond_3
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d5
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "window"    # Landroid/view/WindowInfo;

    .line 656
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v0

    .line 657
    .local v0, "windowId":I
    if-gez v0, :cond_0

    .line 658
    const/4 v1, 0x0

    return-object v1

    .line 661
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 663
    .local v1, "reportedWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 664
    iget v2, p2, Landroid/view/WindowInfo;->type:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getTypeForWindowManagerWindowType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 665
    iget v2, p2, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 666
    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 667
    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    .line 668
    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 669
    iget-wide v2, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 670
    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 671
    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    .line 673
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v2

    .line 674
    .local v2, "parentId":I
    if-ltz v2, :cond_1

    .line 675
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 678
    :cond_1
    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 679
    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 680
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 681
    iget-object v5, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 682
    .local v5, "childToken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v6, p1, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v6

    .line 683
    .local v6, "childId":I
    if-ltz v6, :cond_2

    .line 684
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 680
    .end local v5    # "childToken":Landroid/os/IBinder;
    .end local v6    # "childId":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 689
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_3
    return-object v1
.end method

.method private sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 620
    .local p1, "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local p2, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 623
    .local v1, "oldWindowsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 624
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 625
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 626
    nop

    .line 627
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v5, 0x2

    .line 626
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v3    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 633
    .local v2, "newWindowCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 634
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 635
    .local v4, "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 636
    .local v5, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v5, :cond_2

    .line 637
    nop

    .line 638
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    .line 637
    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 640
    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v6

    .line 641
    .local v6, "changes":I
    if-eqz v6, :cond_3

    .line 642
    nop

    .line 643
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    .line 642
    invoke-static {v7, v6}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v4    # "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "changes":I
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 648
    .end local v3    # "i":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 649
    .local v3, "numEvents":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_5

    .line 650
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$100(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {v5, v6}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 652
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method private shouldUpdateWindowsLocked(ZLjava/util/List;)Z
    .locals 6
    .param p1, "forceSend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)Z"
        }
    .end annotation

    .line 373
    .local p2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 374
    return v0

    .line 377
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 379
    .local v1, "windowCount":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 381
    return v0

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 386
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 387
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 388
    .local v3, "oldWindow":Landroid/view/WindowInfo;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    .line 392
    .local v4, "newWindow":Landroid/view/WindowInfo;
    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 393
    return v0

    .line 386
    .end local v3    # "oldWindow":Landroid/view/WindowInfo;
    .end local v4    # "newWindow":Landroid/view/WindowInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v2    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private updateWindowsLocked(ILjava/util/List;)V
    .locals 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v2, :cond_0

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 501
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 502
    .local v2, "oldWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 503
    .local v3, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    const/4 v4, 0x0

    .line 505
    .local v4, "shouldClearAccessibilityFocus":Z
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 506
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 508
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 509
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    .line 508
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 511
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 512
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 514
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    .line 515
    .local v6, "windowCount":I
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$400(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v5

    .line 516
    .local v7, "isTopFocusedDisplay":Z
    :goto_1
    iget v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 517
    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$200(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v10

    if-ne v8, v10, :cond_3

    move v8, v9

    goto :goto_2

    :cond_3
    move v8, v5

    .line 520
    .local v8, "isAccessibilityFocusedDisplay":Z
    :goto_2
    const/4 v10, -0x1

    if-eqz v7, :cond_5

    .line 521
    if-lez v6, :cond_4

    .line 523
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$500(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$802(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    goto :goto_3

    .line 526
    :cond_4
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$802(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 529
    :goto_3
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$900(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 530
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v11, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 539
    :cond_5
    const/4 v11, 0x1

    .line 543
    .local v11, "activeWindowGone":Z
    if-eqz v8, :cond_7

    .line 544
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1000(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    if-eq v12, v10, :cond_6

    move v5, v9

    :cond_6
    move v4, v5

    .line 547
    :cond_7
    if-lez v6, :cond_12

    .line 548
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v6, :cond_d

    .line 549
    move-object/from16 v10, p2

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowInfo;

    .line 551
    .local v12, "windowInfo":Landroid/view/WindowInfo;
    iget-boolean v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v13, :cond_8

    .line 552
    invoke-direct {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v13

    .local v13, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_5

    .line 554
    .end local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_8
    const/4 v13, 0x0

    .line 556
    .restart local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_5
    if-eqz v13, :cond_c

    .line 559
    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 561
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v14

    .line 562
    .local v14, "windowId":I
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v7, :cond_a

    .line 563
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$900(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 566
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v15, v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 567
    invoke-virtual {v13, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_6

    .line 568
    :cond_9
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$700(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v15

    if-ne v14, v15, :cond_a

    .line 569
    const/4 v11, 0x0

    .line 572
    :cond_a
    :goto_6
    iget-boolean v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-nez v15, :cond_b

    iget-boolean v15, v12, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v15, :cond_b

    .line 573
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 575
    :cond_b
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v15, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v12}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v9

    invoke-virtual {v15, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    .end local v12    # "windowInfo":Landroid/view/WindowInfo;
    .end local v13    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v14    # "windowId":I
    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v10, p2

    .line 580
    .end local v5    # "i":I
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 581
    .local v5, "accessibilityWindowCount":I
    if-eqz v7, :cond_10

    .line 582
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$900(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v11, :cond_e

    .line 583
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$800(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    invoke-static {v9, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 587
    :cond_e
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v5, :cond_10

    .line 588
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 589
    .local v12, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$700(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v14

    if-ne v13, v14, :cond_f

    .line 590
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 587
    .end local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 594
    .end local v9    # "i":I
    :cond_10
    if-eqz v8, :cond_13

    .line 595
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_8
    if-ge v9, v5, :cond_13

    .line 596
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 597
    .restart local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1000(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v14

    if-ne v13, v14, :cond_11

    .line 598
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 599
    const/4 v4, 0x0

    .line 600
    goto :goto_9

    .line 597
    :cond_11
    const/4 v13, 0x1

    .line 595
    .end local v12    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 547
    .end local v5    # "accessibilityWindowCount":I
    .end local v9    # "i":I
    :cond_12
    move-object/from16 v10, p2

    .line 606
    :cond_13
    :goto_9
    invoke-direct {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 608
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 609
    .local v5, "oldWindowCount":I
    add-int/lit8 v9, v5, -0x1

    .restart local v9    # "i":I
    :goto_a
    if-ltz v9, :cond_14

    .line 610
    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 609
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 613
    .end local v9    # "i":I
    :cond_14
    if-eqz v4, :cond_15

    .line 614
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1000(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v12

    invoke-static {v9, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1100(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 616
    :cond_15
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 6
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .line 414
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 415
    return v0

    .line 417
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 418
    return v1

    .line 420
    :cond_1
    if-nez p2, :cond_2

    .line 421
    return v1

    .line 423
    :cond_2
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_3

    .line 424
    return v1

    .line 426
    :cond_3
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_4

    .line 427
    return v1

    .line 429
    :cond_4
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_5

    .line 430
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_6

    .line 431
    return v1

    .line 433
    :cond_5
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 434
    return v1

    .line 436
    :cond_6
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_7

    .line 437
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_8

    .line 438
    return v1

    .line 440
    :cond_7
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 441
    return v1

    .line 443
    :cond_8
    iget-object v2, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-nez v2, :cond_9

    .line 444
    iget-object v2, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-eqz v2, :cond_a

    .line 445
    return v1

    .line 447
    :cond_9
    iget-object v2, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 448
    return v1

    .line 450
    :cond_a
    iget-object v2, p1, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v3, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 451
    return v1

    .line 453
    :cond_b
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 454
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 455
    return v1

    .line 457
    :cond_c
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 458
    return v1

    .line 460
    :cond_d
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v4, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 461
    return v1

    .line 463
    :cond_e
    iget-boolean v2, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eq v2, v3, :cond_f

    .line 464
    return v1

    .line 466
    :cond_f
    iget-boolean v2, p1, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eq v2, v3, :cond_10

    .line 467
    return v1

    .line 469
    :cond_10
    iget v2, p1, Landroid/view/WindowInfo;->displayId:I

    iget v3, p2, Landroid/view/WindowInfo;->displayId:I

    if-eq v2, v3, :cond_11

    .line 470
    return v1

    .line 472
    :cond_11
    return v0
.end method


# virtual methods
.method computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .locals 8
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 292
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    return v0

    .line 300
    :cond_0
    const/4 v1, 0x0

    .line 301
    .local v1, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v2, 0x0

    .line 303
    .local v2, "windowInteractiveRegionChanged":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 304
    .local v0, "windowCount":I
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 305
    .local v3, "currentWindowRegions":Landroid/graphics/Region;
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 306
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 307
    .local v5, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v1, :cond_1

    .line 308
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 309
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 310
    invoke-virtual {p2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 311
    move-object v1, p2

    .line 312
    goto :goto_1

    .line 314
    :cond_1
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 316
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 317
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    const/4 v2, 0x1

    .line 305
    .end local v5    # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 323
    .end local v4    # "i":I
    :cond_3
    return v2
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 752
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 753
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 754
    if-nez v1, :cond_0

    .line 755
    const-string v2, "Display["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 756
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 757
    const-string v2, "] : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 758
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 760
    :cond_0
    if-lez v1, :cond_1

    .line 761
    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 762
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 764
    :cond_1
    const-string v2, "Window["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 765
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 766
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 767
    const/16 v3, 0x5d

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 753
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    .end local v1    # "j":I
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 771
    .end local v0    # "windowCount":I
    :cond_3
    return-void
.end method

.method findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p1, "windowId"    # I

    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method

.method findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .locals 1
    .param p1, "windowId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    return-object v0
.end method

.method getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 226
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 228
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    return-object v2

    .line 226
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .locals 6
    .param p1, "targetWindowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    .line 328
    .local v0, "targetWindow":Landroid/view/WindowInfo;
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-eqz v1, :cond_2

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 332
    .local v3, "window":Landroid/view/WindowInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/view/WindowInfo;->layer:I

    iget v5, v0, Landroid/view/WindowInfo;->layer:I

    if-ge v4, v5, :cond_0

    iget-boolean v4, v3, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v3    # "window":Landroid/view/WindowInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 339
    .end local v1    # "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getWindowListLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object v0
.end method

.method isTrackingWindowsLocked()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    return v0
.end method

.method public onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V
    .locals 2
    .param p1, "forceSend"    # Z
    .param p2, "topFocusedDisplayId"    # I
    .param p3, "topFocusedWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 353
    .local p4, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$300(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 358
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->shouldUpdateWindowsLocked(ZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$402(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 360
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$502(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 361
    invoke-direct {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->cacheWindows(Ljava/util/List;)V

    .line 363
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$600(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v1

    invoke-direct {p0, v1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 366
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$300(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 368
    :cond_0
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAccessibilityFocusedWindowLocked(I)V
    .locals 5
    .param p1, "windowId"    # I

    .line 265
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 267
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 268
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 269
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$202(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I

    .line 271
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 272
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$100(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x80

    .line 273
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 272
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    .line 277
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 267
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method setActiveWindowLocked(I)V
    .locals 5
    .param p1, "windowId"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 244
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 246
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 247
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 248
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$100(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x20

    .line 249
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 248
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    .line 252
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 244
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method startTrackingWindowsLocked()Z
    .locals 3

    .line 147
    const/4 v0, 0x1

    .line 149
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-nez v1, :cond_0

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 154
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$000(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)Z

    move-result v0

    .line 156
    if-nez v0, :cond_0

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set windowsObserver callbacks fail, displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccessibilityWindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    return v0
.end method

.method stopTrackingWindowsLocked()V
    .locals 3

    .line 169
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$000(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 173
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->clearWindowsLocked()V

    .line 175
    :cond_0
    return-void
.end method
