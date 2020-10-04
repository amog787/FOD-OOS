.class final Lcom/android/server/role/FinancialSmsManager;
.super Ljava/lang/Object;
.source "FinancialSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/FinancialSmsManager$Command;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinancialSmsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mQueuedCommands:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/role/FinancialSmsManager$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/service/sms/IFinancialSmsService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/FinancialSmsManager;

    .line 47
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/role/FinancialSmsManager;)Landroid/service/sms/IFinancialSmsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/FinancialSmsManager;

    .line 47
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/role/FinancialSmsManager;
    .param p1, "x1"    # Landroid/service/sms/IFinancialSmsService;

    .line 47
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/role/FinancialSmsManager;

    .line 47
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/role/FinancialSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/role/FinancialSmsManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p1
.end method

.method private connectAndRun(Lcom/android/server/role/FinancialSmsManager$Command;)V
    .locals 9
    .param p1, "command"    # Lcom/android/server/role/FinancialSmsManager$Command;

    .line 117
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 120
    :try_start_1
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;

    invoke-interface {p1, v1}, Lcom/android/server/role/FinancialSmsManager$Command;->run(Landroid/service/sms/IFinancialSmsService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FinancialSmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception calling service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    .line 136
    :cond_2
    new-instance v1, Lcom/android/server/role/FinancialSmsManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/role/FinancialSmsManager$1;-><init>(Lcom/android/server/role/FinancialSmsManager;)V

    iput-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 179
    invoke-direct {p0}, Lcom/android/server/role/FinancialSmsManager;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 180
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    .line 181
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    .local v4, "token":J
    :try_start_3
    iget-object v6, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 186
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 185
    invoke-virtual {v6, v3, v7, v2, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    goto :goto_1

    .line 188
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/role/FinancialSmsManager;
    .end local p1    # "command":Lcom/android/server/role/FinancialSmsManager$Command;
    throw v2

    .line 191
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/role/FinancialSmsManager;
    .restart local p1    # "command":Lcom/android/server/role/FinancialSmsManager$Command;
    :cond_3
    :goto_1
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .locals 6

    .line 89
    invoke-virtual {p0}, Lcom/android/server/role/FinancialSmsManager;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 90
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v2, "name":Landroid/content/ComponentName;
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_FINANCIAL_SMS_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not require permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FinancialSmsManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v1

    .line 99
    :cond_1
    return-object v2
.end method

.method static synthetic lambda$getSmsMessages$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;Landroid/service/sms/IFinancialSmsService;)V
    .locals 0
    .param p0, "callback"    # Landroid/os/RemoteCallback;
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "service"    # Landroid/service/sms/IFinancialSmsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-interface {p2, p0, p1}, Landroid/service/sms/IFinancialSmsService;->getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 199
    invoke-direct {p0}, Lcom/android/server/role/FinancialSmsManager;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 200
    .local v0, "impl":Landroid/content/ComponentName;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User ID: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Queued commands: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    const-string v2, "N/A"

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 207
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Implementation: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return-void

    .line 212
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "FinancialSmsManager"

    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v3, "no external services package!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v1

    .line 76
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.sms.action.FINANCIAL_SERVICE_INTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v4, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 80
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v1

    .line 81
    :cond_2
    :goto_0
    const-string v5, "No valid components found."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v1
.end method

.method getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 195
    new-instance v0, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;

    invoke-direct {v0, p1, p2}, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/server/role/FinancialSmsManager;->connectAndRun(Lcom/android/server/role/FinancialSmsManager$Command;)V

    .line 196
    return-void
.end method

.method reset()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_0

    .line 108
    :cond_0
    const-string v1, "FinancialSmsManager"

    const-string/jumbo v2, "reset(): service is not bound. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
