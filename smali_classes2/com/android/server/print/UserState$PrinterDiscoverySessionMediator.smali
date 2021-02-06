.class Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrinterDiscoverySessionMediator"
.end annotation


# instance fields
.field private final mDiscoveryObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/print/IPrinterDiscoveryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDestroyed:Z

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedPrinterDiscoveryTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;)V
    .locals 3

    .line 1277
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    .line 1260
    new-instance v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;-><init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    .line 1279
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Ou3LUs53hzSrIma0FHPj2g3gePc;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Ou3LUs53hzSrIma0FHPj2g3gePc;

    new-instance v2, Ljava/util/ArrayList;

    .line 1281
    invoke-static {p1}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1279
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1282
    return-void
.end method

.method private handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .line 1673
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1674
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1675
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1676
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    .line 1674
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1678
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .line 1682
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1683
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1684
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1685
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    .line 1683
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onDestroyed()V

    .line 1688
    return-void
.end method

.method private handleDispatchPrintersAdded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 1654
    .local p1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1655
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1656
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1657
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, v2, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1655
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1659
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1660
    return-void
.end method

.method private handleDispatchPrintersRemoved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1663
    .local p1, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1664
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1665
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1666
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, v2, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1664
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1668
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1669
    return-void
.end method

.method private handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1692
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1693
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1694
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1695
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    .line 1693
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1697
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private handleDispatchStopPrinterDiscovery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .line 1700
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1701
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1702
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1703
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    .line 1701
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1705
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 3
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 1725
    .local p2, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    goto :goto_0

    .line 1726
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserState"

    const-string v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 3
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1734
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    goto :goto_0

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserState"

    const-string v2, "Error sending removed printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .line 1714
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1715
    return-void
.end method

.method private handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .line 1719
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1720
    return-void
.end method

.method private handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/print/RemotePrintService;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1709
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->validatePrinters(Ljava/util/List;)V

    .line 1710
    return-void
.end method

.method public static synthetic lambda$CjemUQP8s7wG-dq-pIggj9Oze6I(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$MT8AtQ4cegoEAucY7Fm8C8TCrjo(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$Ou3LUs53hzSrIma0FHPj2g3gePc(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$Sqq0rjax7wbbY4ugrdxXopSyMNM(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$TAWPnRTK22Veu2-mmKNSJCvnBoU(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$TNeLGO1RKf0CucB-BMQ_M0UyoRs(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStopPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$_XymASnzhemmGwK4Nu5RUIT0ahk(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$iQrjLK8luujjjp1uW3VGCsAZK_g(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic lambda$lfSsgTy_1NLRRkjOH_yL2Tk_x2w(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$vhz2AcQkYu3SdMlMt9bsncMGW7E(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$y51cj-jOuPNqkjzP4R89xJuclvo(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method private removePrintersForServiceLocked(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .line 1627
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    return-void

    .line 1631
    :cond_0
    const/4 v0, 0x0

    .line 1632
    .local v0, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1633
    .local v1, "printerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1634
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 1635
    .local v3, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1636
    if-nez v0, :cond_1

    .line 1637
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1639
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    .end local v3    # "printerId":Landroid/print/PrinterId;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1642
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_5

    .line 1643
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1644
    .local v2, "removedPrinterCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 1645
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1647
    .end local v3    # "i":I
    :cond_4
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;

    invoke-static {v4, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1651
    .end local v2    # "removedPrinterCount":I
    :cond_5
    return-void
.end method


# virtual methods
.method public addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 1286
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1289
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$vhz2AcQkYu3SdMlMt9bsncMGW7E;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    .line 1292
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1290
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1294
    :cond_0
    return-void
.end method

.method public destroyLocked()V
    .locals 6

    .line 1441
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1442
    const-string v0, "UserState"

    const-string v1, "Not destroying - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-void

    .line 1445
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    .line 1447
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1448
    .local v0, "printerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1449
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1450
    .local v2, "printerId":Landroid/print/PrinterId;
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v3, v2}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1448
    .end local v2    # "printerId":Landroid/print/PrinterId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1454
    .local v1, "observerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1455
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1456
    .local v3, "token":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 1454
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1459
    .end local v2    # "i":I
    :cond_2
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TAWPnRTK22Veu2-mmKNSJCvnBoU;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TAWPnRTK22Veu2-mmKNSJCvnBoU;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    .line 1461
    invoke-static {v5}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1459
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1462
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 12
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1589
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$800(Lcom/android/server/print/UserState;)Z

    move-result v0

    const-string v1, "is_destroyed"

    const-wide v2, 0x10800000001L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1590
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 1592
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1590
    xor-int/lit8 v0, v0, 0x1

    const-string v1, "is_printer_discovery_in_progress"

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1594
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1595
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1596
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1597
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    const-wide v3, 0x20900000003L

    .line 1599
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1597
    const-string v6, "printer_discovery_observers"

    invoke-virtual {p1, v6, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 1595
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1601
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1603
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1604
    .local v1, "tokenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1605
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1606
    .local v3, "token":Landroid/os/IBinder;
    const-wide v4, 0x20900000004L

    .line 1607
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1606
    const-string v7, "discovery_requests"

    invoke-virtual {p1, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 1604
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1610
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1611
    .local v2, "trackedPrinters":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1612
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    .line 1613
    .local v4, "printer":Landroid/print/PrinterId;
    const-wide v5, 0x20b00000005L

    const-string v7, "tracked_printer_requests"

    invoke-static {p1, v7, v5, v6, v4}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 1611
    .end local v4    # "printer":Landroid/print/PrinterId;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1617
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1618
    .local v3, "printerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 1619
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 1620
    .local v5, "printer":Landroid/print/PrinterInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v6}, Lcom/android/server/print/UserState;->access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;

    move-result-object v6

    const-wide v9, 0x20b00000006L

    const-string v8, "printer"

    move-object v7, p1

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/print/DumpUtils;->writePrinterInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterInfo;)V

    .line 1618
    .end local v5    # "printer":Landroid/print/PrinterInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1623
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method public onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V
    .locals 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 1541
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1542
    const-string v0, "UserState"

    const-string v1, "Not updating printer - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return-void

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 1547
    .local v0, "printer":Landroid/print/PrinterInfo;
    if-eqz v0, :cond_1

    .line 1548
    new-instance v1, Landroid/print/PrinterInfo$Builder;

    invoke-direct {v1, v0}, Landroid/print/PrinterInfo$Builder;-><init>(Landroid/print/PrinterInfo;)V

    .line 1549
    invoke-virtual {v1}, Landroid/print/PrinterInfo$Builder;->incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterInfo$Builder;->build()Landroid/print/PrinterInfo;

    move-result-object v1

    .line 1550
    .local v1, "newPrinter":Landroid/print/PrinterInfo;
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1553
    .local v2, "addedPrinters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/print/PrinterInfo;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$y51cj-jOuPNqkjzP4R89xJuclvo;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$y51cj-jOuPNqkjzP4R89xJuclvo;

    invoke-static {v4, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1558
    .end local v1    # "newPrinter":Landroid/print/PrinterInfo;
    .end local v2    # "addedPrinters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/print/PrinterInfo;>;"
    :cond_1
    return-void
.end method

.method public onDestroyed()V
    .locals 0

    .line 1438
    return-void
.end method

.method public onPrintersAddedLocked(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 1468
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1469
    const-string v0, "UserState"

    const-string v1, "Not adding printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-void

    .line 1472
    :cond_0
    const/4 v0, 0x0

    .line 1473
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1474
    .local v1, "addedPrinterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1475
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 1476
    .local v3, "printer":Landroid/print/PrinterInfo;
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 1477
    .local v4, "oldPrinter":Landroid/print/PrinterInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1478
    :cond_1
    if-nez v0, :cond_2

    .line 1479
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 1481
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    .end local v3    # "printer":Landroid/print/PrinterInfo;
    .end local v4    # "oldPrinter":Landroid/print/PrinterInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1484
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 1485
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$lfSsgTy_1NLRRkjOH_yL2Tk_x2w;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$lfSsgTy_1NLRRkjOH_yL2Tk_x2w;

    invoke-static {v3, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1489
    :cond_5
    return-void
.end method

.method public onPrintersRemovedLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1495
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1496
    const-string v0, "UserState"

    const-string v1, "Not removing printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return-void

    .line 1499
    :cond_0
    const/4 v0, 0x0

    .line 1500
    .local v0, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1501
    .local v1, "removedPrinterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1502
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 1503
    .local v3, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1504
    if-nez v0, :cond_1

    .line 1505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1507
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    .end local v3    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1510
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1511
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$CjemUQP8s7wG-dq-pIggj9Oze6I;

    invoke-static {v3, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1515
    :cond_4
    return-void
.end method

.method public onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1565
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1566
    const-string v0, "UserState"

    const-string v1, "Not updating added service - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return-void

    .line 1570
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;->INSTANCE:Lcom/android/server/print/-$$Lambda$nSUd_Gl040MrfHGSQHSjunnnXaY;

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1573
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1574
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$gs6W8Li-g_ih6LLUIbTqHmyAoh0;->INSTANCE:Lcom/android/server/print/-$$Lambda$gs6W8Li-g_ih6LLUIbTqHmyAoh0;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1579
    .local v0, "trackedPrinterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1580
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1581
    .local v2, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1582
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;->INSTANCE:Lcom/android/server/print/-$$Lambda$qhnzLVwIUlj5cUdZ9YacT2IXyug;

    invoke-static {v4, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1579
    .end local v2    # "printerId":Landroid/print/PrinterId;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1586
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1561
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0, p1}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V

    .line 1562
    return-void
.end method

.method public onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1518
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1519
    const-string v0, "UserState"

    const-string v1, "Not updating removed service - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void

    .line 1523
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1524
    .local v0, "serviceName":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removePrintersForServiceLocked(Landroid/content/ComponentName;)V

    .line 1525
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 1526
    return-void
.end method

.method public removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 1298
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1300
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 1303
    :cond_0
    return-void
.end method

.method public final startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1307
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1308
    const-string v0, "UserState"

    const-string v1, "Not starting dicovery - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-void

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1315
    .local v0, "discoveryStarted":Z
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1320
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v1, p2}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V

    .line 1321
    return-void

    .line 1325
    :cond_1
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 1326
    return-void

    .line 1329
    :cond_2
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$MT8AtQ4cegoEAucY7Fm8C8TCrjo;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$MT8AtQ4cegoEAucY7Fm8C8TCrjo;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    .line 1331
    invoke-static {v4}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1329
    invoke-static {v2, p0, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1332
    return-void
.end method

.method public final startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 1388
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1389
    const-string v0, "UserState"

    const-string v1, "Not starting printer state tracking - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    return-void

    .line 1396
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1398
    .local v0, "containedPrinterId":Z
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    if-eqz v0, :cond_2

    .line 1401
    return-void

    .line 1404
    :cond_2
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1405
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-nez v1, :cond_3

    .line 1406
    return-void

    .line 1409
    :cond_3
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$iQrjLK8luujjjp1uW3VGCsAZK_g;

    invoke-static {v3, p0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1411
    return-void
.end method

.method public final stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 1335
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1336
    const-string v0, "UserState"

    const-string v1, "Not stopping dicovery - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1341
    return-void

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1345
    return-void

    .line 1347
    :cond_2
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TNeLGO1RKf0CucB-BMQ_M0UyoRs;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$TNeLGO1RKf0CucB-BMQ_M0UyoRs;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    .line 1349
    invoke-static {v3}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1347
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1350
    return-void
.end method

.method public final stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 1414
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1415
    const-string v0, "UserState"

    const-string v1, "Not stopping printer state tracking - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1420
    return-void

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1424
    return-void

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 1428
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-nez v0, :cond_3

    .line 1429
    return-void

    .line 1432
    :cond_3
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$_XymASnzhemmGwK4Nu5RUIT0ahk;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$_XymASnzhemmGwK4Nu5RUIT0ahk;

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1434
    return-void
.end method

.method public validatePrintersLocked(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1353
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 1354
    const-string v0, "UserState"

    const-string v1, "Not validating pritners - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void

    .line 1358
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1359
    .local v0, "remainingList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1362
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/print/PrinterId;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1363
    .local v2, "updateList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    const/4 v3, 0x0

    .line 1364
    .local v3, "serviceName":Landroid/content/ComponentName;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1365
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    .line 1366
    .local v4, "printerId":Landroid/print/PrinterId;
    if-eqz v4, :cond_2

    .line 1367
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1368
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1370
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1371
    :cond_1
    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1372
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1376
    .end local v4    # "printerId":Landroid/print/PrinterId;
    :cond_2
    :goto_2
    goto :goto_1

    .line 1378
    :cond_3
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v4}, Lcom/android/server/print/UserState;->access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/RemotePrintService;

    .line 1379
    .local v4, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v4, :cond_4

    .line 1380
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v5

    sget-object v6, Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Sqq0rjax7wbbY4ugrdxXopSyMNM;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$PrinterDiscoverySessionMediator$Sqq0rjax7wbbY4ugrdxXopSyMNM;

    invoke-static {v6, p0, v4, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1384
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/print/PrinterId;>;"
    .end local v2    # "updateList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v3    # "serviceName":Landroid/content/ComponentName;
    .end local v4    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_4
    goto :goto_0

    .line 1385
    :cond_5
    return-void
.end method
