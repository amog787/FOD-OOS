.class public Lcom/android/server/LocationManagerService$UpdateRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateRecord"
.end annotation


# instance fields
.field private mIsForegroundUid:Z

.field private mLastFixBroadcast:Landroid/location/Location;

.field private mLastStatusBroadcast:J

.field final mProvider:Ljava/lang/String;

.field private final mRealRequest:Landroid/location/LocationRequest;

.field protected final mReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field mRequest:Landroid/location/LocationRequest;

.field private mStackTrace:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/location/LocationRequest;
    .param p4, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    .line 2538
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2539
    iput-object p2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 2540
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    .line 2541
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2542
    iput-object p4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2543
    nop

    .line 2544
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4100(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 2543
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4200(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2546
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p4, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v0, v0, Lcom/android/server/location/CallerIdentity;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2547
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    .line 2550
    :cond_0
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2551
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-nez v0, :cond_1

    .line 2552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 2553
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2556
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2561
    :cond_2
    const-string v1, "gps"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2562
    iget-object v1, p4, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v1, v2, v2, v2}, Lcom/android/server/am/OpBGFrozenInjector;->updateLocationReceiverUidsChange(IZZZ)V

    goto :goto_0

    .line 2564
    :cond_3
    iget-object v1, p4, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v1, v1, Lcom/android/server/location/CallerIdentity;->mUid:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Lcom/android/server/am/OpBGFrozenInjector;->updateLocationReceiverUidsChange(IZZZ)V

    .line 2569
    :goto_0
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v5, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2570
    invoke-virtual {p3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2569
    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/LocationRequestStatistics;->startRequesting(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 2572
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/location/LocationRequest;
    .param p4, "x3"    # Lcom/android/server/LocationManagerService$Receiver;
    .param p5, "x4"    # Lcom/android/server/LocationManagerService$1;

    .line 2518
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2518
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"    # Z

    .line 2518
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2518
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"    # Z

    .line 2518
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2518
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"    # Landroid/location/Location;

    .line 2518
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2518
    iget-wide v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    return-wide v0
.end method

.method static synthetic access$5102(Lcom/android/server/LocationManagerService$UpdateRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p1, "x1"    # J

    .line 2518
    iput-wide p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    return-wide p1
.end method

.method private disposeLocked(Z)V
    .locals 10
    .param p1, "removeReceiver"    # Z

    .line 2587
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2588
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/location/LocationRequestStatistics;->stopRequesting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$4500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationUsageLogger;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2595
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v6

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2596
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v7

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    .line 2598
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$4100(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v9

    .line 2590
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2601
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2602
    .local v1, "globalRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_0

    .line 2603
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2608
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2609
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v2, v4, v3, v3}, Lcom/android/server/am/OpBGFrozenInjector;->updateLocationReceiverUidsChange(IZZZ)V

    goto :goto_0

    .line 2611
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v2, v4, v3, v4}, Lcom/android/server/am/OpBGFrozenInjector;->updateLocationReceiverUidsChange(IZZZ)V

    .line 2615
    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 2618
    :cond_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2619
    .local v2, "receiverRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2622
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2623
    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-static {v3, v4}, Lcom/android/server/LocationManagerService;->access$3600(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2625
    :cond_3
    return-void
.end method

.method private updateForeground(Z)V
    .locals 3
    .param p1, "isForeground"    # Z

    .line 2578
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    .line 2579
    iget-object v0, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/location/LocationRequestStatistics;->updateForeground(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2581
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 2629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateRecord["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v2, v2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v2, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2633
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eqz v2, :cond_0

    .line 2634
    const-string v2, " foreground"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2636
    :cond_0
    const-string v2, " background"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    :goto_0
    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2641
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2642
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2643
    .local v1, "tmp":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mStackTrace:Ljava/lang/Throwable;

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2644
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    .end local v1    # "tmp":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
