.class public final Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;
.super Ljava/lang/Object;
.source "FrameworkResourcesServiceNameResolver.java"

# interfaces
.implements Lcom/android/server/infra/ServiceNameResolver;


# static fields
.field private static final MSG_RESET_TEMPORARY_SERVICE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

.field private final mLock:Ljava/lang/Object;

.field private mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

.field private final mResourceId:I

.field private mTemporaryHandler:Landroid/os/Handler;

.field private mTemporaryServiceExpiration:J

.field private final mTemporaryServiceNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 87
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mResourceId:I

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 43
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isDefaultServiceEnabledLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "newTemporaryName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 241
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;->onNameResolved(ILjava/lang/String;Z)V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 216
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    const-string v1, "FrameworkResourcesServiceNamer: resId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mResourceId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 218
    const-string v1, ", numberTemps="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 219
    const-string v1, ", enabledDefaults="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpShort(Ljava/io/PrintWriter;I)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I

    .line 226
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    .local v1, "temporaryName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 229
    const-string/jumbo v2, "tmpName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    iget-wide v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceExpiration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 231
    .local v2, "ttl":J
    const-string v4, " (expires in "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, "), "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    .end local v2    # "ttl":J
    :cond_0
    const-string v2, "defaultName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 235
    .local v2, "disabled":Z
    if-eqz v2, :cond_1

    const-string v3, " (disabled)"

    goto :goto_0

    :cond_1
    const-string v3, " (enabled)"

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .end local v1    # "temporaryName":Ljava/lang/String;
    .end local v2    # "disabled":Z
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultServiceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 100
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    monitor-exit v0

    return-object v2

    .line 103
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceName(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .line 108
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "temporaryName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 112
    sget-object v2, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceName(): using temporary name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit v0

    return-object v1

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 117
    .local v2, "disabled":Z
    if-eqz v2, :cond_1

    .line 119
    sget-object v3, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServiceName(): temporary name not set and default disabled for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 124
    .end local v1    # "temporaryName":Ljava/lang/String;
    .end local v2    # "disabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefaultServiceEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabledLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTemporary(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 129
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetTemporaryService(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetting temporary service for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 169
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iput-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    .line 173
    :cond_0
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 180
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabledLocked(I)Z

    move-result v1

    .line 182
    .local v1, "currentlyEnabled":Z
    if-ne v1, p2, :cond_0

    .line 183
    sget-object v2, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultServiceEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 186
    :cond_0
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 187
    sget-object v3, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disabling default service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    goto :goto_0

    .line 190
    :cond_1
    sget-object v3, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enabling default service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 193
    .end local v1    # "currentlyEnabled":Z
    :goto_0
    monitor-exit v0

    .line 194
    return v2

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 93
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 95
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, p0

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;-><init>(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Landroid/os/Looper;Landroid/os/Handler$Callback;ZI)V

    iput-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceExpiration:J

    .line 157
    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryHandler:Landroid/os/Handler;

    int-to-long v3, p3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->notifyTemporaryServiceNameChangedLocked(ILjava/lang/String;Z)V

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameworkResourcesServiceNamer[temps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mTemporaryServiceNames:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
