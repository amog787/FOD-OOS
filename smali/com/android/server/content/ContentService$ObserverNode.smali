.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 1528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 1531
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 1532
    return-void
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"    # Z
    .param p5, "observersLock"    # Ljava/lang/Object;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .param p8, "userHandle"    # I

    .line 1596
    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-static/range {p1 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    if-ne v10, v0, :cond_2

    .line 1600
    iget-object v0, v9, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1601
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1602
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1603
    .local v0, "next":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return-void

    .line 1603
    :cond_0
    move-object/from16 v15, p3

    .line 1607
    .end local v0    # "next":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    goto :goto_0

    .line 1609
    :cond_1
    move-object/from16 v15, p3

    iget-object v12, v9, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    return-void

    .line 1615
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    :cond_2
    move-object/from16 v15, p3

    invoke-static/range {p1 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, "segment":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1619
    iget-object v1, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1620
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 1621
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1622
    .local v3, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1623
    add-int/lit8 v14, v10, 0x1

    move-object v12, v3

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    invoke-direct/range {v12 .. v20}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1625
    return-void

    .line 1620
    .end local v3    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, p3

    goto :goto_1

    .line 1630
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v2, v0}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 1631
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    add-int/lit8 v14, v10, 0x1

    move-object v12, v2

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    invoke-direct/range {v12 .. v20}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1634
    return-void

    .line 1617
    .end local v1    # "N":I
    .end local v2    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") used for observer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "leaf"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "flags"    # I
    .param p6, "targetUserHandle"    # I
    .param p7, "collector"    # Lcom/android/server/content/ContentService$ObserverCollector;

    .line 1668
    move-object v0, p0

    move/from16 v8, p6

    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1669
    .local v9, "N":I
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    move-object v10, v1

    .line 1670
    .local v10, "observerBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    move v11, v1

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_7

    .line 1671
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1675
    .local v12, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v1, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, v10, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    move v13, v1

    .line 1676
    .local v13, "selfChange":Z
    if-eqz v13, :cond_2

    if-nez p4, :cond_2

    .line 1677
    goto :goto_3

    .line 1681
    :cond_2
    const/4 v1, -0x1

    if-eq v8, v1, :cond_3

    .line 1682
    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$400(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 1683
    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$400(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v1

    if-ne v8, v1, :cond_6

    .line 1685
    :cond_3
    if-eqz p2, :cond_4

    .line 1689
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_5

    iget-boolean v1, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v1, :cond_5

    .line 1693
    goto :goto_3

    .line 1698
    :cond_4
    iget-boolean v1, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v1, :cond_5

    .line 1701
    goto :goto_3

    .line 1707
    :cond_5
    iget-object v2, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v3, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    move-object/from16 v1, p7

    move v4, v13

    move-object v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/ContentService$ObserverCollector;->collect(Landroid/database/IContentObserver;IZLandroid/net/Uri;II)V

    .line 1670
    .end local v12    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v13    # "selfChange":Z
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1711
    .end local v11    # "i":I
    :cond_7
    return-void
.end method

.method public static countUriSegments(Landroid/net/Uri;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1578
    if-nez p0, :cond_0

    .line 1579
    const/4 v0, 0x0

    return v0

    .line 1581
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "index"    # I

    .line 1566
    if-eqz p0, :cond_1

    .line 1567
    if-nez p1, :cond_0

    .line 1568
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1570
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1573
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # I

    .line 1588
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1590
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "segmentCount"    # I
    .param p3, "index"    # I
    .param p4, "observer"    # Landroid/database/IContentObserver;
    .param p5, "observerWantsSelfNotifications"    # Z
    .param p6, "flags"    # I
    .param p7, "targetUserHandle"    # I
    .param p8, "collector"    # Lcom/android/server/content/ContentService$ObserverCollector;

    .line 1727
    move-object/from16 v8, p0

    move/from16 v15, p2

    move/from16 v14, p3

    const/4 v9, 0x0

    .line 1728
    .local v9, "segment":Ljava/lang/String;
    if-lt v14, v15, :cond_0

    .line 1731
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    move-object/from16 v13, p1

    goto :goto_0

    .line 1733
    :cond_0
    if-ge v14, v15, :cond_1

    .line 1734
    move-object/from16 v13, p1

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 1738
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    move-object v0, v9

    goto :goto_1

    .line 1733
    :cond_1
    move-object/from16 v13, p1

    .line 1742
    :goto_0
    move-object v0, v9

    .end local v9    # "segment":Ljava/lang/String;
    .local v0, "segment":Ljava/lang/String;
    :goto_1
    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1743
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 1744
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1745
    .local v3, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v0, :cond_2

    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1747
    :cond_2
    add-int/lit8 v12, v14, 0x1

    move-object v9, v3

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 1749
    if-eqz v0, :cond_3

    .line 1750
    goto :goto_3

    .line 1743
    .end local v3    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p1

    move/from16 v15, p2

    move/from16 v14, p3

    goto :goto_2

    .line 1754
    .end local v2    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "flags"    # I
    .param p6, "targetUserHandle"    # I
    .param p7, "collector"    # Lcom/android/server/content/ContentService$ObserverCollector;

    .line 1717
    invoke-static {p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 1719
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "counts"    # [I
    .param p7, "pidCounts"    # Landroid/util/SparseIntArray;

    .line 1536
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .line 1537
    .local v2, "innerName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "/"

    const-string v5, ""

    const/4 v10, 0x1

    if-lez v3, :cond_1

    .line 1538
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1539
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_0

    .line 1541
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1543
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 1544
    aget v6, p6, v10

    add-int/2addr v6, v10

    aput v6, p6, v10

    .line 1545
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v2

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1543
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1549
    .end local v3    # "i":I
    :cond_1
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1550
    if-nez v2, :cond_3

    .line 1551
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1552
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    move-object v11, v2

    goto :goto_2

    .line 1554
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_2

    .line 1550
    :cond_3
    move-object v11, v2

    .line 1557
    .end local v2    # "innerName":Ljava/lang/String;
    .local v11, "innerName":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_3
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

    .line 1558
    const/4 v2, 0x0

    aget v3, p6, v2

    add-int/2addr v3, v10

    aput v3, p6, v2

    .line 1559
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 1557
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    move-object v2, v11

    .line 1563
    .end local v11    # "innerName":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v2    # "innerName":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 6
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 1637
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1638
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 1639
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v3, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v3

    .line 1640
    .local v3, "empty":Z
    if-eqz v3, :cond_0

    .line 1641
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1642
    add-int/lit8 v1, v1, -0x1

    .line 1643
    add-int/lit8 v0, v0, -0x1

    .line 1638
    .end local v3    # "empty":Z
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 1647
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1648
    .local v1, "observerBinder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1649
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1650
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1651
    .local v4, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_2

    .line 1652
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1654
    invoke-static {}, Lcom/android/server/content/ContentService;->access$200()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/android/internal/os/BinderDeathDispatcher;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 1655
    goto :goto_2

    .line 1649
    .end local v4    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1659
    .end local v3    # "i":I
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1660
    return v2

    .line 1662
    :cond_4
    const/4 v2, 0x0

    return v2
.end method
