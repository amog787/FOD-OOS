.class final Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisabledInfoCache"
.end annotation


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    .line 899
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    return-void
.end method

.method private getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    .locals 3
    .param p1, "userId"    # I

    .line 974
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 975
    .local v0, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-nez v0, :cond_0

    .line 976
    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;-><init>(Lcom/android/server/autofill/AutofillManagerService$1;)V

    move-object v0, v1

    .line 977
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 979
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledActivityLocked(ILandroid/content/ComponentName;J)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "expiration"    # J

    .line 920
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    nop

    .line 923
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object v1

    .line 924
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableActivityLocked(Landroid/content/ComponentName;J)V

    .line 925
    .end local v1    # "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addDisabledAppLocked(ILjava/lang/String;J)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "expiration"    # J

    .line 910
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    nop

    .line 913
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getOrCreateAutofillDisabledInfoByUserIdLocked(I)Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    move-result-object v1

    .line 914
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->putDisableAppsLocked(Ljava/lang/String;J)V

    .line 915
    .end local v1    # "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    monitor-exit v0

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(ILjava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 963
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 965
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {v1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 968
    .end local v1    # "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    :cond_0
    monitor-exit v0

    .line 969
    return-void

    .line 968
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAppDisabledActivities(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 952
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 957
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 958
    .local v1, "disabledList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    monitor-exit v0

    .line 959
    return-object v1

    .line 958
    .end local v1    # "disabledList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAppDisabledExpiration(ILjava/lang/String;)J
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 940
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 944
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->getAppDisabledExpirationLocked(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .line 945
    .local v1, "expiration":Ljava/lang/Long;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 945
    .end local v1    # "expiration":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method isAutofillDisabledLocked(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 930
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;

    .line 934
    .local v1, "info":Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->isAutofillDisabledLocked(Landroid/content/ComponentName;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 935
    .local v1, "disabled":Z
    monitor-exit v0

    .line 936
    return v1

    .line 935
    .end local v1    # "disabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method remove(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 903
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 905
    monitor-exit v0

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
