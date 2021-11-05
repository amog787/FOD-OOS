.class final Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RefreshRequestObserver"
.end annotation


# instance fields
.field private mRequestRefreshRate:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 1719
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->mRequestRefreshRate:Landroid/util/SparseArray;

    .line 1721
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1737
    const-string v0, "DisplayModeDirector"

    const-string v1, "dumpLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    const/4 v1, 0x0

    aget-object v3, p2, v1

    const-string v4, "adfr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " vote dumpLocked "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    aget-object v0, p2, v2

    const-string v3, "-h"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    aget-object v0, p2, v2

    .line 1742
    const-string v3, "-help"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1752
    :cond_0
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;-><init>()V

    .line 1753
    .local v0, "request":Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;
    aget-object v3, p2, v2

    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x6

    if-eqz v3, :cond_2

    .line 1754
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v5, :cond_1

    .line 1755
    iput v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1756
    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1757
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1754
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1759
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 1762
    :cond_2
    aget-object v1, p2, v2

    const-string v3, "fod"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1763
    iput v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1764
    const/high16 v1, 0x42f00000    # 120.0f

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 1765
    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1766
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1767
    return-void

    .line 1770
    :cond_3
    aget-object v1, p2, v2

    const-string/jumbo v3, "sun"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1771
    const/4 v1, 0x4

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1772
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 1773
    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1774
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1775
    return-void

    .line 1778
    :cond_4
    array-length v1, p2

    const/4 v3, 0x2

    if-le v1, v3, :cond_a

    .line 1779
    const/high16 v1, -0x40800000    # -1.0f

    .line 1781
    .local v1, "rate":F
    :try_start_0
    aget-object v6, p2, v3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v6

    .line 1784
    goto :goto_1

    .line 1782
    :catch_0
    move-exception v6

    .line 1783
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v7, "  Please enter the correct number!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_5

    .line 1786
    return-void

    .line 1788
    :cond_5
    aget-object v6, p2, v2

    const-string/jumbo v7, "memc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1789
    const/4 v3, 0x3

    iput v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1790
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 1791
    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1792
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1793
    return-void

    .line 1796
    :cond_6
    aget-object v6, p2, v2

    const-string v7, "bs"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1797
    const/4 v3, 0x5

    iput v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1798
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 1799
    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1800
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1801
    return-void

    .line 1804
    :cond_7
    aget-object v6, p2, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1805
    iput v5, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1806
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 1807
    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1808
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1809
    return-void

    .line 1812
    :cond_8
    aget-object v4, p2, v2

    const-string v5, "aod"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1813
    iput v3, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 1814
    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 1815
    iput-boolean v2, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 1816
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector;->getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 1817
    return-void

    .line 1743
    .end local v0    # "request":Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;
    .end local v1    # "rate":F
    :cond_9
    :goto_2
    const-string v0, "  Usage: adfr [-h|-help]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    const-string v0, "         adfr [ reset | fod | aod | adfr | memc | bs ] [f N]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    const-string v0, "  Options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1746
    const-string v0, "    f:   fps, 64-bit single-precision number N."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    const-string v0, "  E.g.:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    const-string v0, "    dumpsys display adfr memc 60.0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    return-void

    .line 1821
    :cond_a
    return-void
.end method

.method public requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V
    .locals 5
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    .line 1724
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->displayId:I

    .line 1725
    .local v0, "displayId":I
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    invoke-static {v1}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->getPolicyPriority(I)I

    move-result v1

    .line 1726
    .local v1, "priority":I
    invoke-static {p1}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->createVote(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v2

    .line 1727
    .local v2, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    if-eqz v3, :cond_0

    .line 1728
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->mRequestRefreshRate:Landroid/util/SparseArray;

    iget v4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1729
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    goto :goto_0

    .line 1731
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->mRequestRefreshRate:Landroid/util/SparseArray;

    iget v4, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1732
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1734
    :goto_0
    return-void
.end method
