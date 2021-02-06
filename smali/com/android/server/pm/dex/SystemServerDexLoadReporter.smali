.class public Lcom/android/server/pm/dex/SystemServerDexLoadReporter;
.super Ljava/lang/Object;
.source "SystemServerDexLoadReporter.java"

# interfaces
.implements Ldalvik/system/BaseDexClassLoader$Reporter;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SystemServerDexLoadReporter"


# instance fields
.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "SystemServerDexLoadReporter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/pm/IPackageManager;)V
    .locals 0
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 43
    return-void
.end method

.method public static configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;

    .line 71
    const-string v0, "SystemServerDexLoadReporter"

    const-string v1, "Configuring system server dex reporter"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;

    invoke-direct {v1, p0}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;-><init>(Landroid/content/pm/IPackageManager;)V

    .line 74
    .local v1, "reporter":Lcom/android/server/pm/dex/SystemServerDexLoadReporter;
    invoke-static {v1}, Ldalvik/system/BaseDexClassLoader;->setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 76
    .local v2, "currrentClassLoader":Ljava/lang/ClassLoader;
    instance-of v3, v2, Ldalvik/system/BaseDexClassLoader;

    if-eqz v3, :cond_0

    .line 77
    move-object v0, v2

    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v0}, Ldalvik/system/BaseDexClassLoader;->reportClassLoaderChain()V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System server class loader is not a BaseDexClassLoader. type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void
.end method


# virtual methods
.method public report(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->DEBUG:Z

    const-string v1, "SystemServerDexLoadReporter"

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "Bad call to DexLoadReporter: empty classLoaderContextMap"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 56
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v1, "android"

    .line 59
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {v0, v1, p1, v2}, Landroid/content/pm/IPackageManager;->notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 63
    :goto_0
    return-void
.end method
