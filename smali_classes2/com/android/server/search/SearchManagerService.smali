.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;,
        Lcom/android/server/search/SearchManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mSearchables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/search/Searchables;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 108
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 110
    new-instance v0, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;-><init>(Lcom/android/server/search/SearchManagerService;Landroid/content/ContentResolver;)V

    .line 111
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/search/SearchManagerService;->mHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/search/SearchManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/search/SearchManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .line 61
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSearchables(I)Lcom/android/server/search/Searchables;
    .locals 1
    .param p1, "userId"    # I

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method private getSearchables(IZ)Lcom/android/server/search/Searchables;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "forceUpdate"    # Z

    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 121
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 122
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    .line 129
    .end local v2    # "um":Landroid/os/UserManager;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    nop

    .line 131
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v3

    .line 132
    :try_start_1
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    .line 133
    .local v2, "searchables":Lcom/android/server/search/Searchables;
    if-nez v2, :cond_0

    .line 134
    new-instance v4, Lcom/android/server/search/Searchables;

    iget-object v5, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    move-object v2, v4

    .line 135
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 136
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->updateSearchableList()V

    .line 140
    :cond_1
    :goto_0
    monitor-exit v3

    return-object v2

    .line 141
    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 126
    .local v2, "um":Landroid/os/UserManager;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isn\'t unlocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/search/SearchManagerService;
    .end local p1    # "userId":I
    .end local p2    # "forceUpdate":Z
    throw v3

    .line 123
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/search/SearchManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "forceUpdate":Z
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/search/SearchManagerService;
    .end local p1    # "userId":I
    .end local p2    # "forceUpdate":Z
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .end local v2    # "um":Landroid/os/UserManager;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/search/SearchManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "forceUpdate":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    throw v2
.end method

.method private onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUnlockUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 146
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(IZ)Lcom/android/server/search/Searchables;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 151
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string v1, "SearchManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 281
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v1

    .line 282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 283
    const-string v3, "\nUser: "

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 285
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/search/Searchables;

    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .line 256
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 2
    .param p1, "launchActivity"    # Landroid/content/ComponentName;

    .line 231
    if-nez p1, :cond_0

    .line 232
    const-string v0, "SearchManagerService"

    const-string v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .line 264
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public launchAssist(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "userHandle"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 269
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 270
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 271
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 274
    :cond_0
    return-void
.end method
