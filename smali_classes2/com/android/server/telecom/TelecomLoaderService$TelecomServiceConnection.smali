.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p2, "x1"    # Lcom/android/server/telecom/TelecomLoaderService$1;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 61
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telecom/ITelecomLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomLoader;

    move-result-object v0

    .line 62
    .local v0, "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    iget-object v1, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v1}, Lcom/android/server/telecom/TelecomLoaderService;->access$000(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/InternalServiceRepository;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomLoader;->createTelecomService(Lcom/android/internal/telecom/IInternalServiceRetriever;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 64
    .local v1, "telecomService":Lcom/android/internal/telecom/ITelecomService;
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 65
    const-string v2, "telecom"

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 67
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 69
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 70
    .local v3, "permissionManager":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 73
    invoke-static {v4}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    .line 74
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 75
    .local v5, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v5, :cond_0

    .line 76
    iget-object v6, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v6}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v6

    .line 77
    .local v6, "requestCount":I
    nop

    .line 78
    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "packageName":Ljava/lang/String;
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_0

    .line 80
    iget-object v9, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v9}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/IntArray;->get(I)I

    move-result v9

    .line 81
    .local v9, "userId":I
    iget-object v10, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/IntArray;->remove(I)V

    .line 82
    nop

    .line 83
    invoke-virtual {v3, v7, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 79
    .end local v9    # "userId":I
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 89
    .end local v3    # "permissionManager":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v5    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v6    # "requestCount":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_0
    monitor-exit v2

    .line 92
    .end local v0    # "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    .end local v1    # "telecomService":Lcom/android/internal/telecom/ITelecomService;
    goto :goto_1

    .line 89
    .restart local v0    # "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    .restart local v1    # "telecomService":Lcom/android/internal/telecom/ITelecomService;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .end local v0    # "telecomLoader":Lcom/android/internal/telecom/ITelecomLoader;
    .end local v1    # "telecomService":Lcom/android/internal/telecom/ITelecomService;
    .restart local p0    # "this":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomLoaderService"

    const-string v2, "Failed linking to death."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 97
    iget-object v0, p0, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 98
    return-void
.end method
