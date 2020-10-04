.class public Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.ITelecomService"

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "TelecomLoaderService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.telecom"

    const-string v2, "com.android.server.telecom.components.TelecomService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 125
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 50
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 50
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 50
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 50
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 50
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p2, "x2"    # I

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;I)V

    return-void
.end method

.method private connectToTelecom()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 147
    iput-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 150
    :cond_0
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V

    .line 151
    .local v1, "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.ITelecomService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    const v3, 0x4000041

    .line 157
    .local v3, "flags":I
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 160
    .end local v1    # "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "flags":I
    :cond_1
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

.method private getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 1

    .line 103
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 104
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method private registerCarrierConfigChangedReceiver()V
    .locals 6

    .line 228
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 239
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 241
    return-void
.end method

.method private registerDefaultAppNotifier()V
    .locals 5

    .line 218
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    .line 220
    .local v0, "permissionPolicy":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    .line 221
    .local v1, "roleManager":Landroid/app/role/RoleManager;
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$JaEag0KH0v0eOJ4BOrxYzuIZXXo;

    invoke-direct {v3, p0, v0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$JaEag0KH0v0eOJ4BOrxYzuIZXXo;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 224
    return-void
.end method

.method private registerDefaultAppProviders()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    .line 168
    .local v0, "permissionPolicy":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    new-instance v1, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$lBXoYxesURvEmfzumX9uIBbg66M;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$lBXoYxesURvEmfzumX9uIBbg66M;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 183
    new-instance v1, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$VVmvEgI0M6umDuBUYKUoUMO7-l0;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$VVmvEgI0M6umDuBUYKUoUMO7-l0;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 197
    new-instance v1, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$-gelHWcVU9jWWZhCeN99A3Sudtw;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$-gelHWcVU9jWWZhCeN99A3Sudtw;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 215
    return-void
.end method

.method private updateSimCallManagerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;I)V
    .locals 4
    .param p1, "permissionGrantPolicy"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p2, "userId"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 246
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 247
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p2}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 248
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updating sim call manager permissions for userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomLoaderService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 254
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$registerDefaultAppNotifier$3$TelecomLoaderService(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "permissionPolicy"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p2, "roleName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 222
    nop

    .line 223
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;I)V

    return-void
.end method

.method public synthetic lambda$registerDefaultAppProviders$0$TelecomLoaderService(I)[Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .line 169
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 171
    monitor-exit v0

    return-object v2

    .line 173
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 176
    .local v0, "smsComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 177
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 179
    :cond_1
    return-object v2

    .line 173
    .end local v0    # "smsComponent":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$registerDefaultAppProviders$1$TelecomLoaderService(I)[Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 186
    monitor-exit v0

    return-object v2

    .line 188
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 191
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 193
    :cond_1
    return-object v2

    .line 188
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$registerDefaultAppProviders$2$TelecomLoaderService(I)[Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    if-nez v1, :cond_0

    .line 201
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 204
    monitor-exit v0

    return-object v2

    .line 206
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 208
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 209
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 210
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_2

    .line 211
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2

    .line 213
    :cond_2
    return-object v2

    .line 206
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v1    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 135
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V

    .line 137
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V

    .line 138
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    .line 140
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 131
    return-void
.end method
