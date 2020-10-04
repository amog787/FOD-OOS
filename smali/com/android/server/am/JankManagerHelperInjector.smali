.class public Lcom/android/server/am/JankManagerHelperInjector;
.super Ljava/lang/Object;
.source "JankManagerHelperInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JankManagerHelperInjector"

.field private static sJankManagerHelperInjector:Lcom/android/server/am/JankManagerHelperInjector;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/JankManagerHelperInjector;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "contxext"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/am/JankManagerHelperInjector;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/JankManagerHelperInjector;
    .locals 1
    .param p0, "contxext"    # Landroid/content/Context;

    .line 41
    sget-object v0, Lcom/android/server/am/JankManagerHelperInjector;->sJankManagerHelperInjector:Lcom/android/server/am/JankManagerHelperInjector;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/server/am/JankManagerHelperInjector;

    invoke-direct {v0, p0}, Lcom/android/server/am/JankManagerHelperInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/JankManagerHelperInjector;->sJankManagerHelperInjector:Lcom/android/server/am/JankManagerHelperInjector;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/server/am/JankManagerHelperInjector;->sJankManagerHelperInjector:Lcom/android/server/am/JankManagerHelperInjector;

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 50
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/JankManagerHelperInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return v2

    .line 55
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return v3
.end method


# virtual methods
.method public getUidForTraceur()I
    .locals 1

    .line 37
    const-string v0, "com.android.traceur"

    invoke-direct {p0, v0}, Lcom/android/server/am/JankManagerHelperInjector;->getUidForPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
