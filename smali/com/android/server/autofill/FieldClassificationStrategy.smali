.class final Lcom/android/server/autofill/FieldClassificationStrategy;
.super Ljava/lang/Object;
.source "FieldClassificationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;,
        Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FieldClassificationStrategy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mQueuedCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/autofill/FieldClassificationStrategy$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 80
    iput p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 61
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/FieldClassificationStrategy;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 61
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/FieldClassificationStrategy;
    .param p1, "x1"    # Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 61
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 61
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/autofill/FieldClassificationStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/FieldClassificationStrategy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p1
.end method

.method private connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V
    .locals 9
    .param p1, "command"    # Lcom/android/server/autofill/FieldClassificationStrategy$Command;

    .line 141
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 144
    :try_start_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "running command right away"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    invoke-interface {p1, v1}, Lcom/android/server/autofill/FieldClassificationStrategy$Command;->run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FieldClassificationStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception calling service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    return-void

    .line 151
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "service is null; queuing command"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_4

    monitor-exit v0

    return-void

    .line 161
    :cond_4
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_5

    const-string v1, "FieldClassificationStrategy"

    const-string v3, "creating connection"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_5
    new-instance v1, Lcom/android/server/autofill/FieldClassificationStrategy$1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/FieldClassificationStrategy$1;-><init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V

    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 214
    invoke-direct {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 215
    .local v1, "component":Landroid/content/ComponentName;
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_6

    const-string v3, "FieldClassificationStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binding to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_6
    if-eqz v1, :cond_8

    .line 217
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    .local v4, "token":J
    :try_start_3
    iget-object v6, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    iget v8, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 222
    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 221
    invoke-virtual {v6, v3, v7, v2, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 223
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_7

    const-string v2, "FieldClassificationStrategy"

    const-string v6, "bound"

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :cond_7
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    goto :goto_1

    .line 225
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    nop

    .end local p0    # "this":Lcom/android/server/autofill/FieldClassificationStrategy;
    .end local p1    # "command":Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    throw v2

    .line 228
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/autofill/FieldClassificationStrategy;
    .restart local p1    # "command":Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    :cond_8
    :goto_1
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;
    .locals 6
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 250
    .local p2, "parser":Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;, "Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 251
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 257
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .local v1, "res":Landroid/content/res/Resources;
    nop

    .line 263
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 264
    .local v3, "resourceId":I
    invoke-interface {p2, v1, v3}, Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;->get(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 258
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v3    # "resourceId":I
    :catch_0
    move-exception v3

    .line 259
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting application resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FieldClassificationStrategy"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    return-object v1
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .locals 7

    .line 105
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 106
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 108
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v2, "name":Landroid/content/ComponentName;
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 110
    const-string v4, "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "FieldClassificationStrategy"

    if-nez v3, :cond_1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not require permission "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v1

    .line 116
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceComponentName(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    return-object v2
.end method

.method static synthetic lambda$calculateScores$2(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .locals 9
    .param p0, "callback"    # Landroid/os/RemoteCallback;
    .param p1, "actualValues"    # Ljava/util/List;
    .param p2, "userDataValues"    # [Ljava/lang/String;
    .param p3, "categoryIds"    # [Ljava/lang/String;
    .param p4, "defaultAlgorithm"    # Ljava/lang/String;
    .param p5, "defaultArgs"    # Landroid/os/Bundle;
    .param p6, "algorithms"    # Landroid/util/ArrayMap;
    .param p7, "args"    # Landroid/util/ArrayMap;
    .param p8, "service"    # Landroid/service/autofill/IAutofillFieldClassificationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/service/autofill/IAutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$getAvailableAlgorithms$0(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 237
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDefaultAlgorithm$1(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 245
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 10
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "userDataValues"    # [Ljava/lang/String;
    .param p4, "categoryIds"    # [Ljava/lang/String;
    .param p5, "defaultAlgorithm"    # Ljava/lang/String;
    .param p6, "defaultArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p2, "actualValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .local p7, "algorithms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "args":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    new-instance v9, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;-><init>(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lcom/android/server/autofill/FieldClassificationStrategy;->connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V

    .line 274
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 277
    invoke-direct {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 278
    .local v0, "impl":Landroid/content/ComponentName;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User ID: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 279
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Queued commands: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const-string v2, "N/A"

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 285
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Implementation: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    return-void

    .line 290
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Available algorithms: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Default algorithm: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ERROR CALLING SERVICE: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method getAvailableAlgorithms()[Ljava/lang/String;
    .locals 2

    .line 236
    sget-object v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;

    const-string v1, "android.autofill.field_classification.available_algorithms"

    invoke-direct {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getDefaultAlgorithm()Ljava/lang/String;
    .locals 2

    .line 245
    sget-object v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;

    const-string v1, "android.autofill.field_classification.default_algorithm"

    invoke-direct {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "FieldClassificationStrategy"

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v3, "no external services package!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v1

    .line 92
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.autofill.AutofillFieldClassificationService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v4, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x84

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 96
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v5, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v1

    .line 97
    :cond_2
    :goto_0
    const-string v5, "No valid components found."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v1
.end method

.method reset()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 123
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "reset(): unbinding service."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "FieldClassificationStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    .line 132
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "reset(): service is not bound. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    :goto_1
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
