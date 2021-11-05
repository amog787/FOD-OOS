.class Lcom/android/server/am/ActivityManagerService$GraphicsBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GraphicsBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 2553
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2554
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2555
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2560
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2561
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2564
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "gfxinfo"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 2568
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2569
    invoke-static {v0}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2565
    :cond_1
    return-void

    .line 2566
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpGraphicsHardwareUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2568
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2569
    invoke-static {v0}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2572
    :cond_3
    return-void

    .line 2568
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v2, v2, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2569
    invoke-static {v0}, Landroid/os/Process;->enableFreezer(Z)V

    .line 2571
    :cond_4
    throw v1
.end method
