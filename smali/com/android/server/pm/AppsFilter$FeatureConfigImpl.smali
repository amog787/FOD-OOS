.class Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;
.super Ljava/lang/Object;
.source "AppsFilter.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$FeatureConfig;
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AppsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureConfigImpl"
.end annotation


# static fields
.field private static final FILTERING_ENABLED_NAME:Ljava/lang/String; = "package_query_filtering_enabled"


# instance fields
.field private mAppsFilter:Lcom/android/server/pm/AppsFilter;

.field private final mDisabledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFeatureEnabled:Z

.field private final mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

.field private mLoggingEnabled:Landroid/util/SparseBooleanArray;

.field private final mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)V
    .locals 1
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 201
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 209
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 210
    iput-object p2, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p3, "x2"    # Lcom/android/server/pm/AppsFilter$1;

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)V

    return-void
.end method

.method private updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    .line 294
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 293
    const-wide/32 v2, 0x81452eb

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 295
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_0
    return-void
.end method


# virtual methods
.method public enableLogging(IZ)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "enable"    # Z

    .line 263
    if-eqz p2, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 271
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 273
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 279
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return-void
.end method

.method public isGloballyEnabled()Z
    .locals 3

    .line 238
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "isGloballyEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 240
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 240
    return v2

    .line 242
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 243
    throw v2
.end method

.method public isLoggingEnabled(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 258
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onSystemReady$0$AppsFilter$FeatureConfigImpl(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 225
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "package_query_filtering_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    const-string/jumbo v0, "package_query_filtering_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 229
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_0
    :goto_0
    return-void
.end method

.method public onCompatChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 284
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 288
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    invoke-static {v1, p1}, Lcom/android/server/pm/AppsFilter;->access$000(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onSystemReady()V
    .locals 3

    .line 219
    const-string/jumbo v0, "package_manager_service"

    const-string/jumbo v1, "package_query_filtering_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 222
    nop

    .line 223
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$FeatureConfigImpl$n15whgPRX7bGimHq6-7mgAskIKs;-><init>(Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;)V

    .line 222
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$Injector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x81452eb

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 234
    return-void
.end method

.method public packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 248
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "packageIsEnabled"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 250
    return v2

    .line 252
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 253
    throw v2
.end method

.method public setAppsFilter(Lcom/android/server/pm/AppsFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/server/pm/AppsFilter;

    .line 214
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilter;

    .line 215
    return-void
.end method

.method public updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 3
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "removed"    # Z

    .line 304
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 305
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isTestOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 306
    .local v0, "enableLogging":Z
    :goto_0
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->enableLogging(IZ)V

    .line 307
    if-eqz p2, :cond_2

    .line 308
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :cond_2
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_3

    .line 310
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-direct {p0, v1}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 312
    :cond_3
    :goto_1
    return-void
.end method
