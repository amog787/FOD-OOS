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

.field private final mLock:Ljava/lang/Object;

.field private mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

.field private mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
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

    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    .line 121
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/InternalServiceRepository;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 52
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 52
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 52
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 52
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .line 52
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/telecom/TelecomLoaderService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    return-void
.end method

.method private connectToTelecom()V
    .locals 6

    .line 141
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 145
    iput-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 148
    :cond_0
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V

    .line 149
    .local v1, "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.ITelecomService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    const v3, 0x4000041

    .line 155
    .local v3, "flags":I
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 158
    .end local v1    # "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "flags":I
    :cond_1
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerCarrierConfigChangedReceiver()V
    .locals 6

    .line 231
    new-instance v1, Lcom/android/server/telecom/TelecomLoaderService$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/TelecomLoaderService$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 242
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    return-void
.end method

.method private registerDefaultAppNotifier()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 224
    .local v0, "roleManager":Landroid/app/role/RoleManager;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$jGqhqH8bl_lWotJlrzraXplioIw;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$jGqhqH8bl_lWotJlrzraXplioIw;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 227
    return-void
.end method

.method private registerDefaultAppProviders()V
    .locals 2

    .line 168
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 169
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 172
    .local v0, "permissionManager":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    new-instance v1, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$Dg9me3bEFl3t0NGOPYwXIoF34FY;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$Dg9me3bEFl3t0NGOPYwXIoF34FY;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setSmsAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 187
    new-instance v1, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$v_RQMbGOOwc6kjxGSNUrOugH8pw;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$v_RQMbGOOwc6kjxGSNUrOugH8pw;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setDialerAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 201
    new-instance v1, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$4O6PYSHBsC0Q5H-Y3LkvD32Vcjk;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/-$$Lambda$TelecomLoaderService$4O6PYSHBsC0Q5H-Y3LkvD32Vcjk;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setSimCallManagerPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 219
    return-void
.end method

.method private setupServiceRepository()V
    .locals 2

    .line 162
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/TelecomLoaderService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    .line 163
    .local v0, "deviceIdleInternal":Lcom/android/server/DeviceIdleInternal;
    new-instance v1, Lcom/android/server/telecom/InternalServiceRepository;

    invoke-direct {v1, v0}, Lcom/android/server/telecom/InternalServiceRepository;-><init>(Lcom/android/server/DeviceIdleInternal;)V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceRepo:Lcom/android/server/telecom/InternalServiceRepository;

    .line 164
    return-void
.end method

.method private updateSimCallManagerPermissions(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 247
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 248
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 249
    .local v0, "permissionManager":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 250
    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 251
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 252
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v2, :cond_0

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating sim call manager permissions for userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelecomLoaderService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 257
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$registerDefaultAppNotifier$3$TelecomLoaderService(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 225
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomLoaderService;->updateSimCallManagerPermissions(I)V

    return-void
.end method

.method public synthetic lambda$registerDefaultAppProviders$0$TelecomLoaderService(I)[Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 175
    monitor-exit v0

    return-object v2

    .line 177
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 180
    .local v0, "smsComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 181
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 183
    :cond_1
    return-object v2

    .line 177
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

    .line 188
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 190
    monitor-exit v0

    return-object v2

    .line 192
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 195
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 197
    :cond_1
    return-object v2

    .line 192
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

    .line 202
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 208
    monitor-exit v0

    return-object v2

    .line 210
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 212
    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 213
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 214
    .local v1, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v1, :cond_2

    .line 215
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2

    .line 217
    :cond_2
    return-object v2

    .line 210
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

    .line 131
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V

    .line 133
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->registerCarrierConfigChangedReceiver()V

    .line 135
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->setupServiceRepository()V

    .line 136
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    .line 138
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 127
    return-void
.end method
