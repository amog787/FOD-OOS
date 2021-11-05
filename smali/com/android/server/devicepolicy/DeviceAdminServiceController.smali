.class public Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.super Ljava/lang/Object;
.source "DeviceAdminServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "constants"    # Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 91
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 92
    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 93
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 41
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 41
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    return-object v0
.end method

.method static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 57
    return-void
.end method

.method private disconnectServiceOnUserLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "actionForLog"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 174
    .local v0, "conn":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 175
    const-string v2, "Stopping service for u%d if already running for %s."

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->unbind()V

    .line 178
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 180
    :cond_0
    return-void
.end method

.method private findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 104
    const-class v4, Landroid/app/admin/DeviceAdminService;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 110
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v2, "android.app.action.DEVICE_ADMIN_SERVICE"

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 184
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    monitor-exit v0

    return-void

    .line 188
    :cond_0
    const-string v1, "Owner Services:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 192
    .local v2, "userId":I
    const-string v3, "User: "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 194
    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 195
    .local v3, "con":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 196
    const-string v4, ""

    invoke-virtual {v3, v4, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 190
    nop

    .end local v2    # "userId":I
    .end local v3    # "con":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startServiceForOwner(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "actionForLog"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 122
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 124
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_0

    .line 125
    const-string v7, "Owner package %s on u%d has no service."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    .line 125
    invoke-static {v7, v6}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 128
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 128
    return-void

    .line 131
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 132
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PersistentConnection;

    .line 133
    .local v7, "existing":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<Landroid/app/admin/IDeviceAdminService;>;"
    if-eqz v7, :cond_1

    .line 137
    const-string v8, "Disconnecting from existing service connection."

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p1, v9, v5

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    .line 137
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 142
    :cond_1
    const-string v8, "Owner package %s on u%d has service %s for %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v5

    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    .line 144
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    const/4 v4, 0x3

    aput-object p3, v9, v4

    .line 142
    invoke-static {v8, v9}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    new-instance v4, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 148
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v4, p0, p2, v5}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;-><init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V

    .line 149
    .local v4, "conn":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    iget-object v5, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->bind()V

    .line 151
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v4    # "conn":Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    .end local v7    # "existing":Lcom/android/server/am/PersistentConnection;, "Lcom/android/server/am/PersistentConnection<Landroid/app/admin/IDeviceAdminService;>;"
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 154
    nop

    .line 155
    return-void

    .line 151
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "actionForLog":Ljava/lang/String;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "actionForLog":Ljava/lang/String;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 154
    throw v2
.end method

.method public stopServiceForOwner(ILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "actionForLog"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 163
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 165
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 168
    nop

    .line 169
    return-void

    .line 165
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .end local p1    # "userId":I
    .end local p2    # "actionForLog":Ljava/lang/String;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/devicepolicy/DeviceAdminServiceController;
    .restart local p1    # "userId":I
    .restart local p2    # "actionForLog":Ljava/lang/String;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 168
    throw v2
.end method
