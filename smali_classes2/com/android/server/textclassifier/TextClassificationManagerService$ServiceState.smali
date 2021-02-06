.class final Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;
    }
.end annotation


# static fields
.field private static final MAX_PENDING_REQUESTS:I = 0x14


# instance fields
.field final mBindServiceFlags:I

.field mBinding:Z

.field mBoundComponentName:Landroid/content/ComponentName;

.field mBoundServiceUid:I

.field final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

.field final mIsTrusted:Z

.field final mPackageName:Ljava/lang/String;

.field final mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/textclassifier/FixedSizeQueue<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/service/textclassifier/ITextClassifierService;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V
    .locals 2
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isTrusted"    # Z

    .line 815
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    new-instance p1, Lcom/android/server/textclassifier/FixedSizeQueue;

    sget-object v0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;->INSTANCE:Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$ServiceState$Ru4OqAzKjHDptCmD7leHW9n8GIw;

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0}, Lcom/android/server/textclassifier/FixedSizeQueue;-><init>(ILcom/android/server/textclassifier/FixedSizeQueue$OnEntryEvictedListener;)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 808
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    .line 811
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 816
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 817
    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 818
    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-direct {p1, p0, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    .line 819
    iput-boolean p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    .line 820
    invoke-direct {p0, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->createBindServiceFlags(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    .line 821
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;ZLcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    .line 780
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 780
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindIfHasPendingRequestsLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 780
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILandroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/ComponentName;

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->updateServiceInfoLocked(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 780
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->handlePendingRequestsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 780
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 780
    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindIfHasPendingRequestsLocked()Z
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private bindLocked()Z
    .locals 9

    .line 880
    const-string v0, "TextClassificationManagerService"

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 888
    .local v1, "identity":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->getTextClassifierServiceComponent()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 891
    const/4 v0, 0x0

    .line 903
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 891
    return v0

    .line 893
    :cond_1
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 895
    .local v4, "serviceIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1900(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    iget v7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    iget v8, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 897
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 896
    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    .line 898
    .local v5, "willBind":Z
    if-nez v5, :cond_2

    .line 899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not bind to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 904
    nop

    .line 905
    return v5

    .line 903
    .end local v5    # "willBind":Z
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 904
    throw v0

    .line 881
    .end local v1    # "identity":J
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkRequestAcceptedLocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "requestUid"    # I
    .param p2, "methodName"    # Ljava/lang/String;

    .line 932
    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "[%s] Non-default TextClassifierServices may only see text from the same uid."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextClassificationManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return v1

    .line 933
    :cond_1
    :goto_0
    return v1
.end method

.method private createBindServiceFlags(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 825
    const v0, 0x4000001

    .line 826
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$800(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 829
    :cond_0
    return v0
.end method

.method private dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 917
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1900(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 918
    iget v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 919
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 920
    :try_start_0
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 921
    const-string v1, "boundComponentName"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 922
    const-string v1, "isTrusted"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 923
    const-string v1, "bindServiceFlags"

    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 924
    const-string v1, "boundServiceUid"

    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 925
    const-string v1, "binding"

    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 926
    const-string v1, "numOfPendingRequests"

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v2}, Lcom/android/server/textclassifier/FixedSizeQueue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 927
    monitor-exit v0

    .line 928
    return-void

    .line 927
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTextClassifierServiceComponent()Landroid/content/ComponentName;
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 911
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1900(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 913
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x100000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 910
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private handlePendingRequestsLocked()V
    .locals 3

    .line 840
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    move-object v1, v0

    .local v1, "request":Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;
    if-eqz v0, :cond_4

    .line 841
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1400(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)I

    move-result v0

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1500(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    return-void

    .line 845
    :cond_1
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1600(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 847
    :cond_2
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1700(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind TextClassifierService for PendingRequest "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1500(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 848
    const-string v2, "TextClassificationManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1700(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 854
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1800(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1800(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 858
    :cond_4
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V
    .locals 3
    .param p0, "request"    # Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 797
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 798
    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1500(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Pending request[%s] is dropped"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 797
    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1700(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->access$1700(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 802
    :cond_0
    return-void
.end method

.method private updateServiceInfoLocked(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 943
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    .line 944
    nop

    .line 945
    if-nez p2, :cond_0

    .line 946
    const/4 v0, -0x1

    goto :goto_0

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$2000(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 948
    return-void
.end method


# virtual methods
.method isBoundLocked()Z
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method unbindIfBoundLocked()V
    .locals 2

    .line 867
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbinding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextClassificationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1900(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 870
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->cleanupService()V

    .line 872
    :cond_0
    return-void
.end method
