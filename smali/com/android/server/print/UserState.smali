.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
.implements Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$ListenerRecord;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UserState"

.field private static final SERVICE_RESTART_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mDisabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInstantServiceAllowed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field private mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/printservice/recommendation/IRecommendationsChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

.field private mPrintServicesChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/print/UserState$ListenerRecord<",
            "Landroid/print/IPrintServicesChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field private final mQueryIntent:Landroid/content/Intent;

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "lowPriority"    # Z

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 125
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    .line 128
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 165
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 166
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 167
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 168
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {v0, p1, p2, p4, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 170
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 172
    invoke-direct {p0}, Lcom/android/server/print/UserState;->upgradePersistentStateIfNeeded()V

    .line 173
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 179
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    .line 180
    return-void

    .line 174
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$102(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/UserState;
    .param p1, "x1"    # Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 102
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/print/UserState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/UserState;
    .param p1, "x1"    # Lcom/android/server/print/RemotePrintService;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/print/UserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .line 102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1071
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1075
    :cond_0
    return-void
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .line 1093
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$HoM_sy_T_4RiQGYcbixewHZ2IMA;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1097
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    .line 1099
    :goto_0
    return-void
.end method

.method private failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .line 1102
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v1, -0x4

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v0

    .line 1104
    .local v0, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v0, :cond_0

    .line 1105
    return-void

    .line 1107
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1109
    .local v1, "identity":J
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1110
    .local v3, "printJobCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1111
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    .line 1112
    .local v5, "printJob":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    const/4 v8, 0x6

    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v10, 0x104060c

    .line 1113
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1112
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    nop

    .end local v5    # "printJob":Landroid/print/PrintJobInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1116
    .end local v3    # "printJobCount":I
    .end local v4    # "i":I
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    nop

    .line 1118
    return-void

    .line 1116
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getInstalledComponents()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v0, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1002
    .local v1, "installedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1003
    iget-object v3, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1004
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1010
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appIdSupplier"    # Ljava/util/function/IntSupplier;

    .line 1128
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    .line 1130
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1131
    :try_start_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1132
    monitor-exit v1

    return-void

    .line 1134
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1135
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1137
    .local v1, "recordCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1138
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 1139
    .local v4, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget v5, v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    iget v5, v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    if-ne v5, v0, :cond_2

    .line 1142
    :cond_1
    :try_start_1
    iget-object v5, v4, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v5, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1145
    goto :goto_1

    .line 1143
    :catch_0
    move-exception v5

    .line 1144
    .local v5, "re":Landroid/os/RemoteException;
    const-string v6, "UserState"

    const-string v7, "Error notifying for print job state change"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    .end local v4    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1148
    .end local v3    # "i":I
    :cond_3
    return-void

    .line 1135
    .end local v1    # "recordCount":I
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1173
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1175
    monitor-exit v0

    return-void

    .line 1177
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1179
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 1180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1182
    .local v0, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1183
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1186
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :try_start_1
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v4}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->onRecommendationsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1189
    goto :goto_1

    .line 1187
    :catch_0
    move-exception v4

    .line 1188
    .local v4, "re":Landroid/os/RemoteException;
    const-string v5, "UserState"

    const-string v6, "Error notifying for print service recommendations change"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1191
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 1180
    .end local v0    # "recordCount":I
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleDispatchPrintServicesChanged()V
    .locals 7

    .line 1152
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1154
    monitor-exit v0

    return-void

    .line 1156
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1159
    .local v0, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1160
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 1163
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :try_start_1
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintServicesChangeListener;->onPrintServicesChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1166
    goto :goto_1

    .line 1164
    :catch_0
    move-exception v4

    .line 1165
    .local v4, "re":Landroid/os/RemoteException;
    const-string v5, "UserState"

    const-string v6, "Error notifying for print services change"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1168
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 1157
    .end local v0    # "recordCount":I
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$HoM_sy_T_4RiQGYcbixewHZ2IMA(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$LdWYUAKz4cbWqoxOD4oZ_ZslKdg(Lcom/android/server/print/UserState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/UserState;->handleDispatchPrintServicesChanged()V

    return-void
.end method

.method public static synthetic lambda$d-WQxYwbHYb6N0le5ohwQsWVdjw(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static synthetic lambda$f3loorfBpq9Tu3Vl5vt4Ul321ok(Lcom/android/server/print/UserState;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->handleDispatchPrintServiceRecommendationsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$lM4y7oOfdlEk7JJ3u_zy-rL_-YI(Lcom/android/server/print/UserState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChanged()V

    return-void
.end method

.method private onConfigurationChanged()V
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 1196
    monitor-exit v0

    .line 1197
    return-void

    .line 1196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onConfigurationChangedLocked()V
    .locals 11

    .line 1035
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v0

    .line 1037
    .local v0, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1038
    .local v1, "installedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1039
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1041
    .local v3, "serviceName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1042
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1043
    new-instance v10, Lcom/android/server/print/RemotePrintService;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v4, v10

    move-object v6, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 1045
    .local v4, "service":Lcom/android/server/print/RemotePrintService;
    invoke-direct {p0, v4}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1046
    .end local v4    # "service":Lcom/android/server/print/RemotePrintService;
    goto :goto_1

    .line 1048
    :cond_0
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/RemotePrintService;

    .line 1049
    .restart local v4    # "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v4, :cond_1

    .line 1050
    invoke-direct {p0, v4}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1038
    .end local v3    # "serviceName":Landroid/content/ComponentName;
    .end local v4    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 1056
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1057
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1058
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1059
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1060
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/print/RemotePrintService;

    .line 1061
    .local v5, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1062
    invoke-direct {p0, v5}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 1063
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1065
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    .end local v5    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_3
    goto :goto_2

    .line 1067
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->onPrintServicesChanged()V

    .line 1068
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 0

    .line 874
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()V

    .line 875
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readDisabledPrintServicesLocked()V

    .line 876
    return-void
.end method

.method private readDisabledPrintServicesLocked()V
    .locals 2

    .line 949
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 950
    .local v0, "tempDisabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v1, "disabled_print_services"

    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 952
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 954
    iget-object v1, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 956
    :cond_0
    return-void
.end method

.method private readInstalledPrintServicesLocked()V
    .locals 11

    .line 879
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 881
    .local v0, "tempPrintServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/printservice/PrintServiceInfo;>;"
    const v1, 0x10000084

    .line 883
    .local v1, "queryIntentFlags":I
    iget-boolean v2, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    if-eqz v2, :cond_0

    .line 884
    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    .line 887
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 888
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 890
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 891
    .local v3, "installedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v3

    .local v5, "count":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 892
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 893
    .local v6, "installedService":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_PRINT_SERVICE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 895
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    .local v7, "serviceName":Landroid/content/ComponentName;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping print service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " since it does not require permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 898
    const-string v9, "UserState"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    goto :goto_1

    .line 904
    .end local v7    # "serviceName":Landroid/content/ComponentName;
    :cond_1
    iget-object v7, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 891
    .end local v6    # "installedService":Landroid/content/pm/ResolveInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 907
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 908
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 909
    return-void
.end method

.method private readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 960
    .local p2, "outServiceNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "settingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 963
    iget-object v1, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 964
    .local v1, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 965
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, "string":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 968
    goto :goto_0

    .line 970
    :cond_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 971
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_1

    .line 972
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 974
    .end local v2    # "string":Ljava/lang/String;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 976
    .end local v1    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_2
    return-void
.end method

.method private removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1079
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 1081
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 1087
    :goto_0
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .locals 2

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 1124
    return-void

    .line 1122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private upgradePersistentStateIfNeeded()V
    .locals 8

    .line 915
    iget-object v0, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/print/UserState;->mUserId:I

    const-string v2, "enabled_print_services"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "enabledSettingValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 921
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 922
    .local v1, "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0, v2, v1}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 925
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 926
    .local v3, "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 927
    .local v4, "numInstalledServices":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 928
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v6}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 929
    .local v6, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 930
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v6    # "serviceName":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 934
    .end local v5    # "i":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 938
    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v5, v2, v6, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 941
    .end local v1    # "enabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v3    # "disabledServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v4    # "numInstalledServices":I
    :cond_2
    return-void
.end method

.method private writeDisabledPrintServicesLocked(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 982
    .local p1, "disabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 984
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 985
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 987
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .end local v2    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 989
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 989
    const-string v4, "disabled_print_services"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 991
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 561
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 648
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 651
    new-instance v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 653
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 605
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 606
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .locals 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 340
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 341
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_0

    .line 342
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 348
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 349
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    .line 351
    .local v1, "printerId":Landroid/print/PrinterId;
    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    .line 353
    .local v2, "printServiceName":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 354
    .local v3, "printService":Lcom/android/server/print/RemotePrintService;
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 355
    :try_start_0
    iget-object v5, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/print/RemotePrintService;

    move-object v3, v5

    .line 356
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-nez v3, :cond_1

    .line 358
    return-void

    .line 360
    :cond_1
    invoke-virtual {v3, v0}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 362
    .end local v1    # "printerId":Landroid/print/PrinterId;
    .end local v2    # "printServiceName":Landroid/content/ComponentName;
    .end local v3    # "printService":Lcom/android/server/print/RemotePrintService;
    :cond_2
    :goto_0
    goto :goto_1

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 367
    :goto_1
    return-void
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 448
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->clearCustomPrinterIconCache()V

    .line 450
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 453
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_0

    .line 455
    new-instance v1, Lcom/android/server/print/UserState$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;)V

    iput-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 462
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 467
    :goto_0
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroyLocked()V
    .locals 2

    .line 799
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 800
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 801
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 802
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 803
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 805
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 806
    iget-object v0, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 807
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 811
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 812
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 471
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_0

    .line 474
    monitor-exit v0

    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 478
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 13
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 815
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    const-string/jumbo v1, "user_id"

    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 818
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 819
    .local v1, "installedServiceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 820
    const-string v3, "installed_services"

    const-wide v4, 0x20b00000002L

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 822
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/printservice/PrintServiceInfo;

    .line 824
    .local v5, "installedService":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 825
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v7, "component_name"

    const-wide v8, 0x10b00000001L

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 830
    const-string/jumbo v7, "settings_activity"

    const-wide v8, 0x10900000002L

    .line 832
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v10

    .line 830
    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 833
    const-string v7, "add_printers_activity"

    const-wide v8, 0x10900000003L

    .line 835
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v10

    .line 833
    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 836
    const-string v7, "advanced_options_activity"

    const-wide v8, 0x10900000004L

    .line 838
    invoke-virtual {v5}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v10

    .line 836
    invoke-static {p1, v7, v8, v9, v10}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 840
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 819
    .end local v3    # "token":J
    .end local v5    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 843
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 844
    .local v3, "disabledService":Landroid/content/ComponentName;
    const-string v4, "disabled_services"

    const-wide v5, 0x20b00000003L

    invoke-static {p1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 846
    .end local v3    # "disabledService":Landroid/content/ComponentName;
    goto :goto_1

    .line 848
    :cond_1
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 849
    .local v2, "activeServiceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 850
    const-string v4, "actives_services"

    const-wide v5, 0x20b00000004L

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v4

    .line 852
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/print/RemotePrintService;

    invoke-virtual {v6, p1}, Lcom/android/server/print/RemotePrintService;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 853
    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 849
    .end local v4    # "token":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 856
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 858
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v3, :cond_3

    .line 859
    const-string v3, "discovery_service"

    const-wide v4, 0x20b00000006L

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 861
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v5, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 862
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 865
    .end local v1    # "installedServiceCount":I
    .end local v2    # "activeServiceCount":I
    .end local v3    # "token":J
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    const-wide v0, 0x10b00000007L

    const-string/jumbo v2, "print_spooler_state"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 869
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2, p1}, Lcom/android/server/print/RemotePrintSpooler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 870
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 871
    return-void

    .line 865
    .end local v0    # "token":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBindInstantServiceAllowed()Z
    .locals 1

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    return v0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 327
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1}, Lcom/android/server/print/RemotePrintSpooler;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 329
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    if-nez v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 331
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 336
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_0
    return-object v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 2
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 304
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 305
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 308
    :cond_0
    if-eqz v0, :cond_1

    .line 311
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 314
    :cond_1
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .locals 9
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "cachedPrintJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 275
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrintJobId;Landroid/print/PrintJobInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 276
    .local v2, "cachedPrintJobCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    .line 277
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    .line 278
    .local v5, "cachedPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v5, v4}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v5, v4}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 276
    .end local v5    # "cachedPrintJob":Landroid/print/PrintJobInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v3

    .line 288
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v3, :cond_1

    .line 289
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 290
    .local v5, "printJobCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 291
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/print/PrintJobInfo;

    .line 292
    .local v7, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {v7, v4}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v7, v4}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 290
    .end local v7    # "printJob":Landroid/print/PrintJobInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 300
    .end local v5    # "printJobCount":I
    .end local v6    # "i":I
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method

.method public getPrintServiceRecommendations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    return-object v0
.end method

.method public getPrintServices(I)Ljava/util/List;
    .locals 8
    .param p1, "selectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 381
    .local v2, "installedServiceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 382
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 384
    .local v4, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    .line 385
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 386
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .local v5, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/printservice/PrintServiceInfo;->setIsEnabled(Z)V

    .line 391
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 392
    and-int/lit8 v6, p1, 0x1

    if-nez v6, :cond_1

    .line 393
    goto :goto_1

    .line 396
    :cond_0
    and-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_1

    .line 397
    goto :goto_1

    .line 401
    :cond_1
    if-nez v1, :cond_2

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 404
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v4    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return-object v1

    .line 407
    .end local v1    # "selectedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v2    # "installedServiceCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public increasePriority()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->increasePriority()V

    .line 184
    return-void
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "printService"    # Landroid/content/ComponentName;

    .line 207
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 209
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 210
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 214
    :cond_0
    return-void

    .line 210
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .line 752
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 758
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_0

    .line 759
    monitor-exit v0

    return-void

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V

    .line 762
    monitor-exit v0

    .line 763
    return-void

    .line 762
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 6
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 189
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 191
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    .line 192
    .local v1, "printServiceName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    move-object v1, v2

    .line 193
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v5, 0x104060c

    .line 200
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 202
    :goto_0
    return-void

    .line 193
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 4
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 699
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 700
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$d-WQxYwbHYb6N0le5ohwQsWVdjw;

    .line 702
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    .line 703
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v3

    .line 700
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    return-void
.end method

.method public onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 713
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$f3loorfBpq9Tu3Vl5vt4Ul321ok;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$f3loorfBpq9Tu3Vl5vt4Ul321ok;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    return-void
.end method

.method public onPrintServicesChanged()V
    .locals 2

    .line 707
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/print/-$$Lambda$UserState$LdWYUAKz4cbWqoxOD4oZ_ZslKdg;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$LdWYUAKz4cbWqoxOD4oZ_ZslKdg;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 720
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 723
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    monitor-exit v0

    return-void

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1

    .line 728
    monitor-exit v0

    return-void

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V

    .line 731
    monitor-exit v0

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 736
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 739
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    monitor-exit v0

    return-void

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1

    .line 744
    monitor-exit v0

    return-void

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V

    .line 747
    monitor-exit v0

    .line 748
    return-void

    .line 747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 767
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 770
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    monitor-exit v0

    return-void

    .line 774
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 775
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 777
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/print/-$$Lambda$UserState$lM4y7oOfdlEk7JJ3u_zy-rL_-YI;->INSTANCE:Lcom/android/server/print/-$$Lambda$UserState$lM4y7oOfdlEk7JJ3u_zy-rL_-YI;

    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 785
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1

    .line 786
    monitor-exit v0

    return-void

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 789
    monitor-exit v0

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I

    .line 224
    move-object/from16 v1, p0

    move/from16 v2, p5

    const-string v0, "android.print.intent.extra.EXTRA_PRINT_JOB"

    new-instance v3, Landroid/print/PrintJobInfo;

    invoke-direct {v3}, Landroid/print/PrintJobInfo;-><init>()V

    .line 225
    .local v3, "printJob":Landroid/print/PrintJobInfo;
    new-instance v4, Landroid/print/PrintJobId;

    invoke-direct {v4}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v3, v4}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 226
    invoke-virtual {v3, v2}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 227
    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 228
    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    .line 229
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 230
    invoke-virtual {v3, v6}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 234
    iget-object v6, v1, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface/range {p2 .. p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 237
    return-object v7

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 242
    .local v8, "identity":J
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.print.PRINT_DIALOG"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "printjob"

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v11

    invoke-virtual {v11}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 244
    const-string v7, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    invoke-interface/range {p2 .. p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 245
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    const-string v7, "android.intent.extra.PACKAGE_NAME"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p4

    :try_start_1
    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v11, v1, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v14, 0x54000000

    const/4 v15, 0x0

    new-instance v7, Landroid/os/UserHandle;

    iget v13, v1, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v7, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-object v13, v6

    move-object/from16 v16, v7

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 251
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    .line 253
    .local v7, "intentSender":Landroid/content/IntentSender;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v11, "result":Landroid/os/Bundle;
    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    const-string v0, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    nop

    .line 259
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    return-object v11

    .line 259
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "intentSender":Landroid/content/IntentSender;
    .end local v11    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v10, p4

    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public prunePrintServices()V
    .locals 4

    .line 1019
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->getInstalledComponents()Ljava/util/ArrayList;

    move-result-object v1

    .line 1023
    .local v1, "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    .line 1024
    .local v2, "disabledServicesUninstalled":Z
    if-eqz v2, :cond_0

    .line 1025
    iget-object v3, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, v3}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 1027
    .end local v2    # "disabledServicesUninstalled":Z
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0, v1}, Lcom/android/server/print/RemotePrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 1032
    return-void

    .line 1027
    .end local v1    # "installedComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeObsoletePrintJobs()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    .line 218
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;

    .line 580
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 582
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 583
    monitor-exit v0

    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 586
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 587
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 588
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 589
    .local v3, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget-object v4, v3, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    invoke-virtual {v3}, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->destroy()V

    .line 591
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 592
    goto :goto_1

    .line 586
    .end local v3    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 596
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 598
    .end local v1    # "recordCount":I
    :cond_3
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 671
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 673
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 674
    monitor-exit v0

    return-void

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 677
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 678
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 679
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 680
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    invoke-interface {v4}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/printservice/recommendation/IRecommendationsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 682
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 683
    goto :goto_1

    .line 677
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/printservice/recommendation/IRecommendationsChangeListener;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 687
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 689
    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendations:Ljava/util/List;

    .line 691
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-virtual {v3}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 692
    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsService:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 694
    .end local v1    # "recordCount":I
    :cond_3
    monitor-exit v0

    .line 695
    return-void

    .line 694
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;

    .line 623
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 625
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    if-nez v1, :cond_0

    .line 626
    monitor-exit v0

    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 629
    .local v1, "recordCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 630
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 631
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState$ListenerRecord;

    .line 632
    .local v3, "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    iget-object v4, v3, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    check-cast v4, Landroid/print/IPrintServicesChangeListener;

    invoke-interface {v4}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/print/IPrintServicesChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 633
    invoke-virtual {v3}, Lcom/android/server/print/UserState$ListenerRecord;->destroy()V

    .line 634
    iget-object v4, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 635
    goto :goto_1

    .line 629
    .end local v3    # "record":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<Landroid/print/IPrintServicesChangeListener;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "i":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 639
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 641
    .end local v1    # "recordCount":I
    :cond_3
    monitor-exit v0

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .locals 4
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 371
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 375
    return-void

    .line 372
    :cond_1
    :goto_0
    return-void
.end method

.method public setBindInstantServiceAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .line 1204
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/print/UserState;->mIsInstantServiceAllowed:Z

    .line 1207
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 1208
    monitor-exit v0

    .line 1209
    return-void

    .line 1208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z

    .line 411
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, "isChanged":Z
    if-eqz p2, :cond_0

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    goto :goto_1

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 418
    .local v2, "numServices":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 419
    iget-object v4, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 421
    .local v4, "service":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 422
    iget-object v5, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v1, 0x1

    .line 424
    goto :goto_1

    .line 418
    .end local v4    # "service":Landroid/printservice/PrintServiceInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v2    # "numServices":I
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 430
    iget-object v2, p0, Lcom/android/server/print/UserState;->mDisabledServices:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/server/print/UserState;->writeDisabledPrintServicesLocked(Ljava/util/Set;)V

    .line 432
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/16 v3, 0x1ff

    .line 433
    if-eqz p2, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    .line 432
    :goto_2
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 435
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 437
    .end local v1    # "isChanged":Z
    :cond_4
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 2
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

    .line 483
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 487
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_0

    .line 488
    monitor-exit v0

    return-void

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 526
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 529
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    monitor-exit v0

    return-void

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1

    .line 534
    monitor-exit v0

    return-void

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 497
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 501
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_0

    .line 502
    monitor-exit v0

    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 506
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 542
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 545
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    monitor-exit v0

    return-void

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1

    .line 550
    monitor-exit v0

    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 554
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateIfNeededLocked()V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 794
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()V

    .line 795
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 796
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 510
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 513
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    monitor-exit v0

    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v1, :cond_1

    .line 518
    monitor-exit v0

    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
