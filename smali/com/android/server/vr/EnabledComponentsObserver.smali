.class public Lcom/android/server/vr/EnabledComponentsObserver;
.super Ljava/lang/Object;
.source "EnabledComponentsObserver.java"

# interfaces
.implements Lcom/android/server/vr/SettingsObserver$SettingChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
    }
.end annotation


# static fields
.field public static final DISABLED:I = -0x1

.field private static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"

.field public static final NOT_INSTALLED:I = -0x2

.field public static final NO_ERROR:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEnabledComponentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInstalledSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceName:Ljava/lang/String;

.field private final mServicePermission:Ljava/lang/String;

.field private final mSettingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vr/EnabledComponentsObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "servicePermission"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p6, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    .line 82
    iput-object p5, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    invoke-interface {v0, p6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "servicePermission"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "lock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Landroid/os/Looper;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;",
            ">;)",
            "Lcom/android/server/vr/EnabledComponentsObserver;"
        }
    .end annotation

    .line 108
    .local p7, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/vr/SettingsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/server/vr/SettingsObserver;

    move-result-object v0

    .line 110
    .local v0, "s":Lcom/android/server/vr/SettingsObserver;
    new-instance v8, Lcom/android/server/vr/EnabledComponentsObserver;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/EnabledComponentsObserver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 113
    .local v1, "o":Lcom/android/server/vr/EnabledComponentsObserver;
    new-instance v2, Lcom/android/server/vr/EnabledComponentsObserver$1;

    invoke-direct {v2, v1}, Lcom/android/server/vr/EnabledComponentsObserver$1;-><init>(Lcom/android/server/vr/EnabledComponentsObserver;)V

    .line 141
    .local v2, "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    move-object v5, p0

    move-object v6, p3

    invoke-virtual {v2, p0, p3, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/server/vr/SettingsObserver;->addListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V

    .line 145
    return-object v1
.end method

.method private getCurrentProfileIds()[I
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 245
    .local v0, "userManager":Landroid/os/UserManager;
    if-nez v0, :cond_0

    .line 246
    const/4 v1, 0x0

    return-object v1

    .line 248
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    return-object v1
.end method

.method public static loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 255
    .local v0, "installed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "queryIntent":Landroid/content/Intent;
    const v2, 0xc0084

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 262
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    .line 263
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 264
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 265
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 267
    .local v6, "info":Landroid/content/pm/ServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v7, "component":Landroid/content/ComponentName;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 269
    sget-object v8, Lcom/android/server/vr/EnabledComponentsObserver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": it does not require the permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "info":Landroid/content/pm/ServiceInfo;
    .end local v7    # "component":Landroid/content/ComponentName;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_1
    return-object v0
.end method

.method private loadComponentNamesForUser(I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method private loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 6
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "settingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    return-object v2

    .line 294
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "restored":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArraySet;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 296
    .local v3, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 297
    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 298
    .local v5, "value":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 299
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v5    # "value":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    .end local v4    # "i":I
    :cond_2
    return-object v3
.end method

.method private sendSettingChanged()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;

    .line 307
    .local v1, "l":Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
    invoke-interface {v1}, Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;->onEnabledComponentChanged()V

    .line 308
    .end local v1    # "l":Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public getEnabled(I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 235
    .local v1, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_0

    .line 236
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object v2

    .line 238
    :cond_0
    monitor-exit v0

    return-object v1

    .line 240
    .end local v1    # "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInstalled(I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 219
    .local v1, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_0

    .line 220
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object v2

    .line 222
    :cond_0
    monitor-exit v0

    return-object v1

    .line 223
    .end local v1    # "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid(Landroid/content/ComponentName;I)I
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 199
    .local v1, "installedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 203
    .local v2, "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 204
    :cond_2
    :goto_0
    const/4 v3, -0x1

    monitor-exit v0

    return v3

    .line 200
    .end local v2    # "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_3
    :goto_1
    const/4 v2, -0x2

    monitor-exit v0

    return v2

    .line 207
    .end local v1    # "installedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesChanged()V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 151
    return-void
.end method

.method public onSettingChanged()V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 156
    return-void
.end method

.method public onSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "prevValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 161
    return-void
.end method

.method public onUsersChanged()V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 165
    return-void
.end method

.method public rebuildAll()V
    .locals 8

    .line 171
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 173
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 174
    invoke-direct {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->getCurrentProfileIds()[I

    move-result-object v1

    .line 175
    .local v1, "userIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 176
    .local v4, "i":I
    invoke-direct {p0, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNamesForUser(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 177
    .local v5, "implementingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v6, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    .line 178
    invoke-direct {p0, v6, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNamesFromSetting(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v6

    .line 179
    .local v6, "packagesFromSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    .end local v4    # "i":I
    .end local v5    # "implementingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v6    # "packagesFromSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "userIds":[I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->sendSettingChanged()V

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
