.class final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserState"
.end annotation


# instance fields
.field private final mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field private final mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field private mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V
    .locals 8
    .param p2, "userId"    # I

    .line 676
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 678
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$800(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 679
    move-object v0, v1

    goto :goto_0

    .line 680
    :cond_0
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$800(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 681
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    goto :goto_1

    .line 683
    :cond_1
    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    :goto_1
    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 684
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 665
    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V

    return-void
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "serviceState"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .param p3, "name"    # Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 771
    if-eqz p2, :cond_0

    .line 772
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 773
    invoke-static {p2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$1300(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 774
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 776
    :cond_0
    monitor-exit v0

    .line 777
    return-void

    .line 776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAllServiceStatesLocked()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;",
            ">;"
        }
    .end annotation

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v0, "serviceStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;>;"
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_0

    .line 747
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_1

    .line 750
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_2

    .line 753
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_2
    return-object v0
.end method


# virtual methods
.method bindIfHasPendingRequestsLocked()V
    .locals 2

    .line 728
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 729
    .local v1, "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->access$1200(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z

    .line 730
    .end local v1    # "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    goto :goto_0

    .line 731
    :cond_0
    return-void
.end method

.method cleanupServiceLocked()V
    .locals 3

    .line 735
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 736
    .local v1, "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    iget-object v2, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    .line 739
    .end local v1    # "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    :cond_0
    goto :goto_0

    .line 740
    :cond_1
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 759
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 760
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 761
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "Default"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "System"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "Untrusted"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 765
    monitor-exit v0

    .line 766
    return-void

    .line 765
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getServiceStateLocked(Z)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .locals 8
    .param p1, "useDefaultTextClassifier"    # Z

    .line 689
    if-eqz p1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object v0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 694
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/textclassifier/-$$Lambda$ClPEOpaEGm2gFpu1r4dox0RBPf4;

    invoke-direct {v1, v0}, Lcom/android/server/textclassifier/-$$Lambda$ClPEOpaEGm2gFpu1r4dox0RBPf4;-><init>(Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 693
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 695
    .local v0, "textClassifierServicePackageOverride":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 696
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$800(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object v1

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1000(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_2

    .line 701
    return-object v1

    .line 703
    :cond_2
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-nez v1, :cond_3

    .line 704
    new-instance v7, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 710
    :cond_3
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object v1

    .line 712
    :cond_4
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    :goto_0
    return-object v1
.end method

.method onTextClassifierServicePackageOverrideChangedLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "overriddenPackageName"    # Ljava/lang/String;

    .line 720
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 721
    .local v1, "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    invoke-virtual {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->unbindIfBoundLocked()V

    .line 722
    .end local v1    # "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    goto :goto_0

    .line 723
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 724
    return-void
.end method
