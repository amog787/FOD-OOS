.class public abstract Lcom/android/server/appbinding/finders/AppServiceFinder;
.super Ljava/lang/Object;
.source "AppServiceFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TServiceType:",
        "Ljava/lang/Object;",
        "TServiceInterfaceType::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final TAG:Ljava/lang/String; = "AppBindingService"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field private final mLastMessages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mTargetPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    .local p2, "listener":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/android/server/appbinding/finders/AppServiceFinder;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    .line 67
    iput-object p1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    .line 69
    iput-object p3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TTServiceInterfaceType;"
        }
    .end annotation
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 196
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    const-string v0, "App type: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 201
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 204
    .local v2, "userId":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    const-string v3, "  User: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 207
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    const-string v3, "    Package: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    const-string v3, "    Service: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string v3, "    Message: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 202
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpSimple(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 229
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 232
    .local v2, "userId":I
    const-string v3, "finder,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 236
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 240
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 230
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final findService(ILandroid/content/pm/IPackageManager;Lcom/android/server/appbinding/AppBindingConstants;)Landroid/content/pm/ServiceInfo;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "ipm"    # Landroid/content/pm/IPackageManager;
    .param p3, "constants"    # Lcom/android/server/appbinding/AppBindingConstants;

    .line 100
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    invoke-virtual {p0, p3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->isEnabled(Lcom/android/server/appbinding/AppBindingConstants;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "feature disabled"

    .line 107
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    const-string v4, "feature disabled"

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    const-string v3, "AppBindingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "feature disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    monitor-exit v0

    return-object v2

    .line 112
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getTargetPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "targetPackage":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 117
    const-string v3, "Target package not found"

    .line 118
    .local v3, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    const-string v5, "Target package not found"

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    const-string v4, "AppBindingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getAppDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Target package not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-exit v0

    return-object v2

    .line 122
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v9, "errorMessage":Ljava/lang/StringBuilder;
    nop

    .line 128
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServiceAction()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServicePermission()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {p0}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getServiceClass()Ljava/lang/Class;

    move-result-object v7

    .line 125
    move-object v3, v1

    move v4, p1

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 134
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_2

    .line 135
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    monitor-exit v0

    return-object v2

    .line 144
    .end local v4    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/appbinding/finders/AppServiceFinder;->validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "error":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 146
    iget-object v5, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    const-string v5, "AppBindingService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit v0

    return-object v2

    .line 151
    :cond_3
    const-string v2, "Valid service found"

    .line 152
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    const-string v6, "Valid service found"

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    iget-object v5, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    monitor-exit v0

    return-object v3

    .line 155
    .end local v1    # "targetPackage":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v4    # "error":Ljava/lang/String;
    .end local v9    # "errorMessage":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract getAppDescription()Ljava/lang/String;
.end method

.method public abstract getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I
.end method

.method protected abstract getServiceAction()Ljava/lang/String;
.end method

.method protected abstract getServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTServiceType;>;"
        }
    .end annotation
.end method

.method protected abstract getServicePermission()Ljava/lang/String;
.end method

.method public abstract getTargetPackage(I)Ljava/lang/String;
.end method

.method protected isEnabled(Lcom/android/server/appbinding/AppBindingConstants;)Z
    .locals 1
    .param p1, "constants"    # Lcom/android/server/appbinding/AppBindingConstants;

    .line 74
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 87
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    iget-object v0, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 89
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mTargetServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 90
    iget-object v1, p0, Lcom/android/server/appbinding/finders/AppServiceFinder;->mLastMessages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startMonitoring()V
    .locals 0

    .line 83
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    return-void
.end method

.method protected validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "service"    # Landroid/content/pm/ServiceInfo;

    .line 188
    .local p0, "this":Lcom/android/server/appbinding/finders/AppServiceFinder;, "Lcom/android/server/appbinding/finders/AppServiceFinder<TTServiceType;TTServiceInterfaceType;>;"
    const/4 v0, 0x0

    return-object v0
.end method
