.class final Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutofillCompatState"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mUserSpecs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/PrintWriter;

    .line 852
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 940
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 942
    const-string v1, "N/A"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    monitor-exit v0

    return-void

    .line 945
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "prefix2":Ljava/lang/String;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 948
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 949
    .local v4, "user":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    const-string v5, "User: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 952
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 953
    .local v5, "perUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    move v6, v2

    .local v6, "j":I
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 954
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 955
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 956
    .local v8, "state":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, ": "

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 953
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "state":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 947
    .end local v4    # "user":I
    .end local v5    # "perUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 959
    .end local v1    # "prefix2":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 960
    return-void

    .line 959
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "urlBarResourceIds"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .line 899
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 901
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 904
    .local v1, "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    if-nez v1, :cond_1

    .line 905
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 906
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v2, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 908
    :cond_1
    new-instance v2, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    invoke-direct {v2, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;-><init>(J[Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    nop

    .end local v1    # "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    monitor-exit v0

    .line 911
    return-void

    .line 910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUrlBarResourceIds(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 881
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 883
    monitor-exit v0

    return-object v2

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 886
    .local v1, "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    if-nez v1, :cond_1

    .line 887
    monitor-exit v0

    return-object v2

    .line 889
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 890
    .local v3, "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    if-nez v3, :cond_2

    .line 891
    monitor-exit v0

    return-object v2

    .line 893
    :cond_2
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->access$1100(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)[Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 894
    .end local v1    # "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    .end local v3    # "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCompatibilityModeRequested(Ljava/lang/String;JI)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I

    .line 863
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 865
    monitor-exit v0

    return v2

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 868
    .local v1, "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    if-nez v1, :cond_1

    .line 869
    monitor-exit v0

    return v2

    .line 871
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 872
    .local v3, "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    if-nez v3, :cond_2

    .line 873
    monitor-exit v0

    return v2

    .line 875
    :cond_2
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->access$1000(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-gtz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    monitor-exit v0

    return v2

    .line 876
    .end local v1    # "userSpec":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;>;"
    .end local v3    # "metadata":Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCompatibilityModeRequests(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 914
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 917
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 918
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    .line 921
    :cond_0
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reset(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 925
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    .line 927
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 928
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 929
    .local v1, "newSize":I
    if-nez v1, :cond_1

    .line 930
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "AutofillManagerService"

    const-string/jumbo v3, "reseting mUserSpecs"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->mUserSpecs:Landroid/util/SparseArray;

    goto :goto_0

    .line 933
    :cond_1
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2

    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserSpecs down to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .end local v1    # "newSize":I
    :cond_2
    :goto_0
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
