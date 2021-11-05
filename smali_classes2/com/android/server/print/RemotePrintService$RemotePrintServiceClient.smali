.class final Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
.super Landroid/printservice/IPrintServiceClient$Stub;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemotePrintServiceClient"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 681
    invoke-direct {p0}, Landroid/printservice/IPrintServiceClient$Stub;-><init>()V

    .line 682
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 683
    return-void
.end method

.method private throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .line 848
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    return-void

    .line 849
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid printer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 831
    .local p2, "printerInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 832
    .local v0, "printerInfoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 833
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v2

    .line 834
    .local v2, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 832
    .end local v2    # "printerId":Landroid/print/PrinterId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 836
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 3
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 840
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 841
    .local v0, "printerIdCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 842
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 843
    .local v2, "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p1, v2}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdTampered(Landroid/content/ComponentName;Landroid/print/PrinterId;)V

    .line 841
    .end local v2    # "printerId":Landroid/print/PrinterId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    .locals 5
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .line 702
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 703
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 706
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, p1, v4}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    return-object v3

    .line 709
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    throw v3

    .line 712
    .end local v1    # "identity":J
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPrintJobInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 688
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 691
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, -0x4

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    return-object v3

    .line 694
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    throw v3

    .line 697
    .end local v1    # "identity":J
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 4
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 857
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 860
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    goto :goto_0

    .line 862
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    throw v3

    .line 865
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printers"    # Landroid/content/pm/ParceledListSlice;

    .line 800
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 801
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 803
    .local v1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsForPrinterInfoTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 806
    .local v2, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersAdded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    goto :goto_0

    .line 808
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    throw v4

    .line 811
    .end local v1    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .locals 5
    .param p1, "printerIds"    # Landroid/content/pm/ParceledListSlice;

    .line 816
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 817
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 819
    .local v1, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->throwIfPrinterIdsTampered(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 822
    .local v2, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onPrintersRemoved(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    goto :goto_0

    .line 824
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    throw v4

    .line 827
    .end local v1    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v2    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "state"    # I
    .param p3, "error"    # Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 718
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 721
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    return v3

    .line 723
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    throw v3

    .line 726
    .end local v1    # "identity":J
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "tag"    # Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 732
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 735
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 735
    return v3

    .line 737
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    throw v3

    .line 740
    .end local v1    # "identity":J
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setProgress(Landroid/print/PrintJobId;F)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "progress"    # F

    .line 759
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 760
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 763
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    goto :goto_0

    .line 765
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    throw v3

    .line 768
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # Ljava/lang/CharSequence;

    .line 772
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 773
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 776
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    goto :goto_0

    .line 778
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    throw v3

    .line 781
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "status"    # I
    .param p3, "appPackageName"    # Ljava/lang/CharSequence;

    .line 786
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 787
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 790
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler;->setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    goto :goto_0

    .line 792
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    throw v3

    .line 795
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "printJobId"    # Landroid/print/PrintJobId;

    .line 745
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 746
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_0

    .line 747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 749
    .local v1, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    goto :goto_0

    .line 751
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 752
    throw v3

    .line 754
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method
